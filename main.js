//  OpenShift sample Node application
var express = require("express"),
	app     = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

var port = process.env.APP_PORT || 9090
var routes = require("./node_modules/fabric8-hypothesis-measurement-api/src/api/routes.js")

routes(app, process.env.ROUTE_PATH + process.env.ROUTE_PREFIX)

//Setting up server
var server = app.listen(port, function () {
	var port = server.address().port
	console.log("App now running on port", port)
})

module.exports = server
