# home_mid_nav_000_container = rc_generic(require('./home_mid_nav_000_.coffee'))
home_top_nav = rc_generic(require('./home_top_nav_001_.coffee'))

module.exports = home = rr
    vindaloos: {}

    onset_vindaloo_000: ({ name }) ->
        # clearInterval @vindaloos["onset_animation:#{name}"]
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





    getInitialState: ->
        "luminosity:professional": 50
        "luminosity:amateur": 50
        # M: @props.M
        # image_000: "images/stock_000.jpeg"
        # image_001: "images/stock_001.jpeg"
        time_hours: 0
        time_minutes: 0
        time_seconds: 0
        # greeting: ""
        # thoughts: ""

    timekeep: ->
        now = new Date()
        hours = now.getHours()
        if hours < 10
            hours = '0' + hours.toString()
        else
            hours = hours.toString()
        minutes = now.getMinutes()
        if minutes < 10
            minutes = '0' + minutes.toString()
        else
            minutes = minutes.toString()
        seconds = now.getSeconds()
        if seconds < 10
            seconds = '0' + seconds.toString()
        else
            seconds = seconds.toString()
        # c 'hours', hours, minutes, seconds
        @setState
            time_hours: hours
            time_minutes: minutes
            time_seconds: seconds

    componentWillUnmount: ->
        clearInterval @keeper_interval

    componentWillMount: ->
        @keeper_interval = setInterval =>
            @timekeep()
        , 50

    render: ->
        text3 = (i, strang) =>
            text
                x: "77%"
                y: "#{93 + (i * .00323 * @props.height)}%"
                fill: 'grey'
                fontFamily: 'Sans'
                textLength: .211 * @props.width
                fontSize: .01213 * @props.height
                fill: 'lightgrey'
                ,
                strang
        svg1(
            grad_professional = shortid(); grad_amateur = shortid()
            defs
                linearGradient
                    id: grad_professional
                    stop
                        offset: '0%'
                        stopColor: "hsl(230, 94%, #{@state["luminosity:professional"]}%)"
                    stop
                        offset: '92%'
                        stopColor: "hsl(280, 96%, #{@state["luminosity:professional"]}%)"
                linearGradient
                    id: grad_amateur
                    stop
                        offset: '0%'
                        stopColor: "hsl(280, 96%, #{@state["luminosity:amateur"]}%)"
                    stop
                        offset: '92%'
                        stopColor: "hsl(280, 96%, #{@state["luminosity:amateur"]}%)"

            g
                onMouseOver: => @onset_vindaloo_000({name: "professional"})
                onMouseOut: => @fader_vindaloo_000({name: "professional"})
                onClick:-> browserHistory.push '/professional'

                ,
                rect
                    x: "13%"
                    y: "31%"
                    width: .5 * @props.width
                    height: .1 * @props.height
                    fill: 'red'
                    opacity: 0
                    cursor: 'pointer'
                text
                    x: "18.323%"
                    y: "37%"
                    textLength: .433 * @props.width
                    fontSize: .0323 * @props.height
                    fill: "url(##{grad_professional})"
                    cursor: 'pointer'
                    ,
                    "professional"


            g
                onMouseOver: => @onset_vindaloo_000({name: "amateur"})
                onMouseOut: => @fader_vindaloo_000({name: "amateur"})
                onClick:-> browserHistory.push '/amateur'
                ,
                rect
                    x: "33%"
                    y: "47%"
                    width: .5 * @props.width
                    height: .1 * @props.height
                    fill: 'red'
                    opacity: 0
                    cursor: 'pointer'
                text
                    x: "40%"
                    y: "53%"
                    textLength: .4233 * @props.width
                    fontSize: .0323 * @props.height
                    fill: "url(##{grad_amateur})"
                    cursor: 'pointer'
                    ,
                    "amateur"


            text3(0, "уаилий איליאוו wylie")
            text3(1, "кулик ןמוטרח woodcock")
            text3(2, "иегошуа עשוהי joshua")
            text
                x: '4%'
                y: '97%'
                fill: 'grey'
                # fontStyle: 'Verdana'
                fontFamily: 'Sans'
                textLength: .245 * @props.width
                fontSize: .01523 * @props.height
                ,
                " #{@state.time_hours}:#{@state.time_minutes}:#{@state.time_seconds}"

            bars_nav_001()

        )
