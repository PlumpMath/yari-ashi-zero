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

set_boundingRect = (root, store) ->
    { width, height } = root.getBoundingClientRect()
    arq =
        viewport_width: width
        viewport_height: height
    store.dispatch(set_bounding_rect(arq))


module.exports = { debounce, set_boundingRect }
