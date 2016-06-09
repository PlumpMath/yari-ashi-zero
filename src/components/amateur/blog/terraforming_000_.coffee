module.exports = terraforming = rr
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
            #     fontSize: .06 * @props.height
            #     fill: 'darkgrey'
            #     ,
            #     "bloggish"
            foreignObject
                x: '6%'
                y: '14%'
                width: '80%'
                height: '60%'
                # style:
                #     background: 'blue'
                ,

                h3 main1, "terraforming"

                p main1,

                    "
Stuff about this silly set of ideas on terraforming the earth.
                    "
