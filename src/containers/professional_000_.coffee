

{_, c} = require('../boilerplate.coffee')

{ connect } = require 'react-redux'

# proto_comp = require '../components/proto_comp_000_.coffee'
professional = require '../components/professional_000_.coffee'

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

module.exports = professional_container = connect(mapStateToProps, mapDispatchToProps)(professional)
