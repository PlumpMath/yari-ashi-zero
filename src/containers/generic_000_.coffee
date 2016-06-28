
{ change_to_default_theme, change_to_light_theme, toggle_theme } = require '../actions/theme_changes_000_.coffee'

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
    theme_name: state.get 'theme_name'
    location: state.get('routing').locationBeforeTransitions.pathname
    orientation: orientation
    larger: larger
    smaller: smaller
    width: width
    height: height
    t_mat: transform_matrix

mapDispatchToProps = (dispatch, ownProps) ->
    props = {
        change_to_default_theme: -> dispatch(change_to_default_theme())
        change_to_light_theme: -> dispatch(change_to_light_theme())
        toggle_theme: -> dispatch(toggle_theme())
    }
    # if ownProps.mouse_over?
    #     _.assign props, {mouse_over: ownProps.mouse_over}
    # if ownProps.toggle_bars_nav?
    #     _.assign props, { toggle_bars_nav: ownProps.toggle_bars_nav }
    _.assign props, ownProps

    return props



module.exports = (component) -> connect(mapStateToProps, mapDispatchToProps)(component)
