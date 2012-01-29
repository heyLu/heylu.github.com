#!/usr/bin/env coffee
static = require('node-static')
http   = require('http')

# A little preview printing press of mine.
#
# Start it (requires node.js + coffeescript) and it's serve up the files
# in the current directory (`npm install node-static` might be helpful,
# though).

server = new static.Server()

http.createServer((request, response) ->
	request.addListener 'end', ->
		server.serve(request, response)
).listen(8080)
