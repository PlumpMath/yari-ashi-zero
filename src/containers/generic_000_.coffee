
mapStateToProps = (state, ownProps) ->
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

    #return
    location: state.get('routing').locationBeforeTransitions.pathname
    orientation: orientation
    larger: larger
    smaller: smaller
    width: width
    height: height
    t_mat: transform_matrix

mapDispatchToProps = (dispatch, ownProps) ->
    return {}

module.exports = (component) -> connect(mapStateToProps, mapDispatchToProps)(component)
