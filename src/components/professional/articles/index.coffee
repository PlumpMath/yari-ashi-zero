
top_nav = rc_generic(require('../top_nav_001_.coffee'))


module.exports = professional_blog = rr
    getInitialState: ->
        showing_bars_nav: false
    toggle_bars_nav: ->
        @setState
            showing_bars_nav: not @state.showing_bars_nav
    render: ->
        { theme, height, width } = @props
        { text_color, background_color }= theme_definitions[theme]
        # grad_000 = shortid() ; filter_000 = shortid()
        main1 =
            style:
                color: theme.text_color
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: background_color

            # text
            #     x: '10%'
            #     y: '40%'
            #     fontSize: 40
            #     fill: 'red'
            #     ,
            #     "articles"


            top_nav()

            bars_nav_001()



        )# -------------------------------------------
