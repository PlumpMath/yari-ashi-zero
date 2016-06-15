{ CHANGE_TO_DEFAULT_THEME, CHANGE_TO_LIGHT_THEME, CHANGE_TO_SOME_OTHER_THEME } = require '../constants/theme_changes_.coffee'

change_to_default_theme = ->
    type: CHANGE_TO_DEFAULT_THEME

change_to_light_theme = ->
    c 'changing'
    type: CHANGE_TO_LIGHT_THEME

module.exports = { change_to_default_theme, change_to_light_theme }
