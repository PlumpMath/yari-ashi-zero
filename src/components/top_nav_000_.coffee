{_, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2} = require('../boilerplate.coffee')
{browserHistory} = require 'react-router'
{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, ellipse, pattern} = React.DOM

filter = React.createFactory 'filter'
foreignObject = React.createFactory 'foreignObject'
feGaussianBlur = React.createFactory 'feGaussianBlur'
feImage = React.createFactory 'feImage'

button_000 = require './nav_buttons/button_000_.coffee'
dropdown_000 = require './nav_buttons/dropdown_000_.coffee'
module.exports = nav_bar_top = rr

    getInitialState: ->
        show_dropdown_0: false

    render: ->
        tMat = @props.t_mat

        height = @props.height
        svg
            width: '100%'
            height: '100%'
        ,
            rect
                x: '0%'
                y: '0%'
                width: '20%'
                height: '10%'
                fill: 'white'
                opacity: if @props.location is '/' then .7 else .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                # onClick: @props.on_home_click
                ,
            text
                x: '2%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .14
                fill: 'black'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/'
                ,
                "HOME"
            rect
                x: '20%'
                y: '0%'
                width: '20%'
                height: '10%'
                fill: 'white'
                opacity: if @props.location is '/about' then .7 else .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/about'
                # onClick: @props.on_about_click
            text
                x: '22%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .14
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/about'
                ,
                "ABOUT"
            rect
                x: '40%'
                y: '0%'
                width: '20%'
                height: '10%'
                fill: 'white'
                opacity: if @props.location is '/blog' then .7 else .2
                cursor: 'pointer'
                onClick:-> browserHistory.push '/blog'
            text
                x: '42%'
                y: '7%'
                'font-family': 'Sans'
                fontSize: @props.height * .05
                textLength: @props.width * .14
                fill: 'grey'
                cursor: 'pointer'
                onClick:-> browserHistory.push '/blog'
                ,
                "BLOG"
            # rect
            #     x: '60%'
            #     y: '0%'
            #     width: '20%'
            #     height: '10%'
            #     fill: 'white'
            #     opacity: .5
            rect
                x: '80%'
                y: '0%'
                width: '20%'
                height: '10%'
                fill: 'white'
                opacity: .5
                cursor: 'pointer'
                # onClick: @props.router_on_zelda_click
                # onClick:-> browserHistory.push '/zelda'
                ,
            j_Mat = [
                .2, 0, 0,
                0, .1, 0,
                .6 * @props.width, 0, 1
            ]
            kMat = mat3.multiply mat3.create(), j_Mat, @props.t_mat
            button_000
                tMat: kMat
                show_dropdown: => @setState {show_dropdown_0: true}
                hide_dropdown: => @setState {show_dropdown_0: false}
            j_Mat_0 = [
                .2, 0, 0,
                0, .1, 0,
                .6 * @props.width, .1 * @props.height, 1
            ]
            if @state.show_dropdown_0
                kMat_0 = mat3.multiply mat3.create(), j_Mat_0, @props.t_mat
                dropdown_000
                    tMat: kMat_0
