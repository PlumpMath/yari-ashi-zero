top_nav = rc_generic(require('../top_nav_001_.coffee'))
module.exports = portfolio_index = rr
    getInitialState: ->
        image_001: '/images/minesweeper_image_000.png'

    render: ->
        {theme, height, width} = @props
        {text_color, background_color} = theme_definitions[theme]

        mso =
            x: .06
            y: .16

        main1 =
            style:
                color: text_color
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: background_color

            text
                x: mso.x * width
                y: mso.y * height
                textLength: .12 * width
                fontSize: .02 * height
                fill: text_color
                ,
                'minesweeper'
            a
                xlinkHref: "http://minesweeper-svg.herokuapp.com/"
                xlinkShow: 'new'
                ,
                image
                    x: (mso.x - .023) * width
                    y: (mso.y + .030) * height
                    width: .16 * @props.width
                    height: .16 * @props.height
                    xlinkHref: @state.image_001
            a
                xlinkHref: "http://minesweeper-svg.herokuapp.com/"
                xlinkShow: 'new'
                ,
                rect
                    x: (mso.x - .01) * width
                    y: (mso.y + .21) * height
                    width: .09 * width
                    height: .03 * height
                    fill: 'red'
                    opacity: 0
                text
                    x: mso.x * width
                    y: (mso.y + .23) * height
                    textLength: .08 * width
                    fontSize: .016 * height
                    fill: text_color
                    ,
                    "play it now"
            a
                xlinkHref: "https://github.com/kulicuu/MineSweeper"
                xlinkShow: 'new'
                ,
                rect
                    x: (mso.x - .01) * width
                    y: (mso.y + .25) * height
                    width: .16 * width
                    height: .025 * height
                    fill: 'red'
                    opacity: 0
                text
                    x: mso.x * width
                    y: (mso.y + .27) * height
                    textLength: .14 * width
                    fontSize: .016 * height
                    fill: text_color
                    ,
                    "source code on github"






            top_nav()
            bars_nav_001()


        )# -------------------------------------------
