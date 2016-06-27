c = -> console.log.apply console, arguments

path = require 'path'
webpack = require 'webpack'
module.exports = config =
    # worker:
    #     output:
    #         filename: "hash.worker.js"
    #         chunkFilename: "[id].hash.worker.js"
    node:
        fs: "empty"
    context: __dirname
    cache: true
    debug: true
    entry:
        app: ['./src/app.coffee']
    stats:
        colors: on
        reasons: on
    module:
        # preLoaders: [
        #     {
        #         test: /\.js$/
        #         loader: "source-map-loader"
        #     }
        # ]
        loaders: [
            # {
            #     test: /\.glsl$/
            #     loader: 'webpack-glsl'
            # },
            # {
            #     test: /\.styl$/
            #     loader: 'style-loader!css-loader!stylus-loader'
            # },
            {
                test: /\.coffee$/
                loaders: ['coffee-loader']
            }
        ]
    externals:
        "react": "React",
        "react-dom": "ReactDOM"
    output:
        path: __dirname
        filename: "public/js/prod_app.js"

    plugins: [
        new webpack.DefinePlugin
            'process.env':
                NODE_ENV: '"production"'
            __CLIENT__: true
            __SERVER__: false
            __DEVELOPMENT__: false
            __DEVTOOLS__: false
    ]
