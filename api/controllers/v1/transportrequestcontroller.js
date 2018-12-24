const controller = {};
var connection = require('../../../dbconnection');

/* To get the status of TRs
Route :
1. /tr : All the TRs of any server status will come in response
2. /tr?'tr=<TR Num> : Fetch the particular TR status on all servers
3. /tr?'tr=<TR Num>&servername=<server name>' : Fetch the particular TR status on a particular server
*/
controller.getStatus = (req, res) => {
    connection.then(conn => {    
        var trNum = req.query.tr;            
            var serverName = req.query.servername;
            var query = 'SELECT TransportRequestNo, ServerName, Status, CreatedBy FROM TransportRequests ';
            if(trNum != undefined)
            {
                query = query + ' Where TransportRequestNo = ' + '"' +trNum + '"';
            }
            else
            {
                query = query + ' Where 1 = 1 ';
            }
            if(serverName != undefined)
            {
                query = query + ' AND ServerName = ' + '"' +serverName + '"';
            }
            else
            {
                query = query + ' AND 1 = 1 ';
            }
            conn.query(query) // Execute a query                                                                                                                                
                .then(result => {                                                                                                                                         
                    res.send(result); 
                })
            
    });     
};

/* Insert TR's status on a particular server
*/
controller.insertStatus = (req, res) => {
    connection.then(conn => {    
        var date = new Date();
        var sql = "INSERT INTO TransportRequests (TransportRequestNo, ServerName, Status, CreatedBy, CreatedDate)  VALUE(?,?,?,?,?)";
        var values  = [req.body.TransportRequestNo,req.body.ServerName,req.body.Status,req.body.CreatedBy,date];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("Transport Request details has been added successfully");
        })
    });
  };

  /* To update the TR's status on a particular server
TODO: functionality
*/
  controller.updateStatus = (req, res) => {
    
  };
  

  /* To delete the TR of a particular server
TODO: functionality
*/
  controller.delete = (req, res) => {
   
  };

  /* To get the last TR Number
*/
controller.getTRLastNumber = (req, res) => {
    connection.then(conn => {    
        conn.query('SELECT TRKORR, LASTNUM FROM E070L WHERE LASTNUM="TRKORR"') // Execute a query   
        .then(result => { 
            res.send(result);
        })
    });   
};

controller.insertTRLastNumber = (req, res) => {
    connection.then(conn => {    
        var sql = "CALL usp_InsertTransportRequestE070L(?, ?)";
        var values  = [req.body.TRKORR,req.body.LASTNUM];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("Transport Request details has been added successfully");
        })
    });          
  };

  controller.getTRLastNum = (req, res) => {      
        connection.then(conn => {    
            conn.query('SELECT TRKORR, LASTNUM FROM TransportRequestLastNum WHERE LASTNUM="TRKORR"') // Execute a query   
            .then(result => { 
                res.send(result);
            })
        });
    };

controller.insertTRLastNum = (req, res) => {
    connection.then(conn => {    
        var sql = "CALL usp_InsertTransportRequestLastNum(?, ?)";
        var values  = [req.body.TRKORR,req.body.LASTNUM];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("Transport Request details has been added successfully");
        })
    });       
  };

  /*
    Insert TR events
  */
  controller.insertTREvents = (req, res) => {
    connection.then(conn => {    
        var date = new Date();
        var sql = "INSERT INTO TransportRequestEvents (TRNumber, PRNumber, SenderIP, Event, Status, CreatedBy, CreatedDate)  VALUE(?,?,?,?,?,?,?)";
        var values  = [req.body.TRNumber,req.body.PRNumber, req.body.SenderIP,req.body.Event,req.body.Status,req.body.CreatedBy,date];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("Transport Request event details have been added successfully.");
        })
    });       
  };

  /*
    Get the TR events
  */
  controller.getTREvents = (req, res) => {      
    connection.then(conn => {    
        conn.query('SELECT TRNumber, PRNumber, SenderIP, Event, Status, CreatedBy, CreatedDate FROM TransportRequestEvents') // Execute a query   
        .then(result => { 
            res.send(result);
        })
    });
};

module.exports = controller;
