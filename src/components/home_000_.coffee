home_mid_nav_000_container = rc_generic(require('./home/home_mid_nav_000_.coffee'))

module.exports = home = rr
    # TODO
    # move the timekeep stuff and similar out to index, and
    # then move it out again to factored out module
    # then move it out from there into a webworker
    componentWillUnmount: ->
        clearInterval @keeper_interval
        clearInterval @keeper_interval_2

    componentWillMount: ->
        @timekeep()
        @keeper_interval = setInterval =>
            @timekeep()
        , 300

    componentDidMount: ->
        @greeting_keep()
        @keeper_interval_2 = setInterval @greeting_keep, (60 * 1000 * 30)

    componentWillReceiveProps: (next_props)->
        @setState
            M: next_props.M

    greeting_keep: ->
        if (@state.time_hours < 12) and (@state.greeting isnt "Good Morning")
            @setState
                greeting: "Good morning,"
        if (@state.time_hours > 11) and (@state.time_hours < 18) and (@state.greeting isnt "Good Afternoon")
            @setState
                greeting: "Good afternoon,"
        if (@state.time_hours > 17) and (@state.greeting isnt "Good Evening")
            @setState
                greeting: "Good evening,"

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

    thoughts_take: (e) ->
        @setState
            thoughts: e.currentTarget.value

    getInitialState: ->
        M: @props.M
        image_000: "images/stock_000.jpeg"
        image_001: "images/stock_001.jpeg"
        time_hours: 0
        time_minutes: 0
        time_seconds: 0
        greeting: ""
        thoughts: ""

    render: ->
        svg
            width: '100%'
            height: '100%'
        ,

            image
                x: 0
                y: '10%'
                width:"100%"
                height:"100%"
                xlinkHref:@state.image_000
            image
                x: '60%'
                y: '18%'
                width: 100
                height: 100
                xlinkHref:@state.image_001
            text
                x: '40%'
                y: '20%'
                fill: 'white'
                # fontStyle: 'Verdana'
                fontFamily: 'Arial'
                fontSize: '20px'
                ,
                " #{@state.time_hours}:#{@state.time_minutes}:#{@state.time_seconds}"

            foreignObject
                x: '30%'
                y: '70%'
                width: '50%'
                height: '40%'
                ,
                p
                    style:
                        color: 'white'
                        fontFamily: 'Sans'
                    ,
                    "#{@state.greeting} what would you like to accomplish today ?\n #{@state.thoughts}"
            top_nav_000_container()
            # home_mid_nav_000_container()
                # textArea
                #     id: 'text_entry'
                #     style:
                #         height: '100%'
                #         width: '100%'
                #         fontSize: '70%'
                #         opacity: .3
                #     onChange: @thoughts_take
                # p
                #     style:
                #         color: 'white'
                #     ,
                #     @state.thoughts
