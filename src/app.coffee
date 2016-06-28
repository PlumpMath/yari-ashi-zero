
require('./globals_000_.coffee')
root = document.getElementById 'root'

Immutable = require 'immutable'

{ syncHistoryWithStore } = require 'react-router-redux'

{ DEFAULT_THEME, THEME_ZERO, THEME_ONE } = require './constants/theme_changes_.coffee'

{ set_bounding_rect } = require './actions/bounding_client_rect_.coffee'

window.onload = =>
    rectangle = root.getBoundingClientRect()
    { width, height } = rectangle

    initial_state = Immutable.Map
        theme_name: THEME_ONE
        routing: '/'
        # ui_state: HOME
        viewport_width: width
        viewport_height: height

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
        rectangle = root.getBoundingClientRect()
        { width, height } = rectangle
        arq =
            viewport_width: width
            viewport_height: height
        store.dispatch(set_bounding_rect(arq))

    window.onresize = debounce(set_boundingRect, 200, false)

    store = require('./store/configure_store.coffee')(initial_state)
    history = syncHistoryWithStore(browserHistory, store,
        selectLocationState: (state)->
            return state.get('routing')
    )

    routes= require('./routes.coffee')({store, history})
    React_DOM.render routes(), root
