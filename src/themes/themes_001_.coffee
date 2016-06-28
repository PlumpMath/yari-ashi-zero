
{ DEFAULT_THEME, LIGHT_THEME } = '../constants/theme_changes_.coffee'

{ THEME_ZERO, THEME_ONE, THEME_TWO } = '../constants/theme_changes_.coffee'

theme_zero =

    initial_state_mixin: ->
        "luminosity:professional": 80
        "luminosity:amateur": 80

    onset_vindaloo_000: ({ name }) ->
        clearInterval @vindaloos["fader_animation:#{name}"]
        @vindaloos["onset_animation:#{name}"] = setInterval =>
            if @state["luminosity:#{name}"] > 30
                @setState
                    "luminosity:#{name}": @state["luminosity:#{name}"] - 2
            else
                clearInterval @vindaloos["onset_animation:#{name}"]
        , 20

    fader_vindaloo_000: ({ name }) ->
        clearInterval @vindaloos["onset_animation:#{name}"]
        @vindaloos["fader_animation:#{name}"] = setInterval =>
            if @state["luminosity:#{name}"] < 80
                @setState
                    "luminosity:#{name}": @state["luminosity:#{name}"] + 2
            else
                clearInterval @vindaloos["fader_animation:#{name}"]
        , 20

    fill_000: "url(#grad_000)"
    fill_001: "url(#grad_001)"
    fill_002: "url(#grad_professional)"
    fill_003: "url(#grad_amateur)"
    defs: (state) ->
        return [
            linearGradient
                id: "grad_amateur"
                stop
                    offset: '0%'
                    stopColor: "hsl(280, 96%, #{state["luminosity:amateur"]}%)"
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, #{state["luminosity:amateur"]}%)"
            ,
            linearGradient
                id: "grad_professional"
                stop
                    offset: '0%'
                    stopColor: "hsl(230, 94%, #{state["luminosity:professional"]}%)"
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, #{state["luminosity:professional"]}%)"
            ,
            linearGradient
                id: "grad_000"
                stop
                    offset: '0%'
                    stopColor: "hsl(230, 94%, 87%)" # i wonder if we can tie this into state make it injectable and dynamic?
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, 88%)"
            ,
            linearGradient
                id: "grad_001"
                stop
                    offset: '10%'
                    stopColor: "hsl(140, 88%, #{state['luminosity:grad_001']}%)"
                stop
                    offset: '77%'
                    stopColor: "hsl(300, 87%, #{state['luminosity:grad_001']}%)"
        ]

    background_color: '#F3F5EA'
    text_color: '#2478E7'
    nav_text_color: 'darkgrey'
    active_link_color: 'green'
    sun_color: 'magenta'

theme_one =

    initial_state_mixin: ->
        "luminosity:professional": 50
        "luminosity:amateur": 50

    onset_vindaloo_000: ({ name }) ->
        clearInterval @vindaloos["fader_animation:#{name}"]
        @vindaloos["onset_animation:#{name}"] = setInterval =>
            if @state["luminosity:#{name}"] < 100
                @setState
                    "luminosity:#{name}": @state["luminosity:#{name}"] + 2
            else
                clearInterval @vindaloos["onset_animation:#{name}"]
        , 20

    fader_vindaloo_000: ({ name }) ->
        clearInterval @vindaloos["onset_animation:#{name}"]
        @vindaloos["fader_animation:#{name}"] = setInterval =>
            if @state["luminosity:#{name}"] > 50
                @setState
                    "luminosity:#{name}": @state["luminosity:#{name}"] - 2
            else
                clearInterval @vindaloos["fader_animation:#{name}"]
        , 20


    fill_000: "url(#grad_000)"
    fill_001: "url(#grad_001)"
    fill_002: "url(#grad_professional)"
    fill_003: "url(#grad_amateur)"
    defs: (state) ->
        return [
            linearGradient
                id: "grad_amateur"
                stop
                    offset: '0%'
                    stopColor: "hsl(280, 96%, #{state["luminosity:amateur"]}%)"
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, #{state["luminosity:amateur"]}%)"
            ,
            linearGradient
                id: "grad_professional"
                stop
                    offset: '0%'
                    stopColor: "hsl(230, 94%, #{state["luminosity:professional"]}%)"
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, #{state["luminosity:professional"]}%)"
            ,
            linearGradient
                id: "grad_000"
                stop
                    offset: '0%'
                    stopColor: "hsl(230, 94%, 87%)" # i wonder if we can tie this into state make it injectable and dynamic?
                stop
                    offset: '92%'
                    stopColor: "hsl(280, 96%, 88%)"
            ,
            linearGradient
                id: "grad_001"
                stop
                    offset: '10%'
                    stopColor: "hsl(140, 88%, #{state['luminosity:grad_001']}%)"
                stop
                    offset: '77%'
                    stopColor: "hsl(300, 87%, #{state['luminosity:grad_001']}%)"
        ]

    background_color: 'black'
    text_color: 'lightgrey'
    nav_text_color: 'white'
    active_link_color: '#549AE3'
    sun_color: 'chartreuse'

theme_two =


    background_color: 'black'
    text_color: 'lightgrey'
    nav_text_color: 'white'
    active_link_color: '#549AE3'



module.exports = themes_definitions =

    THEME_ZERO: theme_zero
    THEME_ONE: theme_one
    THEME_TWO: theme_two
