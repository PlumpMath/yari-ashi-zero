
{ DEFAULT_THEME, LIGHT_THEME } = '../constants/theme_changes_.coffee'

call = svg null,
    defs
        linearGradient
            id: 'grad_professional'
            stop
                offset: '0%'
                stopColor: "hsl(230, 94%, 99%)"
            stop
                offset: '92%'
                stopColor: "hsl(280, 96%, 77%)"
        linearGradient
            id: 'ten'
            stop
                offset: '0%'
                stopColor: "hsl(280, 96%, 88%)"
            stop
                offset: '92%'
                stopColor: "hsl(280, 96%, 88%)"


module.exports = themes_definitions =

    DEFAULT_THEME :
        background_color: 'black'
        text_color: 'lightgrey'
        nav_text_color: 'white'
        active_link_color: '#549AE3'

    LIGHT_THEME :
        background_color: '#F3F5EA'
        text_color: '#2478E7'
        nav_text_color: 'darkgrey'
        active_link_color: 'green'
