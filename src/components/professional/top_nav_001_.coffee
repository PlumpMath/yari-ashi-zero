# { DEFAULT_THEME, LIGHT_THEME, THEME_ZERO, THEME_ONE } = require '../../constants/theme_changes_.coffee'
module.exports = nav_bar_top = rr



    render: ->
        # c '@props', @props
        {theme_name, location, height} = @props
        {background_color, text_color, nav_text_color, active_link_color} = theme_definitions[theme_name]

        location_rayy = location.split '/'



        tMat = @props.t_mat
        nav_bar_height = @props.height * .1
        font_size = nav_bar_height * .19
        text_y = (nav_bar_height * .5) + (.5 * font_size)
        height = @props.height
        # bars_glyph = switch @props.theme_name
        #     when DEFAULT_THEME
        #         '/svgs/white/bars.svg'
        #     when THEME_ZERO
        #         '/svgs/black/bars.svg'


        get_color = (loc_str) ->
            if _.includes(location_rayy, loc_str)
                return active_link_color
            else
                return nav_text_color
        svg1(

            rect
                opacity: 0
                x: '0%'
                y: '0%'
                width: '20%'
                height: nav_bar_height
                fill: 'white'
                cursor: 'pointer'
                onClick: -> browserHistory.push '/professional/about'
            text
                x: '4%'

                # x: @props.width * .5
                y: '6%'
                'font-family': 'Sans'
                textAnchor: 'center'
                fontSize: font_size
                textLength: @props.width * .1
                fill: do -> get_color('about')
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/about'
                ,
                "about"


            rect
                opacity: 0
                x: '20%'
                y: '0%'
                width: '20%'
                height: nav_bar_height
                fill: 'white'
                cursor: 'pointer'
                onClick: -> browserHistory.push '/professional/blog'
            text
                x: "24%"
                y: '6%'
                'font-family': 'Sans'
                textAnchor: 'center'
                fontSize: font_size
                textLength: @props.width * .06
                fill: do -> get_color('blog')
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/blog'
                ,
                "blog"
            rect
                x: "40%"
                # x: @props.width * .48
                y: '0%'
                opacity: 0
                onClick: -> browserHistory.push '/professional/portfolio'
                width: "20%"
                height: nav_bar_height
                fill: 'white'
                cursor: 'pointer'
            text
                x: "44%"
                y: '6%'
                'font-family': 'Sans'
                fontSize: font_size
                'text-anchor': 'right'
                textLength: @props.width * .1
                fill: do -> get_color('portfolio')
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/portfolio'
                ,
                "portfolio"
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







        )#-----------------------------------------------------------------------------------------------
