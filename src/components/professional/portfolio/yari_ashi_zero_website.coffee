

module.exports = rr
    render: ->
        { theme_name, height, width } = @props
        { text_color, background_color } = theme_definitions[theme_name]
        sw =
            x: .3
            y: .16
        svg1(
            text
                x: sw.x * width
                y: sw.y * height
                textLength: .12 * width
                fontSize: .02 * height
                fill: text_color
                ,
                'yari-ashi-zero'
            text
                x: (sw.x + (.127)) * width
                y: sw.y * height
                textLength: .06 * width
                fontSize: .014 * height
                fill: text_color
                ,
                '(this website)'
            text
                x: sw.x * width
                y: (sw.y + .03) * height
                textLength: .14 * width
                fontSize: .016 * height
                fill: text_color
                ,
                'fine art in React, SVG, & CoffeeScript'
            text
                x: sw.x * width
                y: (sw.y + .05) * height
                textLength: .18 * width
                fontSize: .0133 * height
                fill: text_color
                ,
                '(early stages of construction hence not much content yet)'
            a
                xlinkHref: "https://github.com/kulicuu/yari-ashi-zero"
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
