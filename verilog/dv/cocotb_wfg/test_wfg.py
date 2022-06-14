import cocotb
from cocotb.clock import Clock
from cocotb.utils import get_sim_time
from cocotb.triggers import RisingEdge, FallingEdge, ClockCycles, with_timeout
from cocotbext.spi import SpiMaster, SpiSignals, SpiConfig, SpiSlaveBase

SYSCLK = 100000000

class SimpleSpiSlave(SpiSlaveBase):
    def __init__(self, dut, signals, config):
        self._config = config
        self.content = 0
        super().__init__(signals)
        self.latest_value = None
        self.time = []
        self.values = []

    async def get_content(self):
        await self.idle.wait()
        return self.content

    async def _transaction(self, frame_start, frame_end):
        await frame_start
        self.content = int(await self._shift(self._config.word_width, tx_word=None))
        await frame_end
    
        # For now we have to mirror the bits ourselves
        if not self._config.msb_first:
            mirrored = 0
            bit_length = self._config.word_width
            for bit_pos in range(bit_length):
                mirrored |= ((self.content & 1<<(bit_pos)) > 0) << (bit_length-1-bit_pos)
            self.content = mirrored
        
        # Sign extend
        if self.content & (1<<17):
            self.content |= ((1<<14)-1)<<18
        
        self.latest_value = self.content.to_bytes(self._config.word_width // 8, 'big')
        
        self.latest_value = int.from_bytes(self.latest_value, 'big', signed=True)
        
        self.values.append(self.latest_value)
        self.time.append(get_sim_time('ns'))
        
        print(self.latest_value)

@cocotb.test()
async def test_wfg(dut):
    clock = Clock(dut.my_clock, 25, units="ns")
    cocotb.fork(clock.start())

    dut.RSTB.value = 0
    dut.power1.value = 0;
    dut.power2.value = 0;
    dut.power3.value = 0;
    dut.power4.value = 0;

    await ClockCycles(dut.my_clock, 8)
    dut.power1.value = 1;
    await ClockCycles(dut.my_clock, 8)
    dut.power2.value = 1;
    await ClockCycles(dut.my_clock, 8)
    dut.power3.value = 1;
    await ClockCycles(dut.my_clock, 8)
    dut.power4.value = 1;

    await ClockCycles(dut.my_clock, 80)
    dut.RSTB.value = 1

    # wait with a timeout for the project to become active
    # await with_timeout(RisingEdge(dut.clk), 500, 'us')

    # SPI settings
    dff = 3
    cnt = 3
    cpol = 0
    cpha = 0
    lsbfirst = 0
    sspol = 0

    # Create SPI Slave
    spi_signals = SpiSignals(
        sclk = dut.sclk,
        mosi = dut.sdo,
        miso = dut.sdi,
        cs   = dut.cs,
        cs_active_low = not sspol
    )
    
    spi_config = SpiConfig(
        word_width          = (8 * (dff + 1)),          # number of bits in a SPI transaction
        sclk_freq           = SYSCLK/((cnt + 1) * 2),   # clock rate in Hz
        cpol                = cpol,                     # clock idle polarity
        cpha                = False,                     # clock phase (CPHA=True means sample on FallingEdge)
        msb_first           = not lsbfirst,             # the order that bits are clocked onto the wire
        data_output_idle    = 1,                        # the idle value of the MOSI or MISO line 
        frame_spacing_ns    = 1                         # the spacing between frames that the master waits for or the slave obeys
                                                        #       the slave should raise SpiFrameError if this is not obeyed.
    )
    


    # wait
    await ClockCycles(dut.my_clock, 30000)
    spi_slave = SimpleSpiSlave(dut, spi_signals, spi_config)
    await ClockCycles(dut.my_clock, 30000)
    await ClockCycles(dut.my_clock, 30000)

    # assert something
    assert(0 == 0)
