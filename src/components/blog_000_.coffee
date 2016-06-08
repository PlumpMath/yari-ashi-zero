{_, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2} = require('../boilerplate.coffee')

{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM
{browserHistory} = require 'react-router'
textArea = React.createFactory 'textArea'
filter = React.createFactory 'filter'
foreignObject = React.createFactory 'foreignObject'
feGaussianBlur = React.createFactory 'feGaussianBlur'
feImage = React.createFactory 'feImage'

font_awesome = require 'react-fontawesome'

top_nav = React.createFactory require('../containers/top_nav_000_.coffee')

module.exports = about = rr

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
                        onClick: -> browserHistory.push '/blog/terraforming'
                        ,
                        "Terraforming ideas"
                    li
                        style:
                            cursor: 'pointer'
                        onClick: -> browserHistory.push '/blog/ai_coltrane'
                    ,
                    "Algorithmic composition"
                p
                    style:
                        color: 'grey'
                    ,
                    "
Paragraph 2
                    "
