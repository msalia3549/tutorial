var express = require('express');
var router = express.Router();
var path = require('path');
var dbconnection = require('.././database/databaseconnector.js');

/*
 * GET userlist.
 */

router.post('/register_api', function(req, res) {
  var register_post_data = req.body;
  var data = dbconnection;
  var reg_insert_data = {};
  reg_insert_data.alias = register_post_data.alias;
  reg_insert_data.password = register_post_data.password;
  reg_insert_data.firstname = register_post_data.firstname;
  reg_insert_data.lastname = register_post_data.lastname;
  reg_insert_data.mobile = register_post_data.mobile;
  reg_insert_data.email_id = register_post_data.email_id;
  reg_insert_data.address = register_post_data.address;
  reg_insert_data.city = register_post_data.city;
  
  var data = dbconnection;
  var user_data = data.query('INSERT INTO players SET ?', reg_insert_data, function(err,res){
    if(err) throw err;

  });
  res.statusMessage = "Processed the request";
  res.status(200).end();
});

module.exports = router;
