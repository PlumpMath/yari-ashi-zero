
top_nav = rc_generic(require('../top_nav_001_.coffee'))
bars_nav = rc_generic(require('../bars_nav_000_.coffee'))


module.exports = professional_blog = rr
    getInitialState: ->
        showing_bars_nav: false
    toggle_bars_nav: ->
        @setState
            showing_bars_nav: not @state.showing_bars_nav
    render: ->
        theme = theme_definitions[@props.theme]
        grad_000 = shortid() ; filter_000 = shortid()
        main1 =
            style:
                color: theme.text_color
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: theme.background_color

            text
                x: '10%'
                y: '40%'
                fontSize: 40
                fill: 'red'
                ,
                "blog"


            top_nav
                toggle_bars_nav: @toggle_bars_nav

            if @state.showing_bars_nav
                bars_nav
                    height: @props.height
                    theme: @props.theme
                    toggle_bars_nav: @toggle_bars_nav



        )# -------------------------------------------
