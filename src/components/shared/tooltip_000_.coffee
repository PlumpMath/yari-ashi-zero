

module.exports = tooltip = rr

    render: ->
        { x, y, font_size, tip_string } = @props
        svg1
        g {opacity: @props.opacity},
            rect
                x: "#{x}%"
                y: "#{y - 4}%"
                width: "#{.7 * tip_string.length}%"
                height: '4%'
                fill: 'yellow'
                opacity: '.7'
            text
                x: "#{x}%"
                y: "#{y - 2}%"
                textLength: "#{.67 * tip_string.length}%"
                fontSize: (.06 * tip_string.length) * font_size
                fill: 'magenta'
                ,
                tip_string
