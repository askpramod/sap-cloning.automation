const express = require('express');
//const connection = require('./dbconnection.js');
var app = express();
const bodyparser = require('body-parser');
const v1transportrequestroute = require('./api/routes/v1/transportrequestroute');
const v1giteventroute = require('./api/routes/v1/giteventroute');
const v1vmcloningroute = require('./api/routes/v1/vmcloningroute');
const v1vmstatusroute = require('./api/routes/v1/vmstatusroute'); 

app.use(bodyparser.json());

app.use('/v1/tr', v1transportrequestroute);
app.use('/v1/git', v1giteventroute);
app.use('/v1/vmclone', v1vmcloningroute);
app.use('/v1/vmstatus', v1vmstatusroute);

//connection.query("SELECT NOW()", (err, res) => {
//console.log(err, res);
//connection.end();
//});
app.listen(3000, () => console.log('Express server is runnig at port no : 3000'));
