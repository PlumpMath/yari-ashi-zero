
Provider = React.createFactory require('react-redux').Provider
{ Router: _Router, Route: _Route, IndexRoute: _IndexRoute, browserHistory } = require 'react-router'
Router = React.createFactory _Router
Route = React.createFactory _Route

home = rc_generic(require('./components/home/index.coffee'))
# home_001 = rc_generic(require('./components_home_001_.coffee'))
# about = rc_generic(require('./components/about_000_.coffee'))
professional = rc_generic(require('./components/professional/index.coffee'))
professional_blog = rc_generic(require('./components/professional/blog/index.coffee'))
professional_portfolio = rc_generic(require('./components/professional/portfolio/index.coffee'))
amateur = rc_generic(require('./components/amateur/index.coffee'))

# TODO figure out a way to automate this process with an fs function and a sensible protocol
# in other words the routes would be iterated out inside the router.

professional_articles = rc_generic(require('./components/professional/articles/index.coffee'))

terraforming = rc_generic(require('./components/amateur/articles/terraforming_000_.coffee'))
ai_coltrane = rc_generic(require('./components/amateur/articles/AI_Coltrane_.coffee'))


articles_list_000 = require.context('./components/professional/blog/entries/', false, /.*/)
# c 'articles_list', articles_list_000
keys = articles_list_000.keys()
# c 'keys', keys

arq = {}

for key in articles_list_000.keys()
    arq[key.split('/')[1].split('.')[0]] = rc_generic(articles_list_000.resolve(key))


entries = for key in articles_list_000.keys()
    path: "/professional/blog/entries/#{key.split('/')[1].split('.')[0]}"
    component: rc_generic(articles_list_000(key))

routes =
    # path: '/'
    # component: home
    childRoutes: [
        {path: '/', component: home},
        { path: 'professional', component: professional }
        { path: 'amateur', component: amateur }
        { path: 'professional/blog', component: professional_blog }
    ]

routes.childRoutes = routes.childRoutes.concat entries



module.exports = index = ({store, history})->
    rr
        render: ->
            Provider
                store: store
                ,
                Router
                    history: history
                    routes: routes


                    # ,
                    # Route
                    #     path: '/'
                    #     component: home
                    #
                    #
                    #
                    #
                    # # rayy
                    #
                    #
                    #
                    #
                    # Route
                    #     path: '/professional'
                    #     component: professional
                    #
                    # Route
                    #     path: '/professional/blog'
                    #     component: professional_blog
                    #
                    #
                    # Route
                    #     path: '/professional/articles'
                    #     component: professional_articles
                    #
                    # Route
                    #     path: '/professional/portfolio'
                    #     component: professional_portfolio
                    # # Route
                    # #     path: 'professional/portfolio'
                    #
                    #
                    #
                    #
                    # Route
                    #     path: '/amateur'
                    #     component: amateur
                    # Route
                    #     path: 'amateur/articles/terraforming'
                    #     component: terraforming
                    # Route
                    #     path: 'amateur/articles/ai_coltrane'
                    #     component: ai_coltrane
