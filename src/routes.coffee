
Provider = React.createFactory require('react-redux').Provider
{ Router: _Router, Route: _Route, IndexRoute: _IndexRoute, browserHistory } = require 'react-router'
Router = React.createFactory _Router
Route = React.createFactory _Route

generic = require('./containers/generic_000_.coffee')

window.rc = -> React.createFactory.apply(React, arguments)
window.rc_generic = -> React.createFactory(generic.apply(generic, arguments))

window.top_nav_000_container = rc_generic(require('./components/top_nav_000_.coffee'))
# window.mid_nav_000_container = rc_generic(require('./components/mid_nav_000_.coffee'))


home = rc_generic(require('./components/home_000_.coffee'))
about = rc_generic(require('./components/about_000_.coffee'))
professional = rc_generic(require('./components/professional_000_.coffee'))
amateur = rc_generic(require('./components/amateur_000_.coffee'))

window.terraforming = require './components/amateur/blog/terraforming_000_.coffee'
terraforming = React.createFactory require('./containers/amateur/blog/terraforming_000_.coffee')
ai_coltrane = rc_generic(require('./components/amateur/blog/AI_Coltrane_.coffee'))


module.exports = index = ({store, history})->
    rr
        render: ->
            Provider
                store: store
                ,
                Router
                    history: history
                    ,
                    Route
                        path: '/'
                        component: home


                    Route
                        path: '/about'
                        component: about



                    Route
                        path: '/professional'
                        component: professional
                    # Route
                    #     path: 'professional/portfolio'




                    Route
                        path: '/amateur'
                        component: amateur
                    Route
                        path: 'amateur/blog/terraforming'
                        component: terraforming
                    Route
                        path: 'amateur/blog/ai_coltrane'
                        component: ai_coltrane
