module.exports = theme_chooser = rr

    render: ->

        { x, y, font_size, height, mouse_over, mouse_out, opacity, theme } = @props

        text3 = (i, strang, click_handler) =>
            g null,
                rect
                    x: "#{x + (.001 * height)}%"
                    y: "#{y - 1.3 + (.009 * height) + (2 * i)}%"
                    width: "#{.57 * 13}%"
                    height: (.09 * 13) * font_size
                    opacity: 0
                    fill: 'red'
                    cursor: 'pointer'
                    onClick: click_handler
                    onMouseOver: mouse_over
                    onMouseOut: mouse_out
                text
                    x: "#{x + (.0015 * height)}%"
                    y: "#{y + (.009 * height) + (2 * i)}%"
                    cursor: 'pointer'
                    textLength: "#{.57 * 13}%"
                    fontSize: (.09 * 13) * font_size
                    fill: 'magenta'
                    cursor: 'pointer'
                    onMouseOver: mouse_over
                    onMouseOut: mouse_out
                    onClick: click_handler
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


            if theme is "DEFAULT_THEME"
                text3 1, "Light", @props.change_to_light_theme
            else
                text3 0, "Dark", @props.change_to_default_theme
