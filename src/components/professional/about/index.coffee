
top_nav = rc_generic(require('../top_nav_001_.coffee'))


module.exports = professional_blog = rr
    full_screen: ->
        el = document.getElementsByTagName("body")[0]
        c el
        # el.requestFullScreen()
        el.webkitRequestFullScreen()

    componentDidMount: ->

    getInitialState: ->

        showing_bars_nav: false
    toggle_bars_nav: ->
        @setState
            showing_bars_nav: not @state.showing_bars_nav

    render_CV_link: ->
        { theme_name, height, width } = @props
        { text_color, background_color }= theme_definitions[theme_name]

        a
            # xlinkHref: "https://yadi.sk/i/FEUS8l2IsignJ"
            xlinkHref: "https://yadi.sk/i/H3Z_AMZitopNJ"
            xlinkShow: 'new'
            ,
            text
                x: '80%'
                y: '20.3%'
                fontSize: .014 * height
                fill: text_color
                ,
                "CV / resume PDF"

    render: ->
        { theme_name, height, width } = @props
        { text_color, background_color }= theme_definitions[theme_name]
        # grad_000 = shortid() ; filter_000 = shortid()
        main1 =
            style:
                color: text_color
        p_style =
            style:
                fontSize: .016 * height
        svg1(
            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: background_color
                onClick: @full_screen
            text
                x: '10%'
                y: '20%'
                fontSize: .018 * height
                fill: text_color
                ,
                "Wylie Kulik"
            text
                x: '10%'
                y: '22.4%'
                fontSize: .016 * height
                fill: text_color
                ,
                "Tel Aviv"
            text
                x: '10%'
                y: '26.4%'
                fontSize: .016 * height
                fill: text_color
                ,
                "contact:"
            text
                x: '10%'
                y: '28.4%'
                fontSize: .014 * height
                fill: text_color
                ,
                "email: yari.ashi.zero at yandex.com"
            a
                xlinkHref: "https://github.com/kulicuu/"
                xlinkShow: 'new'
                ,
                text
                    x: '10%'
                    y: '30.3%'
                    fontSize: .014 * height
                    fill: text_color
                    ,
                    "github: kulicuu"
            @render_CV_link()
            text
                x: '10%'
                y: '34%'
                fontSize: .016 * height
                fill: text_color
                ,
                "summary: "
            text
                x: '10%'
                y: '35.7%'
                fontSize: .014 * height
                fill: text_color
                ,
                "Fullstack web programmer. Focus: JavaScript, NodeJS, Redis, ReactJS."
            text
                x: '20%'
                y: '40%'
                fontSize: .016 * height
                fill: text_color
                ,
                "services:"
            # text
            #     x: '10%'
            #     y: '39%'
            #     fontSize: .014 * height
            #     fill: text_color
            #     ,
            #     "Fullstack web programmer. Focus: JavaScript, NodeJS, Redis, ReactJS."

            foreignObject
                x: '24%'
                y: '41%'
                width: '30%'
                height: '30%'
                ,
                div main1,

                    p p_style,
                        "
Design & build on enterprise web applications, desktop native apps, mobile native apps. Infrastructure development, microservices, databases, distributed systems.  Contact me for estimate.

                        "



            top_nav()

            bars_nav_001()



        )# -------------------------------------------



###
contact:
email: yari.ashi.zero at yandex.com
GitHub: kulicuu
website: yari-ashi-zero.herokuapp.com/professional
summary:
Fullstack web programmer. Focus: JavaScript, NodeJS, Redis, ReactJS.
skills:
Expert: JavaScript(CoffeeScript or Babel flavours), NodeJS/npm ecosystem (incl. NW.js & electron), Re-
dis(including Lua), ReactJS, programmatic SVG, HTML/CSS, AJAX, WebSockets.
Moderate: Mobile native (ReactNative and AndroidNative), WebRTC, WebGL & OpenGL, Python, Ruby, Post-
greSQL, MongoDB, Linux sys-admin.
Light (but interested): Haskell, Clojure, Cassandra, Apache Kafka, C++, Objective-C & iOS.
education:
In general mostly autodidactic & holistic -- reading and nomadic travelling having taken up a substantial
portion of my young adult life. Some institutional educational experience also: Mathematics studies 2007-
10: Univ. Massachusetts, Boston (2009-10 exchange): Univ. Connecticut, Storrs 2003-2005: George Mason
Univ., Virginia 1999-2000: Santa Monica College, CA; Completed most upper-level undergrad BSc maths
requirements, left without degree. All said, continuous learning is a principle and way of life. I remain active
in maths and computer science theoretical work, on my own time and for my own satisfaction.
experience:
20 years programming in amateur & academic context: DOS hacking as youth, TurboPascal in high-school.
Self-taught Java in 2000, Ruby and Python in 2007, Rails in 2010. 4 years programming in professional context:
NodeJS, Angular, WebSockets, Redis, and React. In 2014 I built, deployed, and documented API for a social-
economy application Bartr (Tel Aviv startup) with NodeJS, Redis, WebSockets, and Angular. In 2014-2015 I
worked remotely for several startups in California implementing microservices, web-scaping modules, GUI
components, and testing infrastructure. In 2015 I invented a new way to compose GUIs relying heavily on
programmatic SVGs rather than HTML/CSS. Recently I've been developing games with React and WebGL,
learning new languages Clojure and Haskell.


###
