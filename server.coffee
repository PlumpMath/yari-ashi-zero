c = -> console.log.apply console, arguments
_ = require 'lodash'
express = require 'express'
app = express()
body_parser = require 'body-parser'
path = require 'path'
public_dir = __dirname + '/build'
app.use(body_parser.json())

if process.env.NODE_ENV is 'production'
    index = '/prod_index.html'
else
    index = '/dev_index.html'

app.get '/', (req, res) ->
    res.sendFile(path.join(public_dir, index))
app.get '/about', (req, res) ->
    res.sendFile(path.join(public_dir, index))
app.get '/blog', (req, res) ->
    res.sendFile(path.join(public_dir, index))
app.get '/blog/terraforming', (req, res) ->
    res.sendFile(path.join(public_dir, index))
app.get '/blog/ai_coltrane', (req, res) ->
    res.sendFile(path.join(public_dir, index))



app.use(express.static(public_dir))
port = process.env.PORT or 3000

app.listen port, ->
    c 'server listening on ', port
