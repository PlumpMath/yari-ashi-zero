
top_nav = require '../components/top_nav_000_.coffee'

map_state_to_props_000 = (state, own_props) ->
    width = state.get 'viewport_width'
    height = state.get 'viewport_height'

    if width < height
        orientation = 'VERTICAL'
        smaller = width
        larger = height
    else
        orientation = 'HORIZONTAL'
        smaller = height
        larger = width

    transform_matrix_0 = [
        width, 0, 0,
        0, height, 0,
        1 / width, 1 / height, 1
    ]

    arq =
        location: state.get('routing').locationBeforeTransitions.pathname
        orientation: orientation
        larger: larger
        smaller: smaller
        width: width
        height: height
        t_mat: transform_matrix_0

    return arq

map_dispatch_to_props_000 = (dispatch, own_props) ->



    return {
    }

module.exports = top_nav_container = connect(map_state_to_props_000, map_dispatch_to_props_000)(top_nav)
