// Users controller
// including initial libraries
var Config = require('../config/config.js');
var User = require('../models/user.js');
var Path = require('path');
var userModel = new User();

  var sessions = {}; // Current session information
  
  class Users {

    constructor(){

    }

    getIndex(req, res, next) {
      if (req.session.user) {
        var data = {"role_id": req.session.user.user_role_id}
        rolessoModel.getActionsByRole(data).then(function onSuccess(result) {
            res.render('user.html', {
              version: Math.floor(Math.random() * 100000),
              permission: result
            });
          }, function onError(err) {
            Logger.logging().error("Failed to get ldap user ", err);
          });
  
  
      } else {
        //req.session.user.user_role_id
        res.render('login.html', {
          version: Math.floor(Math.random() * 100000),
          host: req.headers.host,
          title: Config.school.title
        });
      }
    }
  
  
    // Function: getAllUser
    // Description: get list User data
    // Parameter: post
    // return: string
    getAllUser(req, res, next) {
      userModel.getAllUser(req.body).then(function onSuccess(result) {
        res.send(result);
      }, function onError(err) {
        Logger.logging().error('Failed to load users ', err);
      });
    }
      
    // Function: getCountry
    // Description: getCountry
    // Parameter: post
    // return: string
     getCountry(req,res, next){
      console.log(req.query.term);
      userModel.getCountry(req.query.term).then(function onSuccess(user) {
        res.send(user);
        res.end();
      }, function onError(err) {
        console.log('country error ');
        res.send(err);
        res.end();
      });
    }
    // Function: getSkills
    // Description: getSkills
    // Parameter: post
    // return: string
    getSkills(req,res, next){
      //console.log(req.query.term);
      userModel.getSkills(req.query.term).then(function onSuccess(user) {
        res.send(user);
        res.end();
      }, function onError(err) {
        console.log('getSkills error ');
        res.send(err);
        res.end();
      });
    }
  
    // Function: getSkills
    // Description: getSkills
    // Parameter: post
    // return: string
    submit(req,res, next){      
      userModel.submit(req.body).then(function onSuccess(user) {
        res.send(user);
        res.end();
      }, function onError(err) {
        console.log('submit error ');
        res.send(err);
        res.end();
      });
    } 
    // Function: redirectToLogin
    // Description: redirect to login page
    // Parameter: request, response and next
    // Return:
    redirectToLogin(req, res, next) {
        if(!req.session.user){
          console.log('0000');
          res.redirect('/?err=1');
        }
        
      
    }
    // Function : index
    // Description: renders main html page
    // Parameter: saveFloorId
    // Return:
    index(req, res, next) {
      var self = this;      
      if (req.session.user) {
        userModel.getAllUser().then(function onSuccess(result) {
          //console.log("======",result);
          res.render('dashboard.html', {
            users: result
          });
        }, function onError(err) {
          console.log('error in render ');
        });
      }else{
        res.render('login.html', {
        });
      }
  
    }
    // Function: login
    // Description: renders login page if not logged-in else home page
    // Parameter: req.session.user
    // Return:
    login(req, res, next) {
      var self = this;
      if (req.session.user) {
        var queryString = "";
        if (req.session.queryString) {
          queryString = req.session.queryString;
        }
        res.redirect("/" + queryString);
        req.session.queryString = null;
      } else if(req.body.uid && req.body.passwd){
        console.log('llllllllllllllllllll');
        userModel.getUser(req.body.uid, req.body.passwd).then(function onSuccess(user) {
          if (user && Object.keys(user).length > 0) {
            var userInfo = user[0];
            var password = (req.body.passwd) ?  req.body.passwd : "";
            req.session.user = userInfo;
            self.index(req, res, next);
          } else {
            self.redirectToLogin(req, res, next);
          }
        }, function onError(err) {
          console.log("Failed to login user ");
        });
        
      }else{
        this.redirectToLogin(req, res, next);
      }
    }
  
    // Function: logout
    // Description: destroys session and sends to login page.
    // Parameter: req.session
    // Return:
    logout(req, res, next) {
      req.session = null;
      console.log('logout----------------');
      res.redirect('/');
      res.end();
    }

  }
  
module.exports = Users;