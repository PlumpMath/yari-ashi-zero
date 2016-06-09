

module.exports = amateur = rr

    # getInitialState: ->
        # return {}
    render: ->
        main1 =
            style:
                color: 'grey'
        svg
            width: '100%'
            height: '100%'
        ,
            top_nav_000_container()
            # text
            #     x: '6%'
            #     y: '24%'
            #     fontSize: .03 * @props.height
            #     fill: 'darkgrey'
            #     ,
            #     "Amateur"
            foreignObject
                x: '6%'
                y: '14%'
                width: '80%'
                height: '60%'
                # style:
                #     background: 'blue'
                ,
                p
                    style:
                        # fontSize: .02 * @props.height
                        color: 'grey'
                    ,
                    "
Ideas page.  Idea for algorithmic music improvisation AI taking 'inspiration' in the form of (e.g. geospatial) data.


                    "
                h4 main1, "ideas stuff"
                ul main1,
                    li
                        style:
                            cursor: 'pointer'
                        onClick: -> browserHistory.push 'amateur/blog/terraforming'
                        ,
                        "Terraforming ideas"
                    li
                        style:
                            cursor: 'pointer'
                        onClick: -> browserHistory.push '/amateur/blog/ai_coltrane'
                    ,
                    "Algorithmic composition"
                p
                    style:
                        color: 'grey'
                    ,
                    "
Paragraph 2
                    "
