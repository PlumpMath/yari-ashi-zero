

module.exports = tooltip = rr

    render: ->
        { x, y, font_size } = @props
        svg1(
            g {opacity: @props.opacity},
                rect
                    x: "#{x}%"
                    y: "#{y - 4}%"
                    width: '6%'
                    height: '4%'
                    fill: 'yellow'
                    opacity: '.7'
                text
                    x: "#{x}%"
                    y: "#{y - 2}%"
                    textLength: '5%'
                    fontSize: .8 * font_size
                    fill: 'magenta'
                    ,
                    "site home"
        )
