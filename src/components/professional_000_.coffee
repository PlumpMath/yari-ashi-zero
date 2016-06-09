portfolio = require('./professional/portfolio_000_.coffee')
module.exports = professional = rr
    render: ->
        grad_000 = shortid() ; filter_000 = shortid()
        svg1(
            # defs
            #     filter
            #         id: filter_000
            #         feGaussianBlur
            #             in: "SourceGraphic"
            #             result: "blurOut"
            #             stdDeviation: 1.8
            #         feOffset
            #             in: "blurOut"
            #             result: "dropBlur"
            #             dx: .3
            #             dy: 1.4
            #     linearGradient
            #         id: grad_000
            #         stop
            #             offset: '0%'
            #             stopColor: 'hsl(120, 90%, 20%)'
            #         stop
            #             offset: '40%'
            #             stopColor: 'hsl(220, 90%, 30%)'
            #         stop
            #             offset: '92%'
            #             stopColor: 'hsl(350, 90%, 80%)'
            top_nav_000_container()
            # rect
            #     x: 0
            #     y: .05 * @props.height
            #     width: '100%'
            #     height: .95 * @props.height
            #     fill: "url(##{grad_000})"
            #     filter: "url(##{filter_000})"
            # mid_nav_000_container()
            # text
            #     x: '6%'
            #     y: '24%'
            #     fontSize: .03 * @props.height
            #     fill: 'darkgrey'
            #     ,
            #     "Professional"
            portfolio @props

        )
