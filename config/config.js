var config = {};

//database configuration
config.db = {};
config.db.host = '127.0.0.1';
config.db.userName = 'root';
config.db.password = 'root';
config.db.dbName = 'assessment';

config.invalidUser = 'Please enter valid email and password.';
config.permissionErrorUser = "You don't have permission for login.";

//Port Assignment configuration
config.port = {};
config.port.myport = 10000;

//define error messages
config.error = {};
config.error.Error401 = 'Unauthorized access';

module.exports = config;
