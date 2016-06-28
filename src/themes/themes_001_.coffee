
{ DEFAULT_THEME, LIGHT_THEME } = '../constants/theme_changes_.coffee'

{ THEME_ZERO, THEME_ONE, THEME_TWO } = '../constants/theme_changes_.coffee'

theme_zero =
    fill_000: "url(#theme_zero_grad_000)"
    fill_001: "url(#theme_zero_grad_001)"
    defs: (state) ->
        return (
            linearGradient
                id: "theme_zero_grad_000"
                stop
                    offset: '0%'
                    stopColor: "hsl(230, 94%, 87%)" # i wonder if we can tie this into state make it injectable and dynamic?
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, 88%)"

            linearGradient
                id: "theme_zero_grad_001"
                stop
                    offset: '10%'
                    stopColor: "hsl(140, 88%, #{state['luminosity:grad_001']}%)"
                stop
                    offset: '77%'
                    stopColor: "hsl(300, 87%, #{state['luminosity:grad_001']}%)"
        )




    background_color: '#F3F5EA'
    text_color: '#2478E7'
    nav_text_color: 'darkgrey'
    active_link_color: 'green'

theme_one =
    fill_000: "url(#theme_zero_grad_000)"
    defs:
        linearGradient
            id: "theme_zero_grad_000"
            stop
                offset: '0%'
                stopColor: "hsl(230, 94%, 87%)" # i wonder if we can tie this into state make it injectable and dynamic?
            stop
                offset: '92%'
                stopColor: "hsl(280, 96%, 88%)"

    background_color: 'black'
    text_color: 'lightgrey'
    nav_text_color: 'white'
    active_link_color: '#549AE3'







module.exports = themes_definitions =

    THEME_ZERO: theme_zero
    THEME_ONE: theme_one

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
