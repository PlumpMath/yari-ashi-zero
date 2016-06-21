top_nav = rc_generic(require('../top_nav_001_.coffee'))
thing = require.context('./entries')
fara = thing.keys()
module.exports = professional_blog = rr
    getInitialState: ->
        showing_bars_nav: false
    toggle_bars_nav: ->
        @setState
            showing_bars_nav: not @state.showing_bars_nav
    render: ->
        theme = theme_definitions[@props.theme]

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
                y: '20%'
                fontSize: 40
                fill: 'red'
                ,
                "blog"

            for key, idx in fara
                do (key, idx) =>
                    frag = key.split('/')[1].split('.')[0]
                    text
                        x: '40%'
                        y: "#{40 + (idx * .0036 * @props.height)}%"
                        fontSize: .02 * @props.height
                        fill: 'red'
                        cursor: 'pointer'
                        onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                        ,
                        "#{frag}"


            top_nav
                toggle_bars_nav: @toggle_bars_nav
            bars_nav_001()




        )# -------------------------------------------
