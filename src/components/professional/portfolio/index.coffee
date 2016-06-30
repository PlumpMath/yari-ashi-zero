top_nav = rc_generic(require('../top_nav_001_.coffee'))
spacewar = rc_generic(require('./spacewar.coffee'))
yari = rc_generic(require('./yari_ashi_zero_website.coffee'))

module.exports = portfolio_index = rr
    getInitialState: ->
        image_001: '/images/minesweeper_image_000.png'

    render: ->
        {theme_name, height, width} = @props
        {text_color, background_color} = theme_definitions[theme_name]

        mso =
            x: .06
            y: .16

        wbgl =
            x: .06
            y: .59

        rnp =
            x: .66
            y: .59

        backend =
            x: .46
            y: .80

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

            spacewar()
            yari()

            text
                x: rnp.x * width
                y: rnp.y * height
                textLength: .12 * width
                fontSize: .02 * height
                fill: text_color
                ,
                'current :: ReactNative projects'

            text
                x: backend.x * width
                y: backend.y * height
                textLength: .22 * width
                fontSize: .02 * height
                fill: text_color
                ,
                'Backend/fullstack/data'
                tspan
                    x: backend.x * width
                    y: (backend.y + .03) * height
                    textLength: .22 * width
                    fontSize: .02 * height
                    ,
                    ":: distributed systems :: NodeJS, WebSockets, Redis/Lua"

            text
                x: wbgl.x * width
                y: wbgl.y * height
                textLength: .12 * width
                fontSize: .02 * height
                fill: text_color
                ,
                'current :: WebGL projects'

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
