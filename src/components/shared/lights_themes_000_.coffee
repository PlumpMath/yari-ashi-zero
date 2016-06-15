{ DEFAULT_THEME, LIGHT_THEME } = require '../../constants/theme_changes_.coffee'
module.exports = light_themes = rr
    render: ->
        setter = switch @props.theme
            when DEFAULT_THEME
                @props.change_to_light_theme
            when LIGHT_THEME
                @props.change_to_default_theme
        tMat = @props.t_mat
        height = @props.height
        svg1(
            rect
                x: '96%'
                y: '4%'
                width: '4%'
                height: '4%'
                fill: 'purple'
                cursor: 'pointer'
                onClick: setter
            text
                x: '96.4%'
                y: '6.6%'
                textLength: '3.6%'
                fill: 'darkgrey'
                cursor: 'pointer'
                onClick: setter
                # onClick: if @props.theme is DEFAULT_THEME then @props.change_to_light_theme else @props.change_to_default_theme
                ,
                "lights"



        )#----------------------------------
