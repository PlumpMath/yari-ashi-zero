{_, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2} = require('../../boilerplate.coffee')

{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM
{browserHistory} = require 'react-router'
textArea = React.createFactory 'textArea'
filter = React.createFactory 'filter'
foreignObject = React.createFactory 'foreignObject'
feGaussianBlur = React.createFactory 'feGaussianBlur'
feImage = React.createFactory 'feImage'

font_awesome = require 'react-fontawesome'

top_nav = React.createFactory require('../../containers/top_nav_000_.coffee')

module.exports = boilerplate = rr

    render: ->
        main1 =
            style:
                color: 'grey'
        svg
            width: '100%'
            height: '100%'
        ,
            top_nav()
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
