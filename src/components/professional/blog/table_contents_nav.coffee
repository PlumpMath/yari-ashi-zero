blog_entries = require.context('./entries', false)
keychain = blog_entries.keys()
chain2 =
module.exports = professional_blog = rr
    getInitialState: ->
        filter: null
        scroll_state: 20

    touch_scroll:
        bouncer: 0
        start: null
        last: null

    scroll_limits:
        top: 20
        bottom: -40

    scroller: (e) ->
        if e.deltaY > 0 and @state.scroll_state > @scroll_limits.bottom
            @setState
                scroll_state: @state.scroll_state - (e.deltaY / 10 )
        else if e.deltaY < 0 and @state.scroll_state < @scroll_limits.top
            @setState
                scroll_state: @state.scroll_state - (e.deltaY / 10 )

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
        { theme_name, height } = @props
        { text_color, background_color} = theme_definitions[theme_name]

        main1 =
            style:
                color: text_color
        svg
            width: '100%'
            height: '100%'
            ,
            our_size = .0139
            our_sep = .04
            our_sep2 = 8.4
            our_x = "2%"

            g
                onWheel: @scroller,
                rect
                    x: 0
                    y: "10%"
                    width: "21%"
                    height: "90%"

                    opacity: 0
                    fill: 'blue'
                text
                    x: our_x
                    y: "13%"
                    fontSize: our_size * height
                    fill: text_color
                    cursor: 'pointer'
                    onClick: -> browserHistory.push "/professional/blog"
                    ,
                    "blog home"
                g
                    onTouchStart: @handle_touchStart
                    onTouchMove: @handle_touchMove
                    onTouchEnd: @handle_touchEnd
                    ,
                    foreignObject
                        x: our_x
                        y: "#{@state.scroll_state}%"
                        width: '16%'
                        height: '20%'
                        ,
                        for key, idx in keychain
                            do (key, idx) =>
                                meta = blog_entries(key).metadata
                                frag = key.split('/')[1].split('.')[0]
                                div
                                    style:
                                        cursor: 'pointer'
                                        margin: "#{.01 * height}%"
                                    onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                                    ,
                                    p
                                        # onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                                        style:
                                            margin: 0
                                            fontSize: our_size * 1.22 * height
                                            color: text_color
                                        ,
                                        "#{meta.title}"
                                    p
                                        # onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                                        style:
                                            margin: "#{.003 * height}%"
                                            fontSize: our_size * height
                                            color: text_color
                                        ,
                                        "created: #{meta.date_created.getDate()}/#{meta.date_created.getMonth() + 1}/#{meta.date_created.getYear() + 1900}; updated: #{meta.date_updated.getDate()}/#{meta.date_updated.getMonth() + 1}/#{meta.date_updated.getYear() + 1900}"
                                    p
                                        # onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                                        style:
                                            margin: "#{.003 * height}%"
                                            fontSize: our_size * height
                                            color: text_color
                                        ,
                                        "#{meta.preview_text}  [...read on]"
