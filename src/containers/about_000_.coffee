about = require '../components/about_000_.coffee'

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

    arq =
        orientation: orientation
        larger: larger
        smaller: smaller
        width: width
        height: height
        t_mat: transform_matrix

    return arq

mapDispatchToProps = (dispatch, ownProps) ->
    return {

    }

module.exports = about_container = connect(mapStateToProps, mapDispatchToProps)(about)
