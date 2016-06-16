{ DEFAULT_THEME, LIGHT_THEME } = require '../../constants/theme_changes_.coffee'
module.exports = nav_bar_top = rr
    render: ->
        theme = theme_definitions[@props.theme]
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
        svg1(

            image
                x: '95%'
                y: '2%'
                style: cursor: 'pointer'
                width: .05 * @props.height
                height: .05 * @props.height
                xlinkHref: bars_glyph
                onClick: @props.toggle_bars_nav

            rect
                opacity: 0
                x: '2%'
                y: '0%'
                width: '11%'
                height: nav_bar_height
                fill: 'white'
                cursor: 'pointer'
                onClick: -> browserHistory.push '/professional/blog'
            text
                x: @props.width * .05
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: theme.nav_text_color
                cursor: 'pointer'
                onClick:-> browserHistory.push '/professional/blog'
                ,
                "blog"
            text
                x: @props.width * .2
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: theme.nav_text_color
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                ,
                "articles"
            text
                x: @props.width * .35
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .06
                fill: theme.nav_text_color
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                ,
                "portfolio"

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
                x: @props.width * .55
                y: '4%'
                'font-family': 'Sans'
                fontSize: font_size
                textLength: @props.width * .12
                fill: theme.nav_text_color
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                ,
                "home / about / profile"







        )#-----------------------------------------------------------------------------------------------
