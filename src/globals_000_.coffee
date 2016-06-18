

c = -> console.log.apply console, arguments

React = require 'react'
React_DOM = require 'react-dom'
_ = require 'lodash'
shortid = require 'shortid'
gl_mat = require 'gl-matrix'
request = require 'superagent'

mat3 = gl_mat.mat3
vec3 = gl_mat.vec3
vec2 = gl_mat.vec2

arq =
    mat3: mat3
    vec3: vec3
    vec2: vec2
    request: request
    gl_mat: gl_mat
    _: _
    React: React
    React_DOM: React_DOM
    rr: -> React.createFactory(React.createClass.apply(React, arguments))
    c: c
    shortid: shortid


for k, v of arq
    window[k] = v

dom_stuff = {p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM
for k, v of dom_stuff
    window[k] = v

for item in ['textArea', 'filter', 'foreignObject', 'feGaussianBlur', 'feImage', 'feOffset']
    window[item] = React.createFactory item

{ connect } = require 'react-redux' ; window.connect = connect
{ browserHistory } = require 'react-router' ; window.browserHistory = browserHistory


window.svg1 = ->
    svg
        width: '100%'
        height: "#{Math.pow(window.devicePixelRatio, 1.5) * 99.4}%"
        # style: fill: 'black'
        # style:
        #     overflow: 'hidden'
        # overflow: 'hidden'
        ,
        arguments

window.svg2 = ->
    svg
        width: '100%'
        height: "#{99.4}%"
        # style: fill: 'black'
        # style:
        #     overflow: 'hidden'
        # overflow: 'hidden'
        ,
        arguments

window.generic_container = require('./containers/generic_000_.coffee')
window.rc = -> React.createFactory.apply(React, arguments)
window.rc_generic = -> React.createFactory(generic_container.apply(generic_container, arguments))

window.bars_nav = rc_generic(require('./components/shared/bars_nav_000_.coffee'))

theme_constants = require './constants/theme_changes_.coffee'
for k, v of theme_constants
    window[k] = v


window.theme_definitions = require './themes/themes_000_.coffee'
