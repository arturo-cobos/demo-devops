const express = require('express');
const app = express();

app.use(express.static(__dirname + '/public'));

app.get('/', function (req, res) {
	return res.sendFile(__dirname + '/public/index.html');
});

app.get('/*', function (req, res) {
	return res.redirect('/');
});

//exportar aplicación apra servirla desde el servidor.
module.exports =app;