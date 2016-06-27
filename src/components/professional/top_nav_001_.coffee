{ DEFAULT_THEME, LIGHT_THEME } = require '../../constants/theme_changes_.coffee'
module.exports = nav_bar_top = rr



    render: ->
        c '@props', @props
        {theme, location} = @props
        {background_color, text_color, nav_text_color, active_link_color} = theme_definitions[theme]

        location_rayy = location.split '/'



        tMat = @props.t_mat
        nav_bar_height = @props.height * .05
        font_size = nav_bar_height * .38
        text_y = (nav_bar_height * .5) + (.5 * font_size)
        height = @props.height
        bars_glyph = switch @props.theme
            when DEFAULT_THEME
                '/svgs/white/bars.svg'
            when LIGHT_THEME
                '/svgs/black/bars.svg'


        get_color = (loc_str) ->
            if _.includes(location_rayy, loc_str)
                return active_link_color
            else
                return nav_text_color
        svg1(


            rect
                opacity: 0
                x: '2%'
                y: '0%'
                width: '11%'
                height: nav_bar_height * 1.2
                fill: 'white'
                cursor: 'pointer'
                onClick: -> browserHistory.push '/professional/blog'
            text
                x: @props.width * .05
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: do -> get_color('blog')
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/blog'
                ,
                "blog"
            # rect
            #     opacity: 0
            #     x: @props.width * .18
            #     y: '0%'
            #     width: '11%'
            #     height: nav_bar_height
            #     fill: 'white'
            #     cursor: 'pointer'
            #     onClick: -> browserHistory.push '/professional/articles'
            # text
            #     x: @props.width * .2
            #     y: '4%'
            #     'font-family': 'Sans'
            #     fontSize: font_size
            #     textLength: @props.width * .06
            #     fill: do -> get_color('articles')
            #     cursor: 'pointer'
            #     onClick:-> browserHistory.push '/professional/articles'
            #     ,
            #     "articles"
            rect
                x: @props.width * .34
                y: '0%'
                opacity: 0
                onClick: -> browserHistory.push '/professional/portfolio'
                width: .08 * @props.width
                height: .06 * @props.height
                fill: 'white'
                cursor: 'pointer'
            text
                x: @props.width * .35
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: do -> get_color('portfolio')
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/portfolio'
                ,
                "portfolio"
            rect
                opacity: 0
                x: @props.width * .48
                y: '0%'
                width: '11%'
                height: nav_bar_height
                fill: 'white'
                cursor: 'pointer'
                onClick: -> browserHistory.push '/professional/about'
            text
                x: @props.width * .5
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: do -> get_color('about')
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/about'
                ,
                "about"







        )#-----------------------------------------------------------------------------------------------
