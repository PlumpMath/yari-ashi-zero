c = -> console.log.apply console, arguments
_ = require 'lodash'
express = require 'express'
app = express()
body_parser = require 'body-parser'
path = require 'path'
public_dir = __dirname + '/public'
# app.use(body_parser.json())

if process.env.NODE_ENV is 'production'
    index = '/prod_index.html'
else
    index = '/dev_index.html'


# app.use '/js', path.join(public_dir, '/js')

app.use '/js', express.static(path.join(public_dir, '/js'))

app.use '/images', express.static(path.join(public_dir, '/images'))


app.use '/svgs', express.static(path.join(public_dir, '/svgs'))

app.all '/*', (req, res, next) ->
    res.sendFile path.join(public_dir, index)







app.use(express.static(public_dir))

if process.env.PORT
    port = process.env.PORT
else if process.env.NODE_ENV is 'production'
    port = 4444
else
    port = 3333
# port = process.env.PORT or 3333

app.listen port, ->
    c 'server listening on ', port
