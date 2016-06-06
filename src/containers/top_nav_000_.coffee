
{_, c} = require('../boilerplate.coffee')

{ connect } = require 'react-redux'

top_nav = require '../components/top_nav_000_.coffee'



map_state_to_props_000 = (state, own_props) ->
    return {}

map_dispatch_to_props_000 = (dispatch, own_props) ->
    return {
    }

module.exports = top_nav_container = connect(map_state_to_props_000, map_dispatch_to_props_000)(top_nav)
