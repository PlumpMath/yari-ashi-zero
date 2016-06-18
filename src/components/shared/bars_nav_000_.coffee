lights_themes = rc_generic(require('../shared/lights_themes_000_.coffee'))
theme_definitions = require '../../themes/themes_000_.coffee'
tooltip = require './tooltip_000_.coffee'
module.exports = bars_nav = rr

    vindaloos: {}

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
                @props.toggle_bars_nav()
        , 50


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
        tooltip_lights: false
        tooltip_home: false
        about_site: false
        my_opacity: 1


    render: ->
        theme = theme_definitions[@props.theme]
        font_size = .024 * @props.height
        switch @props.theme
            when DEFAULT_THEME
                background_fill = 'white'
                text_color = 'darkgrey'
            when LIGHT_THEME
                background_fill = 'darkgrey'
                text_color = 'white'

        sun_glyph = switch @props.theme
            when DEFAULT_THEME
                '/svgs/white/sun-o.svg'
            when LIGHT_THEME
                '/svgs/black/sun-o.svg'

        home_glyph = switch @props.theme
            when DEFAULT_THEME
                '/svgs/white/home.svg'
            when LIGHT_THEME
                '/svgs/black/home.svg'

        setter = switch @props.theme
            when DEFAULT_THEME
                @props.change_to_light_theme
            when LIGHT_THEME
                @props.change_to_default_theme



        tMat = @props.t_mat
        height = @props.height

        sun_place =
            x: 92
            y: 13

        home_place =
            x: 92
            y: 23

        svg1
        g {onMouseLeave: @fade_me, opacity: @state.my_opacity, onMouseEnter: @cancel_fade_me},
            rect
                x: '90%'
                y: '10%'
                width: '10%'
                height: '80%'
                fill: background_fill
                opacity: .8
                cursor: 'pointer'
                onClick: @props.toggle_bars_nav
                # onBlur: @props.toggle_bars_nav




            # lights_themes()

            image
                x: "#{sun_place.x}%"
                y: "#{sun_place.y}%"
                width: .05 * @props.height
                height: .05 * @props.height
                xlinkHref: sun_glyph
                onClick: setter
                style: cursor: 'pointer'
                onMouseOver: => @onset_vindaloo name: "tooltip_lights"
                onMouseOut: => @fader_vindaloo name: "tooltip_lights"
            if @state.tooltip_lights is true
                tooltip {opacity: @state["opacitytooltip_lights"], x: sun_place.x, y: sun_place.y, font_size, tip_string: 'CHANGE THEME'}

            image
                x: "#{home_place.x}%"
                y: "#{home_place.y}%"
                width: .05 * @props.height
                height: .05 * @props.height
                xlinkHref: home_glyph
                style: cursor: 'pointer'
                onClick: -> browserHistory.push '/'
                onMouseOver: => @onset_vindaloo name: "tooltip_home"
                onMouseOut: => @fader_vindaloo name: "tooltip_home"
                # onMouseOver: => @setState tooltip_home: true
                # onMouseOut: => @setState tooltip_home: false
            if @state.tooltip_home is true
                tooltip {opacity: @state["opacitytooltip_home"], x: home_place.x, y: home_place.y, font_size, tip_string: 'SITE HOME'}
            text
                x: '90.8%'
                y: '36%'
                textLength: '8.6%'
                fill: text_color
                cursor: 'pointer'
                fontSize: font_size
                ,
                "site home"
            g
                onClick: => @onset_vindaloo({name: "about_site"})
                rect
                    x: '90%'
                    y: '38%'
                    width: '10%'
                    height: '3.6%'
                    fill: 'red'
                    cursor: 'pointer'
                    opacity: 0
                    # onClick: => @setState about_site: true
                text {x: '90.8%', y: '40%', textLength: '8.6%', fill: text_color, cursor: 'pointer', fontSize: font_size}#, onClick: => @onset_vindaloo({name: "about_site"})}#,onClick: => @setState({about_site: true})}
                    ,
                    "about site"
            if @state.about_site is true
                svg
                    width: '100%'
                    height: '100%'
                    ,
                    g
                        # onMouseLeave: => @setState about_site: false
                        onMouseOver: => @onset_vindaloo({name: "about_site"})
                        onMouseLeave: => @fader_vindaloo({name: "about_site"})
                        ,
                        rect {x: '60%', y: '32%', width: '40%', height: '20%', fill: 'white', opacity: "#{.8 * @state["opacityabout_site"]}"}
                        text {x: '62%', y: '44%', fontSize: .018 * @props.height, fill: 'grey', opacity: "#{.98 * @state["opacityabout_site"]}"},
                            "Site is a unique blend of CoffeeScript, "
                        text {x: '62%', y: '46%', fontSize: .018 * @props.height, fill: 'grey', opacity: "#{.98 * @state["opacityabout_site"]}"},
                            "React, & programmatic SVG, deployed to Heroku."

                        a
                            xlinkHref: 'https://github.com/kulicuu/yari-ashi-zero'
                            xlinkShow: 'new'
                            ,
                            text { x: '62%', y: '50%', fontSize: .03 * @props.height, fill: 'grey'}
                                ,
                                'Site source code at github'





            text
                x: '90.8%'
                y: '60%'
                textLength: '8.6%'
                fill: text_color
                cursor: 'pointer'

                fontSize: font_size


                ,
                "about person"
