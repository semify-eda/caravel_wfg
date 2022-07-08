import cairo
import argparse
from pathlib import Path



def main():
    parser = argparse.ArgumentParser(description='Render the floorplan to a svg.')
    parser.add_argument('placement_file', help='Path to the macro placement file.')
    parser.add_argument('width', type=int, help='Width of the floorplan')
    parser.add_argument('height', type=int, help='Height of the floorplan.')

    args = parser.parse_args()

    macros = []

    with open(args.placement_file) as f:
        lines = f.readlines()
        for line in lines:
            parts = line.split()            
            macros.append({'name':parts[0],'x':int(parts[1]),'y':int(parts[2]),'width':None,'height':None,'orientation':parts[3],})
    
    for path in Path('openlane').glob('*/config.tcl'):
    
        current_macro = None
    
        with open(path) as f:
            lines = f.readlines()
            for line in lines:
                if 'DESIGN_NAME' in line:
                    name = line.split()[2]
                    current_macro = name
                if 'DIE_AREA' in line:
                    width = int(line.split()[4].replace('"', ''))
                    height = int(line.split()[5].replace('"', ''))
                    for macro in macros:
                        if current_macro in macro['name']:
                            macro['width'] = width
                            macro['height'] = height
    
    print(macros)
    
    window_height = args.height
    window_width = args.width
    
    with cairo.SVGSurface("floorplan.svg", window_width, window_height) as surface:
        context = cairo.Context(surface)
        
        context.save()
        context.set_source_rgb(1.0, 1.0, 1.0)
        context.paint()
        context.restore()
        
        
        context.select_font_face("Purisa", cairo.FONT_SLANT_NORMAL, cairo.FONT_WEIGHT_NORMAL)
        context.set_font_size(34)
    
        context.set_line_width(6.0)
        
        
        
        for macro in macros:
        
            macro_width = macro['width']
            macro_height = macro['height']
            
            if macro_width == None:
                macro_width = 600
            if macro_height == None:
                macro_height = 300
        
        
            context.rectangle(macro['x'], window_height - macro['y'] - macro_height, macro_width, macro_height)
            context.move_to(macro['x'], window_height - macro['y'] - macro_height - 25)
            context.show_text(macro['name'])
        
        context.stroke()

if __name__ == "__main__":
    main()
