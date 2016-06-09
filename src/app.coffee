
require('./globals_000_.coffee')
root = document.getElementById 'root'


Immutable = require 'immutable'



{ syncHistoryWithStore } = require 'react-router-redux'



{ set_bounding_rect } = require './actions/bounding_client_rect_.coffee'

window.onload = =>
    { width, height } = root.getBoundingClientRect()

    initial_state = Immutable.Map
        routing: '/'
        # ui_state: HOME
        viewport_width: width
        viewport_height: height



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


    store = require('./store/configure_store.coffee')(initial_state)
    history = syncHistoryWithStore(browserHistory, store,
        selectLocationState: (state)->
            return state.get('routing')
    )

    # minesweeper = React.createFactory require('./containers/minesweeper_000_.coffee')



    routes= require('./routes.coffee')({store, history})



    React_DOM.render routes(), root
