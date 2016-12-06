var express = require('express');
var router = express.Router();
var path = require('path');
var dbconnection = require('.././database/databaseconnector.js');

/*
 * GET userlist.
 */

router.post('/login_api', function(req, res) {
  var login_post_data = req.body;
  var login_query = {};
  var res_stauts,records,user_row,query_alias,query_password,query_alias,query_password;

  login_query_alias = login_post_data.alias;
  /*db connecttion*/ 
  var data = dbconnection;
  var login_query = data.query('SELECT * FROM players WHERE alias = ?', login_query_alias,function(err, rows) {
     /*result and error handler*/ 
    if (err) {
      console.log("dsfsdf");
    } 
    else if (rows.length) { 
      console.log('Query ran succesfully');
      result = rows;
      records = JSON.stringify(rows);
      user_row = JSON.parse(records);
      query_alias = user_row[0].alias;
      query_password = user_row[0].password;
      query_alias = user_row[0].alias;
      query_password = user_row[0].password;
      if(query_alias == login_post_data.alias && query_password == login_post_data.password) {
        res_status = "success";
        res.send(res_status);
      }
      else {
        res_status = "failed";
        res.send(res_status);
      }
    }
    else {
      console.log("Query didn't return any results.");
      res_status = "unregistered user";
      res.send(res_status);
    }
  });
});

module.exports = router;
