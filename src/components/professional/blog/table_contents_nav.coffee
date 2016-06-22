blog_entries = require.context('./entries', false)
keychain = blog_entries.keys()
chain2 =
module.exports = professional_blog = rr
    getInitialState: ->
        filter: null



    render: ->
        { theme, height } = @props
        { text_color, background_color} = theme_definitions[theme]

        main1 =
            style:
                color: text_color
        svg1(
            # rect
            #     x: 0
            #     y: 0
            #     width: '100%'
            #     height: '100%'
            #     fill: background_color
            #
            # text
            #     x: '10%'
            #     y: '20%'
            #     fontSize: 0.03 * height
            #     fill: text_color
            #     ,
            #     "blog"
            our_size = .013
            our_sep = .02
            our_sep2 = 1.4
            our_x = "2%"

            g null,
                text
                    x: our_x
                    y: "13%"
                    fontSize: our_size * height
                    fill: text_color
                    cursor: 'pointer'
                    onClick: -> browserHistory.push "/professional/blog"
                    ,
                    "blog home"

            for key, idx in keychain


                do (key, idx) =>
                    meta = blog_entries(key).metadata
                    frag = key.split('/')[1].split('.')[0]
                    g null,
                        text
                            x: our_x
                            y: "#{17 + (idx * our_sep * @props.height)}%"
                            fontSize: our_size * 1.44 * @props.height
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
                        # text
                        #     x: our_x
                        #     y: "#{17 + (2 * our_sep2) + (idx * our_sep * @props.height)}%"
                        #     fontSize: our_size * @props.height
                        #     fill: text_color
                        #     cursor: 'pointer'
                        #     onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                        #     ,
                        #     "#{meta.preview_text}  [...read on]"
                        foreignObject
                            x: our_x
                            y: "#{17 + (2 * our_sep2) + (idx * our_sep * @props.height)}%"
                            width: '10%'
                            height: '20%'
                            cursor: 'pointer'
                            onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                            ,
                            p
                                # onClick: -> browserHistory.push "/professional/blog/entries/#{frag}"
                                style:
                                    fontSize: our_size * height
                                    color: text_color
                                ,
                                "#{meta.preview_text}  [...read on]"

            # TODO: can create filtering by tags, sorting by time, stuff like that.



            # @props.children




        )# -------------------------------------------
