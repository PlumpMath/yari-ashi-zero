lights_themes = rc_generic(require('../shared/lights_themes_000_.coffee'))
theme_definitions = require '../../themes/themes_000_.coffee'
module.exports = bars_nav = rr


    getInitialState: ->
        tooltip_lights: false
        tooltip_home: false


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

        svg1(




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
                onMouseOver: => @setState tooltip_lights: true
                onMouseOut: => @setState tooltip_lights: false
            if @state.tooltip_lights is true
                svg1(
                    rect
                        x: "#{sun_place.x}%"
                        y: "#{sun_place.y - 4}%"
                        width: '6%'
                        height: '4%'
                        fill: 'yellow'
                        opacity: '.7'
                    text
                        x: "#{sun_place.x}%"
                        y: "#{sun_place.y - 2}%"
                        textLength: '5%'
                        fontSize: .8 * font_size
                        fill: 'magenta'
                        ,
                        "themes"
                )

            image
                x: "#{home_place.x}%"
                y: "#{home_place.y}%"
                width: .05 * @props.height
                height: .05 * @props.height
                xlinkHref: home_glyph
                style: cursor: 'pointer'
                onClick: -> browserHistory.push '/'
                onMouseOver: => @setState tooltip_home: true
                onMouseOut: => @setState tooltip_home: false
            if @state.tooltip_home is true
                svg1(
                    rect
                        x: "#{home_place.x}%"
                        y: "#{home_place.y - 4}%"
                        width: '6%'
                        height: '4%'
                        fill: 'yellow'
                        opacity: '.7'
                    text
                        x: "#{home_place.x}%"
                        y: "#{home_place.y - 2}%"
                        textLength: '5%'
                        fontSize: .8 * font_size
                        fill: 'magenta'
                        ,
                        "site home"
                )

            text
                x: '90.8%'
                y: '36%'
                textLength: '8.6%'
                fill: text_color
                cursor: 'pointer'

                fontSize: font_size


                ,
                "site home"

            text
                x: '90.8%'
                y: '40%'
                textLength: '8.6%'
                fill: text_color
                cursor: 'pointer'

                fontSize: font_size


                ,
                "about site"

            text
                x: '90.8%'
                y: '60%'
                textLength: '8.6%'
                fill: text_color
                cursor: 'pointer'

                fontSize: font_size


                ,
                "about person"




        )#----------------------------------
