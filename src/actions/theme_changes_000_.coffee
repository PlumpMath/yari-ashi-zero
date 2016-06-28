{ CHANGE_TO_DEFAULT_THEME, CHANGE_TO_LIGHT_THEME, CHANGE_TO_SOME_OTHER_THEME, TOGGLE_THEME } = require '../constants/theme_changes_.coffee'

toggle_theme = ->
    type: TOGGLE_THEME

change_to_default_theme = ->
    type: CHANGE_TO_DEFAULT_THEME

change_to_light_theme = ->
    type: CHANGE_TO_LIGHT_THEME

module.exports = {
    change_to_default_theme, change_to_light_theme, toggle_theme
}
