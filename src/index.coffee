boilerplate = { _, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2 } = require './boilerplate.coffee'
for k, v of boilerplate
    window[k] = v

dom_stuff = {p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM
for k, v of dom_stuff
    window[k] = v

for item in ['textArea', 'filter', 'foreignObject', 'feGaussianBlur', 'feImage']
    window[item] = React.createFactory item

{ connect } = require 'react-redux' ; window.connect = connect
{ browserHistory } = require 'react-router' ; window.browserHistory = browserHistory

root = document.getElementById 'root'

Provider = React.createFactory require('react-redux').Provider
Immutable = require 'immutable'

{ Router: _Router, Route: _Route, IndexRoute: _IndexRoute, browserHistory } = require 'react-router'
{ syncHistoryWithStore } = require 'react-router-redux'

Router = React.createFactory _Router
Route = React.createFactory _Route

{ set_bounding_rect } = require './actions/bounding_client_rect_.coffee'

window.onload = =>
    { width, height } = root.getBoundingClientRect()
    # initial_state_pre = require('./store/initial_state/index.coffee')({width, height})
    # initial_state = Immutable.Map initial_state_pre
    #
    # store = require('./store/configure_store.coffee')({initial_state, initial_state_pre})

    initial_state = Immutable.Map
        routing: '/'
        # ui_state: HOME
        viewport_width: width
        viewport_height: height

    store = require('./store/configure_store.coffee')(initial_state)

    # can factor these out into helper file if make set_boundingRect pure.
    # { debounce, set_boundingRect } = require('./helpers/helpers_000_.coffee')


    debounce = (func, wait, immediate) ->
        timeout = 'scoped here'
        ->
            context = @
            args = arguments
            later = ->
                timeout = null
                if not(immediate) then func.apply(context, args)
            callNow = immediate and not(timeout)
            clearTimeout(timeout)
            timeout = setTimeout(later, wait)
            if callNow then func.apply(context, args)

    set_boundingRect = ->
        { width, height } = root.getBoundingClientRect()
        arq =
            viewport_width: width
            viewport_height: height
        store.dispatch(set_bounding_rect(arq))

    window.onresize = debounce(set_boundingRect, 200, false)

    history = syncHistoryWithStore(browserHistory, store,
        selectLocationState: (state)->
            return state.get('routing')
    )

    # minesweeper = React.createFactory require('./containers/minesweeper_000_.coffee')

    window.svg1 = ->
        svg
            width: '100%'
            height: '100%'
            ,
            arguments

    window.top_nav_000_container = React.createFactory require('./containers/top_nav_000_.coffee')


    home = React.createFactory require('./containers/home_000_.coffee')
    about = React.createFactory require('./containers/about_000_.coffee')


    window.portfolio = require './components/professional/portfolio_000_.coffee'
    professional = React.createFactory require('./containers/professional_000_.coffee')
    amateur = React.createFactory require('./containers/amateur_000_.coffee')

    # blog = React.createFactory require('./containers/blog_000_.coffee')
    window.terraforming = require './components/amateur/blog/terraforming_000_.coffee'
    terraforming_container = React.createFactory require('./containers/amateur/blog/terraforming_000_.coffee')

    window.ai_coltrane = require './components/amateur/blog/AI_Coltrane_.coffee'
    ai_coltrane_container = React.createFactory require('./containers/amateur/blog/AI_Coltrane_.coffee')
    index = rr
        render: ->
            Provider
                store: store
                ,
                Router
                    history: history
                    ,
                    Route
                        path: '/'
                        component: home


                    Route
                        path: '/about'
                        component: about



                    Route
                        path: '/professional'
                        component: professional
                    Route
                        path: 'professional/portfolio'




                    Route
                        path: '/amateur'
                        component: amateur
                    Route
                        path: 'amateur/blog/terraforming'
                        component: terraforming_container
                    Route
                        path: 'amateur/blog/ai_coltrane'
                        component: ai_coltrane_container



    React_DOM.render index(), root
