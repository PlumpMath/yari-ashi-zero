    # TODO
    # move the timekeep stuff and similar out to index, and
    # then move it out again to factored out module
    # then move it out from there into a webworker

    componentWillMount: ->
        @timekeep()
        @keeper_interval = setInterval =>
            @timekeep()
        , 50
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
                greeting: "good morning"
        if (@state.time_hours > 11) and (@state.time_hours < 18) and (@state.greeting isnt "Good Afternoon")
            @setState
                greeting: "good afternoon"
        if (@state.time_hours > 17) and (@state.greeting isnt "Good Evening")
            @setState
                greeting: "good evening"

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
