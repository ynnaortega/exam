const mysql = require('mysql');
const express = require('express');
const bodyParser = require('body-parser');
const app = express();
app.use(bodyParser.json());


//DATABASE CONNECTION
var dbconnection = mysql.createConnection({
    host: "localhost",
    user: "gates",
    password: "g@tes2009",
    database: "examdb"
  });

  
dbconnection.connect(function(err) {
    if (err) throw err;
    else console.log('Connected!');
});

//DISPLAY ALL USERS
app.get('/users', function (req, res) {
    dbconnection.query("SELECT * FROM examusers", function (err, result, fields) {
        if (err) throw err;
        res.send(result);
    });
  });

//DISPLAY SELECTED USERS
app.get('/users/:id', function (req, res) {
    dbconnection.query("SELECT * FROM examusers WHERE id = ?", [req.params.id], function (err, result, fields) {
        if (err) throw err;
        //res.send(result);
        if (result.length > 0)
        { res.send(result); }
        else
        { res.send("User does not exist."); }
        
    });
  });

//DELETE SELECTED USERS
app.delete('/users/:id', function (req, res) {
    dbconnection.query("DELETE FROM examusers WHERE id = ?", [req.params.id], function (err, result, fields) {
        if (err) throw err;
        res.send("User has been deleted!");
    });
  });

//INSERT USERS
app.post('/users/', function (req, res) {
    let xdata = req.body;
    var sql = "INSERT INTO examusers(username, address) VALUES (?, ?)";
    dbconnection.query(sql, [xdata.username, xdata.address], function (err, result, fields) {
        if (err) throw err;
        res.send("User has been added!");
    });
  });

//UPDATE USERS
app.put('/users/', function (req, res) {
    let xdata = req.body;
    var sql = "UPDATE examusers SET username = ?, address = ? WHERE id = ?";
    dbconnection.query(sql, [xdata.username, xdata.address, xdata.id], function (err, result, fields) {
        if (err) throw err;
        res.send("User has been updated!");
    });
  });


app.listen(3000);