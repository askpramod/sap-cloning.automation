const controller = {};
var connection = require('../../../dbconnection');

controller.insertVMCloningEvents = (req, res) => {
    connection.then(conn => {    
        var date = new Date();
        var sql = "INSERT INTO VMCloningEvents (SenderIP, Event, Status, CreatedBy, CreatedDate)  VALUE(?,?,?,?,?)";
        var values  = [req.body.SenderIP,req.body.Event,req.body.Status,req.body.CreatedBy,date];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("VM Cloning details have been added successfully.");
        })
    });
  };


  controller.getVMCloningEvents = (req, res) => {      
    connection.then(conn => {    
        conn.query('SELECT SenderIP,Event,Status,CreatedBy,CreatedDate FROM VMCloningEvents') // Execute a query   
        .then(result => { 
            res.send(result);
        })
    });
};


module.exports = controller;