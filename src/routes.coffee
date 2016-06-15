
Provider = React.createFactory require('react-redux').Provider
{ Router: _Router, Route: _Route, IndexRoute: _IndexRoute, browserHistory } = require 'react-router'
Router = React.createFactory _Router
Route = React.createFactory _Route



window.top_nav_000_container = rc_generic(require('./components/top_nav_000_.coffee'))
home = rc_generic(require('./components/home/home_000_.coffee'))
# home_001 = rc_generic(require('./components_home_001_.coffee'))
about = rc_generic(require('./components/about_000_.coffee'))
professional = rc_generic(require('./components/professional/index.coffee'))
amateur = rc_generic(require('./components/amateur/index.coffee'))

terraforming = rc_generic(require('./components/amateur/articles/terraforming_000_.coffee'))
ai_coltrane = rc_generic(require('./components/amateur/articles/AI_Coltrane_.coffee'))


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
                        path: 'amateur/articles/terraforming'
                        component: terraforming
                    Route
                        path: 'amateur/articles/ai_coltrane'
                        component: ai_coltrane
