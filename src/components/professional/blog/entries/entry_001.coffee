exports.metadata = metadata =
    date_created: new Date(2016, 6 - 1, 22)
    date_updated: new Date(2016, 6 - 1, 22)
    title: "Rolling my own blog from scratch"
    preview_text: "Check out the source code.  I'll talk about stuff that I did.  This is a personal website intended to be my primary means of professional "
    tags: ["nonsense", "dynamic routing", "other stuff"]

top_nav = rc_generic(require('../../top_nav_001_.coffee'))
table_contents_nav = rc_generic(require('../table_contents_nav.coffee'))

exports.component = entry = rr

    render: ->
        {theme } = @props
        {text_color , background_color} = theme_definitions[theme]

        main1 =
            style:
                color: text_color
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: background_color

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
                    p null,
                        "
Yeah anyways, this is a blog, and instead of using a site like wordpress or some other blogging provider, I decided, that being a professional fullstack web-programmer with an expertise in React (AndAll), I might as well go ahead and do the thing home grown, DIY.  So that is this.  What can I say, really, check the source code at
                        "
                    a
                        target: '_blank'
                        href: 'https://github.com/kulicuu/yari-ashi-zero'
                        # xlinkShow: 'new'
                        ,
                        "source code"


            table_contents_nav()
            top_nav()
            bars_nav_001()





        )# -------------------------
