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
            # style:
            #     overflow: 'hidden'
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

                # overflow: 'hidden'
                # style:
                #     overflow: 'hidden'
            # defs
            #     filter
            #         id: filter_000
            #         feGaussianBlur
            #             in: "SourceGraphic"
            #             result: "blurOut"
            #             stdDeviation: 1.8
            #         feOffset
            #             in: "blurOut"
            #             result: "dropBlur"
            #             dx: .3
            #             dy: 1.4
            #     linearGradient
            #         id: grad_000
            #         stop
            #             offset: '0%'
            #             stopColor: 'hsl(120, 90%, 20%)'
            #         stop
            #             offset: '40%'
            #             stopColor: 'hsl(220, 90%, 30%)'
            #         stop
            #             offset: '92%'
            #             stopColor: 'hsl(350, 90%, 80%)'
            top_nav
                toggle_bars_nav: @toggle_bars_nav
            # lights_themes()


            # foreignObject
            #     x: '10%'
            #     y: '12%'
            #     width: '80%'
            #     height: '60%'
            #     style:
            #         overflow: 'hidden'
            #
            #     ,
            #     div main1,
            #         h3 null, "organising the professional section:"
            #         p null, "defining professional, (we love (amateur) coding and engineering like i love music but it's also our profession, which brings a distinct atmosphere to the proceedings)"
            #         ul null,
            #             li null, "a technical blog, articles section"
            #             li null, "technical blog, curated links section"
            #             li null, "services offered: web development, design, generalised programming and engineering of solutions; Native apps Android-Java and React-Native, fullstack web-application development, scalable development operations full spectrum; Redis, WebSockets, WebRTC , p2p, progressive performant adaptive next generation web applications"
            #             li null, "current activities in general, current projects: OpenGL, Haskell, Elm, Android Studio, React-Native, React/Redux, "
            #             li null, "current projects in particular specifics: sports tourney app, specific game simulation app.  tbd.  maybe spacewar with webgl,"
            #             li null, "past projects & history: bartr,"
            #             li null, "portfolio screen shots and links.  [todo: resize the minesweeper photo to size smaller]"
            # rect
            #     x: 0
            #     y: .05 * @props.height
            #     width: '100%'
            #     height: .95 * @props.height
            #     fill: "url(##{grad_000})"
            #     filter: "url(##{filter_000})"
            # mid_nav_000_container()
            # text
            #     x: '6%'
            #     y: '24%'
            #     fontSize: .03 * @props.height
            #     fill: 'darkgrey'
            #     ,
            #     "Professional"
            # portfolio @props
            if @state.showing_bars_nav
                bars_nav
                    height: @props.height
                    theme: @props.theme
                    toggle_bars_nav: @toggle_bars_nav

        #)# --------------------------------------------------------------------------
