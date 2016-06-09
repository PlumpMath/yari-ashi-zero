
mid_nav_000_container = rc_generic(require('./amateur/mid_nav_000_.coffee'))
module.exports = amateur = rr

    # getInitialState: ->
        # return {}
    render: ->

        grad_000 = shortid() ; filter_000 = shortid()
        main1 =
            style:
                color: 'grey'
        svg1(
            defs
                filter
                    id: filter_000
                    feGaussianBlur
                        in: "SourceGraphic"
                        result: "blurOut"
                        stdDeviation: 5
                    feOffset
                        in: "blurOut"
                        result: "dropBlur"
                        dx: 3
                        dy: 4
                linearGradient
                    id: grad_000
                    stop
                        offset: '0%'
                        stopColor: 'hsl(33, 44%, 77%)'
                    stop
                        offset: '92%'
                        stopColor: 'hsl(280, 66%, 78%)'
                    # stop
                    #     offset:"98%"
                    #     stopColor:"orange"
            top_nav_000_container()
            mid_nav_000_container()
            rect
                x: 0
                y: .1 * @props.height
                width: '100%'
                height: .9 * @props.height
                fill: "url(##{grad_000})"
                filter: "url(##{filter_000})"
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

        )
