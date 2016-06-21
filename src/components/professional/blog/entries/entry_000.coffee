
exports.metadata =
    date_created: new Date(2016, 6 - 1, 22)
    date_updated: new Date(2016, 6 - 1, 22)
    title: "blog entry 000"
    preview_text: "This is a blog entry about something or other.. blah blah blah"
    tags: ["nonsense", "dynamic routing", "other stuff"]

# top_nav = rc_generic(require('../../top_nav_001_.coffee'))
exports.component = entry = rr
    # c 'something here'
    # getInitialState: ->
    #     showing_bars_nav: false
    # toggle_bars_nav: ->
    #     @setState
    #         showing_bars_nav: not @state.showing_bars_nav
    render: ->

        # theme = theme_definitions[@props.theme]
        #
        # main1 =
        #     style:
        #         color: theme.text_color
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                # fill: theme.background_color
                fill: 'white'

            text
                x: '10%'
                y: '40%'
                fontSize: 40
                fill: 'red'
                ,
                "entry 000"


            # top_nav
            #     toggle_bars_nav: @toggle_bars_nav
            # bars_nav_001()




        )# -------------------------
