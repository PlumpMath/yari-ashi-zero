
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
        {theme_name, height } = @props
        {text_color , background_color} = theme_definitions[theme_name]
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
                x: '10%'
                y: '40%'
                fontSize: .03 * @height
                fill: text_color
                ,
                "blog entry template"

            foreignObject
                x: '20%'
                y: '10%'
                width: '50%'
                height: '70%'
                ,
                div
                    style:
                        color: text_color
                    ,
                    h6 null, "created: #{metadata.date_created.toDateString()}, updated: #{metadata.date_updated.toDateString()}"
                    h1 null,
                        "
Rolling my own blog from scratch with CoffeeScript & React.
                        "
                    p null,
                        "
Check out the source code.  I'll talk about stuff that I did.  This is a personal website intended to be my primary means of professional communication with the development and software engineering world; also another aspect of the site is everything i do in an amateur sense, for the love of it, or as part of my life generally.
                        "


            table_contents_nav()
            top_nav()
            bars_nav_001()




        )# -------------------------
