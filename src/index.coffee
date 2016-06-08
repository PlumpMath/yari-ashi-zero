

{_, React, React_DOM, rr, c} = require('./boilerplate.coffee')

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
    home = React.createFactory require('./containers/home_000_.coffee')
    about = React.createFactory require('./containers/about_000_.coffee')
    blog = React.createFactory require('./containers/blog_000_.coffee')
    terraforming = React.createFactory require('./containers/blog/terraforming_000_.coffee')
    ai_coltrane = React.createFactory require('./containers/blog/AI_Coltrane_.coffee')
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
                        path: '/blog'
                        component: blog
                    Route
                        path: '/blog/terraforming'
                        component: terraforming
                    Route
                        path: '/blog/ai_coltrane'
                        component: ai_coltrane


    React_DOM.render index(), root
