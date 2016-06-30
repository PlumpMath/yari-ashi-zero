# lights_themes = rc_generic(require('../shared/lights_themes_000_.coffee'))
# tooltip = require './tooltip_000_.coffee'

sun_svg = require('../../glyphs/sun.coffee')

module.exports = bars_nav = rr

    vindaloos: {}


    toggle_nav: ->
        @setState
            my_opacity: 1
            nav_visible: not @state.nav_visible

    cancel_fade_me: ->
        clearInterval @int_2
        @setState
            my_opacity: 1

    fade_me: ->
        @int_2 = setInterval =>
            if @state.my_opacity > 0
                @setState
                    my_opacity: @state.my_opacity - .05
            else
                clearInterval @int_2
                @toggle_nav()
        , 20


    onset_vindaloo_001: ({ name }) ->
        clearInterval @vindaloos["fader_animation:#{name}"]
        @setState
            "visible:#{name}": true
        @vindaloos["onset_animation:#{name}"] = setInterval =>
            if @state["opacity:#{name}"] < 1
                prev_state = @state["opacity:#{name}"] or 0
                @setState
                    "opacity:#{name}": prev_state + .05
            else
                clearInterval @vindaloos["onset_animation:#{name}"]
        , 20

    fader_vindaloo_001: ({ name }) ->
        clearInterval @vindaloos["onset_animation:#{name}"]
        @vindaloos["fader_animation:#{name}"] = setInterval =>
            if @state["opacity:#{name}"] > 0
                @setState
                    "opacity:#{name}": @state["opacity:#{name}"] - .05
            else
                @setState
                    "visible:#{name}": false
                clearInterval @vindaloos["fader_animation:#{name}"]
        , 20

    onset_vindaloo: ({ name }) ->
        clearInterval @vindaloos[name]
        @setState {"#{name}": true, "opacity#{name}": 1}

    fader_vindaloo: ({ name })->
        @vindaloos[name] = setInterval =>
            if @state["opacity#{name}"] > 0
                @setState
                    "opacity#{name}": @state["opacity#{name}"] - .05
            else
                clearInterval @vindaloos[name]
                @setState
                    "#{name}": false
        , 50

    getInitialState: ->
        nav_visible: false
        tooltip_lights: false
        tooltip_home: false
        about_site: false
        my_opacity: 1
        "opacity:bars_nav": 0
        "opacity:tooltip_lights": 0


    render: ->
        c @props.theme_name
        sun_place =
            x: 91
            y: 23

        home_place =
            x: 91
            y: 33





        theme = theme_definitions[@props.theme_name]
        c 'theme', theme
        font_size = .024 * @props.height
        # switch @props.theme_name
        #     when DEFAULT_THEME
        #         background_fill = 'white'
        #         text_color = 'darkgrey'
        #         home_glyph = '/svgs/black/home.svg'
        #         sun_glyph =  '/svgs/white/sun-o.svg'
        #
        #         bars_glyph = '/svgs/white/bars.svg'
        #         setter = @props.change_to_default_theme
        #
        #     when LIGHT_THEME
        #         background_fill = 'darkgrey'
        #         text_color = 'white'
        #         sun_glyph = '/svgs/black/sun-o.svg'
        #         home_glyph = '/svgs/black/home.svg'
        #         bars_glyph = '/svgs/black/bars.svg'
        #         setter = @props.change_to_light_theme
        #     when THEME_ZERO
        #         background_fill = 'darkgrey'
        #         text_color = 'white'
        #         sun_glyph = '/svgs/black/sun-o.svg'
        #         home_glyph = '/svgs/black/home.svg'
        #         bars_glyph = '/svgs/black/bars.svg'
        #         setter = @props.change_to_light_theme




        tMat = @props.t_mat
        height = @props.height





        svg1(
            # image
            #     x: '94%'
            #     y: '3%'
            #     style: cursor: 'pointer'
            #     width: .06 * @props.height
            #     height: .06 * @props.height
            #     xlinkHref: bars_glyph
                # onClick: -> @onset_vindaloo_001 "bars_nav"
                # onMouseOver: => @onset_vindaloo_001 name: "bars_nav"
                # onMouseLeave: => @fader_vindaloo_001(name: "bars_nav")

            # image
            #     x: "94%"
            #     y: "14%"
            #     style: cursor: 'pointer'
            #     width: .06 * @props.height
            #     height: .06 * @props.height
            #     xlinkHref: sun_glyph
            #     onClick: @props.toggle_theme


            sun_svg
                on_click: @props.toggle_theme
                rect_attr: {x: .93 * @props.width, y: .07 * @props.height, width: .019 * @props.width, height: .019 * @props.width, fill: 'red', opacity: 0}
                fill_color: theme.sun_color or 'chartreuse'
                transform: "translate(#{.93 * @props.width}, #{.07 * @props.height}), scale(#{@props.height * .000019})"


                # onMouseOver: => @onset_vindaloo_001 name: "tooltip_lights"
                # onMouseOut: => @fader_vindaloo_001 name: "tooltip_lights"




            # if @state["visible:bars_nav"]
            #     g
            #         onMouseLeave: => @fader_vindaloo_001(name: "bars_nav")
            #         opacity: @state["opacity:bars_nav"]
            #         onMouseEnter: => @onset_vindaloo_001(name: "bars_nav")
            #         ,
            #         rect
            #             x: '90%'
            #             y: '10%'
            #             width: '10%'
            #             height: '80%'
            #             fill: background_fill
            #             opacity: .8
            #             cursor: 'pointer'
            #
            #         image
            #             x: "#{home_place.x}%"
            #             y: "#{home_place.y}%"
            #             style: cursor: 'pointer'
            #             width: .03 * @props.height
            #             height: .03 * @props.height
            #             xlinkHref: home_glyph
            #             onClick: -> browserHistory.push '/'
            #
            #
            #         image
            #             x: "#{sun_place.x}%"
            #             y: "#{sun_place.y}%"
            #             style: cursor: 'pointer'
            #             width: .03 * @props.height
            #             height: .03 * @props.height
            #             xlinkHref: sun_glyph
            #             onMouseOver: => @onset_vindaloo_001 name: "tooltip_lights"
            #             onMouseOut: => @fader_vindaloo_001 name: "tooltip_lights"
            #         if @state["visible:tooltip_lights"] is true
            #
            #             # tooltip_000
            #             #     opacity: @state["opacity:tooltip_lights"]
            #             #     height: @props.height
            #             #     x: sun_place.x
            #             #     y: sun_place.y
            #             #     font_size: .014 * @props.height
            #             #     tip_string: 'CHANGE THEME'
            #
            #             theme_chooser_000
            #                 opacity: @state["opacity:tooltip_lights"]
            #                 height: @props.height
            #                 x: sun_place.x
            #                 y: sun_place.y
            #                 font_size: .014 * @props.height
            #                 # tip_string: 'CHANGE THEME'
            #                 mouse_over: => @onset_vindaloo_001 name: "tooltip_lights"
            #                 mouse_out: => @fader_vindaloo_001 name: "tooltip_lights"

                # onBlur: @props.toggle_bars_nav



        )

        # g {onMouseLeave: @fade_me, opacity: @state.my_opacity, onMouseEnter: @cancel_fade_me},
        #     rect
        #         x: '90%'
        #         y: '10%'
        #         width: '10%'
        #         height: '80%'
        #         fill: background_fill
        #         opacity: .8
        #         cursor: 'pointer'
        #         onClick: @props.toggle_bars_nav
        #         # onBlur: @props.toggle_bars_nav
        #
        #
        #
        #
        #     # lights_themes()
        #
        #     image
        #         x: "#{sun_place.x}%"
        #         y: "#{sun_place.y}%"
        #         width: .05 * @props.height
        #         height: .05 * @props.height
        #         xlinkHref: sun_glyph
        #         onClick: setter
        #         style: cursor: 'pointer'
            #     onMouseOver: => @onset_vindaloo name: "tooltip_lights"
            #     onMouseOut: => @fader_vindaloo name: "tooltip_lights"
            # if @state.tooltip_lights is true
            #     tooltip {opacity: @state["opacitytooltip_lights"], x: sun_place.x, y: sun_place.y, font_size, tip_string: 'CHANGE THEME'}
        #
        #     image
        #         x: "#{home_place.x}%"
        #         y: "#{home_place.y}%"
        #         width: .05 * @props.height
        #         height: .05 * @props.height
        #         xlinkHref: home_glyph
        #         style: cursor: 'pointer'
        #         onClick: -> browserHistory.push '/'
        #         onMouseOver: => @onset_vindaloo name: "tooltip_home"
        #         onMouseOut: => @fader_vindaloo name: "tooltip_home"
        #         # onMouseOver: => @setState tooltip_home: true
        #         # onMouseOut: => @setState tooltip_home: false
        #     if @state.tooltip_home is true
        #         tooltip {opacity: @state["opacitytooltip_home"], x: home_place.x, y: home_place.y, font_size, tip_string: 'SITE HOME'}
        #     text
        #         x: '90.8%'
        #         y: '36%'
        #         textLength: '8.6%'
        #         fill: text_color
        #         cursor: 'pointer'
        #         fontSize: font_size
        #         ,
        #         "site home"
        #     g
        #         onClick: => @onset_vindaloo({name: "about_site"})
        #         rect
        #             x: '90%'
        #             y: '38%'
        #             width: '10%'
        #             height: '3.6%'
        #             fill: 'red'
        #             cursor: 'pointer'
        #             opacity: 0
        #             # onClick: => @setState about_site: true
        #         text {x: '90.8%', y: '40%', textLength: '8.6%', fill: text_color, cursor: 'pointer', fontSize: font_size}#, onClick: => @onset_vindaloo({name: "about_site"})}#,onClick: => @setState({about_site: true})}
        #             ,
        #             "about site"
        #     if @state.about_site is true
        #         svg
        #             width: '100%'
        #             height: '100%'
        #             ,
        #             g
        #                 # onMouseLeave: => @setState about_site: false
        #                 onMouseOver: => @onset_vindaloo({name: "about_site"})
        #                 onMouseLeave: => @fader_vindaloo({name: "about_site"})
        #                 ,
        #                 rect {x: '60%', y: '32%', width: '40%', height: '20%', fill: 'white', opacity: "#{.8 * @state["opacityabout_site"]}"}
        #                 text {x: '62%', y: '44%', fontSize: .018 * @props.height, fill: 'grey', opacity: "#{.98 * @state["opacityabout_site"]}"},
        #                     "Site is a unique blend of CoffeeScript, "
        #                 text {x: '62%', y: '46%', fontSize: .018 * @props.height, fill: 'grey', opacity: "#{.98 * @state["opacityabout_site"]}"},
        #                     "React, & programmatic SVG, deployed to Heroku."
        #
        #                 a
        #                     xlinkHref: 'https://github.com/kulicuu/yari-ashi-zero'
        #                     xlinkShow: 'new'
        #                     ,
        #                     text { x: '62%', y: '50%', fontSize: .03 * @props.height, fill: 'grey'}
        #                         ,
        #                         'Site source code at github'
        #
        #
        #
        #
        #
        #     text
        #         x: '90.8%'
        #         y: '60%'
        #         textLength: '8.6%'
        #         fill: text_color
        #         cursor: 'pointer'
        #
        #         fontSize: font_size
        #
        #
        #         ,
        #         "about person"
