// routes
// inculing initial libraries
var Users = require('./controllers/users'); 
userObj = new Users();

module.exports = {
  routing: function(app) {
    app.get('/', function(req, res, next) { 
        userObj.index(req, res, next);
    });

    app.post("/login", function(req, res, next) { 
        userObj.login(req, res, next);
    });

    app.get('/logout', function(req, res, next) { 
        userObj.logout(req, res, next);
    });

    app.get("/users/index", function(req, res, next) { 
        userObj.getIndex(req, res, next);
    });

    app.post('/users/getAllUser', function(req, res, next) {
        userObj.getAllUser(req, res, next);
    });    
    app.get('/users/getcountry', function(req, res, next) {
        userObj.getCountry(req, res, next);
    });
    app.get('/users/getskills', function(req, res, next) {
        userObj.getSkills(req, res, next);
    });
    app.post('/users/submit', function(req, res, next) {
        
        userObj.submit(req, res, next);
    });

    
    

  }
}
