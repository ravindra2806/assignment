var config = require('./config');
var mysql      = require('mysql');

var pool = mysql.createPool({
  host     : config.db.host,
  user     : config.db.userName,
  password : config.db.password,
  database : config.db.dbName,
  dateStrings: true,
  multipleStatements: true
});
module.exports	= pool;
