
{ change_to_default_theme, change_to_light_theme } = require '../actions/theme_changes_000_.coffee'

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
    theme: state.get 'theme'
    location: state.get('routing').locationBeforeTransitions.pathname
    orientation: orientation
    larger: larger
    smaller: smaller
    width: width
    height: height
    t_mat: transform_matrix

mapDispatchToProps = (dispatch, ownProps) ->
    if ownProps.toggle_bars_nav?
        return {
            toggle_bars_nav: ownProps.toggle_bars_nav
            change_to_default_theme: -> dispatch(change_to_default_theme())
            change_to_light_theme: -> dispatch(change_to_light_theme())

        }
    return {
        change_to_default_theme: -> dispatch(change_to_default_theme())
        change_to_light_theme: -> dispatch(change_to_light_theme())

    }



module.exports = (component) -> connect(mapStateToProps, mapDispatchToProps)(component)
