{_, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2} = require('../boilerplate.coffee')

{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM

textArea = React.createFactory 'textArea'
filter = React.createFactory 'filter'
foreignObject = React.createFactory 'foreignObject'
feGaussianBlur = React.createFactory 'feGaussianBlur'
feImage = React.createFactory 'feImage'
font_awesome = require 'react-fontawesome'
awesome = React.createFactory(font_awesome)


top_nav = React.createFactory require('../containers/top_nav_000_.coffee')

module.exports = about = rr

    getInitialState: ->
        portrait: "images/2016-06-07-153816.jpg"

    render: ->
        svg
            width: '100%'
            height: '100%'
        ,
            top_nav()
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
