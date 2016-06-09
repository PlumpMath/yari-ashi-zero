# terraforming = require '../../components/amateur/blog/terraforming_000_.coffee'

# { nav_home, nav_about } = require '../actions/proto_001_.coffee'

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

    transform_matrix = [
        width, 0, 0,
        0, height, 0,
        1 / width, 1 / height, 1
    ]

    arq =
        orientation: orientation
        larger: larger
        smaller: smaller
        width: width
        height: height
        t_mat: transform_matrix

    return arq

map_dispatch_to_props_000 = (dispatch, own_props) ->
    return {}

module.exports = blog_container = connect(map_state_to_props_000, map_dispatch_to_props_000)(terraforming)
