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
        st0 = ->
            style:
                fontFamily: "Times"
                textAlign: 'left'
                color: text_color
                margin: .01 * height
                lineHeight: .0016 * height
                letterSpacing: .002 * width
                fontSize: .017 * height
        str = ->
            style:
                fontFamily: "Times"
                textAlign: 'right'
                color: text_color
                margin: .006 * height
                lineHeight: .0016 * height
                letterSpacing: .002 * width
                fontSize: .017 * height
        stc = ->
            style:
                fontFamily: "Times"
                textAlign: 'center'
                color: text_color
                margin: .006 * height
                lineHeight: .0016 * height
                letterSpacing: .002 * width
                fontSize: .017 * height
        st1 = ->
            fontFamily: "Times"
            color: text_color
            letterSpacing: .004 * width
            fontSize: .017 * height

        {height, width} = @props
        theme = theme_definitions[@props.theme_name]
        {text_color, background_color } = theme
        grad_000 = shortid() ; filter_000 = shortid()
        main1 =
                color: theme.text_color
        svg
            width: '100%'
            height: '100%'
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: theme.background_color

            foreignObject
                width: '60%'
                height: '30%'
                x: '16%'
                y: '14%'
                ,
                div null,
                    p
                        style: do ->
                            _.assign(st1(), {textAlign: 'center'})
                        , "Hello,"
                    p st0(), "I'm a fullstack developer with 20+ years of programming experience,"
                    p str(), "a rich maths and technical background,"
                    p stc(), "and 4+ years of professional development experience."
                    div style: margin: .05 * height
                    p stc(), "My focus is JavaScript, used across the stack and on multiple platforms."
                    # p st0(),

            foreignObject
                width: '60%'
                height: '38%'
                x: '22%'
                y: '38%'
                ,
                div null
                    ,
                    p stc(), "Stack:"

                    p stc(), "
NodeJS server, browser via HTML5 API (incl. SVG, WebGL, WebRTC, WebWorkers, WebSockets), desktop native via NW.js and Electron, mobile native via ReactNative."

                    p stc(), "
Npm ecosystem: I've been working intensely with it these past 4 years; an asset on every aforementioned platform. "
                    p stc(), "CoffeeScript my preference; ES6/7 competency also."
                    p stc(), "
I can design and build full systems from the ground up.
                    "

                    p stc(), "
Typical design: NodeJS server, Redis/Lua data-layer, Primus websocket-layer, multiple-clients including React web-app, Electron desktop-app, ReactNative mobile-native for both iOS & Android. Sensible distributed system with CDNs for static asset delivery, clustered redundant websocket servers, clustered redundant Redis nodes. Scalable, decoupled, resilient.
                    "
                    p stc(), "
Additional ideal features: WebRTC for P2P network topology as well as audio IO, WebGL enhancements, programmatic SVG-based GUI-development paradigm.

                    "
                    p stc(), "
While I'm capable of owning design and build of substantial systems, I am also capable of and happy to contribute in a supporting and learning role on your project.
                    "
                    p stc(), "
Give me a scope, a spec, and I will deliver!  I love programming, solving abstract problems, and am especially pleased when I can contribute to a team effort without the responsibility of everything on my shoulders !
                    "
                    p stc(), "
To get started I look to move quickly; I propose fixed-price, fixed-scope/deliverableSpec contract work to be used as an assessment/trial for both client and contractor.

                    "
                    p stc(), "
Of course I am happy to spend a bit of time with you in an interview context as well.
                    "
                    p stc(), "
My preferred and recommended medium of communication is the written word -- but I am available for voice calls as well, such as indicated.
                    "
                    p stc(), "
I look forward to delivering good work to you !
                    "
                    p st0(),
                        "
-- Wylie Кулик
                    "



            top_nav()
                # toggle_bars_nav: @toggle_bars_nav

            bars_nav_001()
