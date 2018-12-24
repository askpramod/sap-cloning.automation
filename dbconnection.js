var mariadb = require('mariadb');
var config = require('./config');

var connection = mariadb
.createConnection({
    host: config.database.host,
    user: config.database.user,
    password: config.database.password,
    port: config.database.port, 
    database: config.database.db
});

module.exports = connection;
