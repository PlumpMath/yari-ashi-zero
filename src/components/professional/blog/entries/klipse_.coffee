
exports.metadata = metadata =
    date_created: new Date(2016, 6 - 1, 27)
    date_updated: new Date(2016, 6 - 1, 27)
    title: "Using Klipse to interactively demo code"
    preview_text: "I was introduced to Klipse during a Clojure Meetup in Tel Aviv at Madlan's offices ..."
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
Using Klipse to interactively demo code
                        "
                    p null,
                        "
I was introduced to the

                        "
                        span null, " "
                        a
                            target: '_blank'
                            href: 'https://github.com/viebel/klipse'
                            ,
                            span null, "Klipse plugin"
                        span null, " "
                        span null, " at a "
                        a
                            target: '_blank'
                            href: 'http://www.meetup.com/Tel-Aviv-Yafo-Clojure-Round-Table/events/231891125/'
                            ,
                            span null, "Clojure Meetup"
                        span null, " "
                        span null,
                            "
 in Tel Aviv at
                            "
                        span null, " "
                        a
                            target: '_blank'
                            href: 'https://www.facebook.com/madlan.co.il'
                            ,
                            span null, "Madlan's"
                        span null, " offices."
                    p null,
                        "And now, we are going to "
                        strong null, " klipsify "
                        " this code snippet"
                    pre null,
                        code
                            class: "language-klipse-eval-js"
                            style:
                                color: text_color
                                # background: 'red
                            ,
                            "[1,2,3].map(function(x){ return x + 1;})"



            table_contents_nav()
            top_nav()
            bars_nav_001()




        )# -------------------------
