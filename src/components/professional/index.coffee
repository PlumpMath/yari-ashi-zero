portfolio = require('./portfolio_000_.coffee')
top_nav = rc_generic(require('./top_nav_001_.coffee'))
# bars_nav = rc_generic(require('./bars_nav_000_.coffee'))
# lights_themes = rc_generic(require('../shared/lights_themes_000_.coffee'))
module.exports = professional = rr
    getInitialState: ->
        showing_bars_nav: false
    toggle_bars_nav: ->
        @setState
            showing_bars_nav: not @state.showing_bars_nav
    render: ->
        theme = theme_definitions[@props.theme]
        grad_000 = shortid() ; filter_000 = shortid()
        main1 =
                color: theme.text_color
        svg
            width: '100%'
            height: '98%'
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: theme.background_color

            top_nav
                toggle_bars_nav: @toggle_bars_nav

            bars_nav_001()
