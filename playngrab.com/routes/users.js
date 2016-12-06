var express = require('express');
var router = express.Router();
var path = require('path');
var dbconnection = require('.././database/databaseconnector.js');

/*
 * GET userlist.
 */

router.get('/data', function(req, res) {
    var data = dbconnection;
    var user_data = data.query("select * from users;",function(error,rows,fields) {
    if(!!error) {
      console.log("Error in query");
    }else {
       console.log("success");
       console.log(rows);
res.json(rows);
for(i=0;i<rows.length;i++) {
 var user = rows[i].Name;
     var password= rows[i].Firstname;

  console.log(user);
  console.log(password);
    }
}
});
});


module.exports = router;
