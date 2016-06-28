top_nav = rc_generic(require('../top_nav_001_.coffee'))
blog_entries = require.context('./entries', false)
keychain = blog_entries.keys()
module.exports = professional_blog = rr
    animations: {}

    componentWillUnmount: ->
        clearInterval @animations["test_000"]

    getInitialState: ->
        filter: null
        "luminosity:grad_001": 50

    componentDidMount: ->
        going_up = true
        @animations["test_000"] = setInterval =>
            if @state["luminosity:grad_001"] < 80 and going_up is true
                @setState
                    "luminosity:grad_001": ++@state["luminosity:grad_001"]
            else if @state["luminosity:grad_001"] is 80 and going_up is true
                going_up = false
                @setState
                    "luminosity:grad_001": --@state["luminosity:grad_001"]
            else if @state["luminosity:grad_001"] > 50 and going_up is false
                @setState
                    "luminosity:grad_001": --@state["luminosity:grad_001"]
            else if @state["luminosity:grad_001"] is 50 and going_up is false
                going_up = true
                @setState
                    "luminosity:grad_001": ++@state["luminosity:grad_001"]
        , 40

    render: ->
        { theme_name, height } = @props
        theme = theme_definitions[theme_name]
        {text_color, background_color}
        { text_color, background_color} = theme = theme_definitions[theme_name]

        main1 =
            style:
                color: text_color
        svg1(
            defs
                theme.defs @state

            rect
                x: 0
                y: 0
                width: '100%'
                height: '100%'
                fill: background_color


            text
                x: '10%'
                y: '20%'
                fontSize: 0.03 * height
                # fill: text_color
                fill: theme.fill_001
                ,
                "blog"

            for key, idx in keychain
                our_size = .017
                our_sep = .018
                our_sep2 = 2.3
                our_x = "20%"

                do (key, idx) =>
                    meta = blog_entries(key).metadata
                    frag = key.split('/')[1].split('.')[0]
                    g null,
                        text
                            x: our_x
                            y: "#{17 + (idx * our_sep * @props.height)}%"
                            fontSize: our_size * @props.height
                            fill: text_color
                            cursor: 'pointer'
                            onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                            ,
                            "#{meta.title}"
                        text
                            x: our_x
                            y: "#{17 + our_sep2 + (idx * our_sep * @props.height)}%"
                            fontSize: our_size * @props.height * .65
                            cursor: 'pointer'
                            fill: text_color
                            onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                            ,
                            "created: #{meta.date_created.toDateString()}; updated: #{meta.date_updated.toDateString()}"
                        # text
                        #     x: our_x
                        #     y: "#{17 + (2 * our_sep2) + (idx * our_sep * @props.height)}%"
                        #     fontSize: our_size * @props.height *.65
                        #     fill: text_color
                        #     cursor: 'pointer'
                        #     onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                        #     ,
                        #     ""
                        text
                            x: our_x
                            y: "#{17 + (3 * our_sep2) + (idx * our_sep * @props.height)}%"
                            fontSize: our_size * @props.height * .75
                            fill: text_color
                            cursor: 'pointer'
                            onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                            ,
                            "#{meta.preview_text}  [...read on]"

            # TODO: can create filtering by tags, sorting by time, stuff like that.


            top_nav()
            bars_nav_001()




        )# -------------------------------------------
