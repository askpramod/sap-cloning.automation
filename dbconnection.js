var config = require('./config');
const pg = require(‘pg’);
const connection = new pg.Pool({
    host: config.database.host,
    user: config.database.user,
    password: config.database.password,
    port: config.database.port,
    database: config.database.db
});
module.exports = connection;
