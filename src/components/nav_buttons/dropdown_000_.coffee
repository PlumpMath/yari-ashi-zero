{_, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2} = require('../../boilerplate.coffee')

{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM

textArea = React.createFactory 'textArea'
filter = React.createFactory 'filter'
foreignObject = React.createFactory 'foreignObject'
feGaussianBlur = React.createFactory 'feGaussianBlur'
feImage = React.createFactory 'feImage'

module.exports = dropdown = rr

    rect_t : (s_rect) ->
        tMat = @props.tMat
        { width, height, x, y } = s_rect
        origin = vec2.transformMat3 vec2.create(), [x, y], tMat
        x: origin[0]
        y: origin[1]
        width: width * tMat[0]
        height: height * tMat[4]

    render : ->
        tMat = @props.tMat
        { x, y, width, height } = @rect_t
            x: 0
            y: 0
            width: 1
            height: 2
        svg
            width: '100%'
            height: '100%'
            ,
            rect
                width: width
                height: height
                x: x
                y: y
                fill: 'red'
                opacity: .3
            # a
            #     xlinkHref: 'https://twitter.com/yari_ashi_zero'
            #     xlinkShow: 'new'
            #     ,
            #     image
            #         x: x + (.15 * @props.tMat[0])
            #         y: y + (.15 * @props.tMat[4])
            #         width: .6 * @props.tMat[4]
            #         height: .6 * @props.tMat[4]
            #         xlinkHref: 'svgs/twitter.svg'
