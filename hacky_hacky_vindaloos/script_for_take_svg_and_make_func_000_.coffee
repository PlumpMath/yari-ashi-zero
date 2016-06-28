c = -> console.log.apply console, arguments

_ = require 'lodash'

fs = require 'fs'

main = (path_to_file) ->
    file_data = fs.readFileSync path_to_file

    rayy = path_to_file.split("/")
    svg_name = rayy[rayy.length - 1]
    raw_name = svg_name.split('.')[0]

    strang = file_data.toString()


    get_val = require('./needle_hay_.coffee').val_of_attr_string_in_html

    get_path_attr = require('./needle_hay_.coffee').get_path_attr

    attrs = [
        'width',
        'height',
        'viewBox',
        'xmlns',
        'fill'
    ]



    x = get_val
        html_string: strang
        attr_string: "width"


    c 'x', x

    path_attr = get_path_attr
        html_string: strang


    c 'path_attr', path_attr

    arq = {}
    for key in attrs
        val = get_val
            html_string: strang
            attr_string: key
        c key, val
        if val isnt -1
            arq[key] = val

    _.assign arq, {path_d: path_attr}



    final_strang = "svg\n"

    for k, v of arq
        if k isnt 'path_d'
            final_strang+= "    #{k}: #{v}\n"
        else
            final_strang+= "    ,\n    path\n        d: #{v}"

    c 'final_strang\n', final_strang

    fs.writeFileSync "./svg_funcs/#{raw_name}.coffee", final_strang


# main "./svgs/github.svg"


dir_data = fs.readdirSync "./svgs"
c dir_data

main_files = ["./svgs/file-pdf-o.svg", "./svgs/github.svg", "./svgs/twitter.svg"]

dir_data_black = fs.readdirSync "./svgs/black"

paths_black = for file_name in dir_data_black
    "./svgs/black/#{file_name}"

for path in paths_black
    main path


dir_data_white = fs.readdirSync "./svgs/white"

paths_white = for file_name in dir_data_white
    "./svgs/white/#{file_name}"
