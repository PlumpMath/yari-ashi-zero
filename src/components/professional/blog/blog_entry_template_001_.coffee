
exports.metadata = metadata =
    date_created: new Date(2016, 6 - 1, 27)
    date_updated: new Date(2016, 6 - 1, 27)
    title: "My frontend paradigm"
    preview_text: "I've been building SPAs for four years now; what have I learned and what do I look forward to ?"
    tags: ["nonsense", "dynamic routing", "other stuff"]

top_nav = rc_generic(require('../../top_nav_001_.coffee'))
table_contents_nav = rc_generic(require('../table_contents_nav.coffee'))

addWheelListener = require('wheel').addWheelListener
removeWheelListener = require('wheel').removeWheelListener

exports.component = entry = rr

    counter: 0

    scroll_limits:
        top: 20
        bottom: -120

    scroller: (e) ->
        if e.deltaY > 0 and @state.scroll_state > @scroll_limits.bottom
            @setState
                scroll_state: @state.scroll_state - (e.deltaY / 10 )
        else if e.deltaY < 0 and @state.scroll_state < @scroll_limits.top
            @setState
                scroll_state: @state.scroll_state - (e.deltaY / 10 )

    getInitialState: ->
        scroll_state: 10


    # componentWillUnmount: ->
    #     removeWheelListener window, @scroller
    #
    #
    #
    # componentDidMount: ->
    #     addWheelListener window,  @scroller

    touch_scroll:
        bouncer: 0
        start: null
        last: null

    handle_touchEnd: (e) ->
        @touch_scroll =
            start: null
            last: null
            bouncer: 0

    handle_touchStart: (e) ->
        @touch_scroll.start = e.changedTouches[0].pageY
        @touch_scroll.last = e.changedTouches[0].pageY

    handle_touchMove: (e) ->
        @touch_scroll.bouncer++
        if @touch_scroll.bouncer % 5 is 0
            now = e.changedTouches[0].pageY
            delta = @touch_scroll.last - now
            if delta < 0 and @state.scroll_state < 30
                @setState
                    scroll_state: @state.scroll_state - (delta * .3)
            else if delta > 0 and @state.scroll_state > -100
                @setState
                    scroll_state: @state.scroll_state - (delta * .3)
            @touch_scroll.last = e.changedTouches[0].pageY


    render: ->
        {theme_name, height } = @props
        {text_color , background_color} = theme_definitions[theme_name]
        # main1 =
        #     style:
        #         color: theme.text_color
        svg
            width: '100%'
            height: '100%'
            ,
            rect
                x: 0
                y: 0
                width: '100%'
                height: "100%"
                fill: background_color


            g
                onTouchStart: @handle_touchStart
                onTouchMove: @handle_touchMove
                onTouchEnd: @handle_touchEnd
                onWheel: @scroller
                ,
                rect
                    x: "23%"
                    y: "10%"
                    width: '70%'
                    height: "90%"
                    fill: 'blue'
                    opacity: 0

                foreignObject

                    x: '30%'
                    y: "#{@state.scroll_state}%"
                    width: '50%'
                    height: '100%'
                    # onScroll: (e) -> c 'have a scroll', e
                    ,
                    div
                        style:
                            color: text_color
                            # height: '100%'
                        ,
                        h6 null, "created: #{metadata.date_created.toDateString()}, updated: #{metadata.date_updated.toDateString()}"
                        h1 null,
                            "
    My Frontend Paradigm
                            "



            table_contents_nav()
            top_nav()
            bars_nav_001()
