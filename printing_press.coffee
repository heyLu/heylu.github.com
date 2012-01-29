#!/usr/bin/env coffee
static = require('node-static')
http   = require('http')

# A little preview printing press of mine.
#
# Start it (requires node.js + coffeescript) and it's serve up the files
# in the current directory (`npm install node-static` might be helpful,
# though).

# Optionally accept a directory to serve...
if(process.argv.length > 2)
	server = new static.Server(process.argv[2])
else
	server = new static.Server()

http.createServer((request, response) ->
	request.addListener 'end', ->
		server.serve(request, response)
).listen(8080)
