module.exports = theme_chooser = rr

    render: ->
        { x, y, font_size, height, mouse_over, mouse_out, opacity } = @props
        text3 = (i, strang) =>
            text
                x: "#{x + (.0015 * height)}%"
                y: "#{y + (.009 * height) + (2 * i)}%"
                cursor: 'pointer'
                textLength: "#{.57 * 13}%"
                fontSize: (.09 * 13) * font_size
                fill: 'magenta'
                onMouseOver: mouse_over
                onMouseOut: mouse_out
                ,
                strang
        svg1
        g {opacity: opacity},
            rect
                x: "#{x}%"
                y: "#{y + (.006 * height)}%"
                width: "#{.7 * 13}%"
                height: '8%'
                fill: 'yellow'
                opacity: '.7'
                onMouseOver: mouse_over
                onMouseOut: mouse_out
            text3 0, "Dark"
            text3 1, "Light"