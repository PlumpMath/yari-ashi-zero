

{ combineReducers } = require 'redux-immutable'

# {
#     CHANGE_TO_DEFAULT_THEME, CHANGE_TO_LIGHT_THEME, CHANGE_TO_SOME_OTHER_THEME, LIGHT_THEME, DEFAULT_THEME, TOGGLE_THEME
# } = require '../constants/theme_changes_.coffee'

module.exports = (initial_state) ->

    routeReducer = require './routeReducer.coffee'

    {viewport_x, viewport_y, viewport_height, viewport_width} = require './boundingClientRect.coffee'

    theme_name = (prev_state = initial_state, action) ->
        if action.type is TOGGLE_THEME
            switch prev_state
                when THEME_ZERO
                    return THEME_ONE
                when THEME_ONE
                    return THEME_ZERO
                # when THEME_TWO
                #     return THEME_ZERO
        else
            return prev_state


    # theme = (prev_state = initial_state, action) ->
    #     if action.type is CHANGE_TO_DEFAULT_THEME
    #         return DEFAULT_THEME
    #     else if action.type is CHANGE_TO_LIGHT_THEME
    #         return LIGHT_THEME
    #     else
    #         return prev_state

    return combineReducers {
        theme_name
        viewport_width
        viewport_height
        routing: routeReducer
    }
