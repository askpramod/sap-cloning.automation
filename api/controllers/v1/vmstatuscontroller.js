const controller = {};
var connection = require('../../../dbconnection');

controller.insertVMStatusEvents = (req, res) => {
    connection.then(conn => {    
        var date = new Date();
        var sql = "INSERT INTO VMStatusEvents (ServerName, ServerIP, Event, Status, CreatedBy, CreatedDate)  VALUE(?,?,?,?,?,?)";
        var values  = [req.body.ServerName, req.body.ServerIP, req.body.Event, req.body.Status, req.body.CreatedBy,date];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("VM Status Events details have been added successfully.");
        })
    });
  };

  controller.getVMStatusEvents = (req, res) => {      
    connection.then(conn => {    
        conn.query('SELECT ServerName, ServerIP, Event, Status, CreatedBy, CreatedDate FROM VMStatusEvents') // Execute a query   
        .then(result => { 
            res.send(result);
        })
    });
};

module.exports = controller;