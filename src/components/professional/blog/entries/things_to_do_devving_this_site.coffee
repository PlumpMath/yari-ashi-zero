
exports.metadata = metadata =
    date_created: new Date(2016, 6 - 1, 30)
    date_updated: new Date(2016, 6 - 1, 30)
    title: "things to do :: on this site construction"
    preview_text: "List of things to do on this site"
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
        { height } = @props
        p_st =
            style:
                margin: .01 * height
                fontSize: .016 * height
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
                        h4 null,
                            "
things to do :: this site construction
                            "
                        div null,
                            ul null,
                                li null, "add question-mark glyph where appropriate for helpful info and so not to burden repeat users with the info.  the noise.  "
                                li null, "add a fullscreen button with a glyph, to encourage users who are actually engaging to take advantage of the fullscreen mode's much better experience"
                                li null, "make a mobile version of the whole thing:: several days work necessarily"
                                li null, "add time sorting to the blog entries navigation"
                                li null, "eventually when enough entries, add tag based filtering"
                                li null, "generalise somehow the concept of blog and articles collection, maybe articles are a subset of the elements of a blog. "
                                    p p_st, "Roughly, I think of articles as being serious and organised not according to time but some subject based structure, whereas blog entries are kind of frivolous, at least lighter, and tied to time, like journal entries."
                                li null, "add clipping to the blog contents nav, so that it elements dissapear above certain point. There is an SVG element for this, clipPath maybe"





            table_contents_nav()
            top_nav()
            bars_nav_001()
