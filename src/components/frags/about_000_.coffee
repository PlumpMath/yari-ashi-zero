mid_nav_000_container = rc_generic(require('./about/mid_nav_000_.coffee'))
module.exports = about = rr
    render: ->
        svg
            width: '100%'
            height: '100%'
        ,
            top_nav_000_container()
            mid_nav_000_container()
            text
                x: '6%'
                y: '24%'
                fontSize: .03 * @props.height
                fill: 'darkgrey'
                ,
                "Wylie - Уаилий - וואיליא"
            a
                xlinkHref: 'https://github.com/kulicuu'
                xlinkShow: 'new'
                ,
                image
                    x: '8%'
                    y: '28%'
                    width: .05 * @props.height
                    height: .05 * @props.height
                    xlinkHref: 'svgs/github.svg'
            a
                xlinkHref: 'https://twitter.com/yari_ashi_zero'
                xlinkShow: 'new'
                ,
                image
                    x: '16%'
                    y: '28%'
                    width: .05 * @props.height
                    height: .05 * @props.height
                    xlinkHref: 'svgs/twitter.svg'

            a
                xlinkHref: 'https://yadi.sk/i/9kZfPzhAsKdQk'
                xlinkShow: 'new'
                ,
                image
                    x: '24%'
                    y: '28%'
                    width: .05 * @props.height
                    height: .05 * @props.height
                    xlinkHref: 'svgs/file-pdf-o.svg'


            foreignObject
                x: '20%'
                y: '40%'
                width: '50%'
                height: '50%'
                ,
                p
                    style:
                        # fontSize: .02 * @props.height
                        color: 'grey'
                    ,
                    "
...

                    "
            # image
            #     opacity: .4
            #     x: .768 * @props.width
            #     y: .234 * @props.height
            #     width: .2 * @props.width
            #     height: .2 * @props.height
            #     xlinkHref:@state.portrait
