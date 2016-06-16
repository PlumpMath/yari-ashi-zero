{ DEFAULT_THEME, LIGHT_THEME } = require '../../constants/theme_changes_.coffee'
module.exports = light_themes = rr
    render: ->
        font_size = .024 * @props.height

        setter = switch @props.theme
            when DEFAULT_THEME
                @props.change_to_light_theme
            when LIGHT_THEME
                @props.change_to_default_theme
        tMat = @props.t_mat
        height = @props.height
        svg1(
            rect
                x: '92%'
                y: '18%'
                width: '4%'
                height: '4%'
                fill: 'darkgrey'
                cursor: 'pointer'
                onClick: setter
            text
                x: '92.3%'
                y: '20.7%'
                textLength: '3.6%'
                fill: 'white'
                cursor: 'pointer'
                onClick: setter
                fontSize: font_size
                # onClick: if @props.theme is DEFAULT_THEME then @props.change_to_light_theme else @props.change_to_default_theme
                ,
                "lights"



        )#----------------------------------
