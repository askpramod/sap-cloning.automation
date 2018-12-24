const controller = {};
var connection = require('../../../dbconnection');

controller.insertGitEvents = (req, res) => {
    connection.then(conn => {    
        var date = new Date();
        var sql = "INSERT INTO GitEvents (RepositoryName, BranchName, GitTag, Event, Status, CreatedBy, CreatedDate)  VALUE(?,?,?,?,?,?,?)";
        var values  = [req.body.RepositoryName, req.body.BranchName, req.body.GitTag, req.body.Event, req.body.Status, req.body.CreatedBy,date];
        conn.query(sql,values, function(err,res){
            if(err) throw err;
            else {                    
            }
         }).then(result => { 
            res.send("Git Events details have been added successfully.");
        })
    });
  };


  controller.getGitEvents = (req, res) => {      
    connection.then(conn => {    
        conn.query('SELECT RepositoryName, BranchName, GitTag, Event, Status, CreatedBy, CreatedDate FROM GitEvents') // Execute a query   
        .then(result => { 
            res.send(result);
        })
    });
};

module.exports = controller;