
exports.metadata = metadata =
    date_created: new Date(2016, 6 - 1, 22)
    date_updated: new Date(2016, 6 - 1, 22)
    title: "blog entry 000"
    preview_text: "this is a mock blog entry"
    tags: ["nonsense", "dynamic routing", "other stuff"]

top_nav = rc_generic(require('../../top_nav_001_.coffee'))
table_contents_nav = rc_generic(require('../table_contents_nav.coffee'))

exports.component = entry = rr

    render: ->
        {theme, height } = @props
        {text_color , background_color} = theme_definitions[theme]

        # main1 =
        #     style:
        #         color: theme.text_color
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: background_color

            text
                x: '80%'
                y: '70%'
                fontSize: .03 * height
                fill: text_color
                ,
                "entry 000"


            table_contents_nav()
            top_nav()
            bars_nav_001()




        )# -------------------------
