

module.exports = rr
    render: ->
        { theme, height, width } = @props
        { text_color, background_color } = theme_definitions[theme]
        sw =
            x: .6
            y: .16
        svg1(
            text
                x: sw.x * width
                y: sw.y * height
                textLength: .12 * width
                fontSize: .02 * height
                fill: text_color
                ,
                'spacewar (the 80s classic)'
            text
                x: sw.x * width
                y: (sw.y + .03) * height
                textLength: .12 * width
                fontSize: .016 * height
                fill: text_color
                ,
                'under construction'
            a
                xlinkHref: "https://github.com/kulicuu/Spacewar_WebGL_React"
                xlinkShow: 'new'
                ,
                rect
                    x: (sw.x - .01) * width
                    y: (sw.y + .08) * height
                    width: .16 * width
                    height: .025 * height
                    fill: 'red'
                    opacity: 0
                text
                    x: sw.x * width
                    y: (sw.y + .1) * height
                    textLength: .14 * width
                    fontSize: .016 * height
                    fill: text_color
                    ,
                    "source code on github"



        )
