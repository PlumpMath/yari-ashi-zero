
{ SET_BOUNDING_RECT } = require '../constants/actions_000_.coffee'

set_bounding_rect = ({viewport_width, viewport_height}) ->
    return {
        type: SET_BOUNDING_RECT
        viewport_width
        viewport_height
    }

module.exports = { set_bounding_rect }
