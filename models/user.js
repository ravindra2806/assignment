// User model
// inculing initial libraries

var Db = require('../config/db.js');
var Moment = require('moment');
var Path = require('path');
var Config = require('../config/config.js');
var md5 = require('md5');

  class User {
    
    constructor(){

    }
    // Function: getUser
    // Description: get user detail by user id
    // Parameter: uid, result
    // return: object
    getUser(uid, passwd) {
      var promiseObj = new Promise(function getUsersQuery(resolve, reject) {
        var passwdmd5 = md5(passwd);
        var query = "SELECT * ";
        query += "FROM users ";
        query += "WHERE (users.username = '" + uid + "' OR users.email = '" + uid + "') AND users.password='"+passwdmd5+"'";
        
        Db.query(query, function(err, user, fields) {
          if (err) {
            console.log(err);
            reject(err);
          }
          resolve(user);
        });
      });
      return promiseObj;
    }

    // Function: getAllUser
    // Description: get user detail
    // Parameter: null
    // return: object
    getAllUser(data) {
      var response = {"success":"0","msg":"","data":[]};
      var promiseObj = new Promise(function getUsersQuery(resolve, reject) {
        
        try {
          var query = "SELECT users.*,country.name country_name,country.id as country_id FROM users "
          query += "JOIN country ON country.id = users.country_id ";
          query += "GROUP BY users.id order by id DESC";
          Db.query(query, function(err, users, fields) {
            if (err) {
              console.log(err);
              response["msg"] = err;
              reject(response);
            } else {
              response["success"] = 1;
              response["data"] = users;
              resolve(response);
            }

          });
        } catch (e) {
          response["success"] = 0;
          response["msg"] = e;
          reject(response);
        }
      });
      return promiseObj;
    }

    // Function: getCountry
    // Description: getCountry value
    // Parameter: uid, result
    // return: object
    getCountry(value){
      var promiseObj = new Promise(function getUsersQuery(resolve, reject) {
        var query = "SELECT name as label, name as value FROM country ";
        query += 'WHERE name LIKE "%' + value + '%"';
        console.log(query);
        Db.query(query, function(err, user, fields) {
          if (err) {
            console.log(err);
            reject(err);
          }
          resolve(user);
        });
      });
      return promiseObj;
    }

    // Function: getSkills
    // Description: getSkills value
    // Parameter: uid, result
    // return: object
    getSkills(value){
      var promiseObj = new Promise(function getUsersQuery(resolve, reject) {
        var query = "SELECT name as label, name as value FROM skills ";
        query += 'WHERE name LIKE "%' + value + '%"';
        console.log(query);
        Db.query(query, function(err, user, fields) {
          if (err) {
            console.log(err);
            reject(err);
          }
          resolve(user);
        });
      });
      return promiseObj;
    }

    // Function: submit
    // Description: getSkills value
    // Parameter: uid, result
    // return: object
    submit(data){
      var response = {"success":0,"msg":"","data":[]};      
      var promiseObj = new Promise(function getUsersQuery(resolve, reject) {
        var query = "SELECT * FROM country where name = '"+data.country_id+"';SELECT * FROM users WHERE username = '"+data.username+"' OR email='"+data.email+"'";
        Db.query(query, function(err, country, fields) {
          if (err) {
            console.log(err);
            reject(err);
          }else{

            if(country[0].length==0){
              response.msg = 'Please select valid Country';
              resolve(response);
            }else if(country[1].length > 0){
              if(country[1][0].username==data.username){
                response.msg = 'Username already exist';
              }
              if(country[1][0].email==data.email){
                response.msg = 'Email already exist';
              }
              
              resolve(response);
            }else{
              var query = "INSERT INTO users SET username ='"+data.username+"', first_name = '"+data.first_name+"'";
              query += ",last_name='"+data.last_name+"', email='"+data.email+"', dob='"+data.dob+"'";
              query += ",password='"+md5(data.password)+"', country_id='"+country[0][0].id+"',skills='"+data.hidSkill+"'";
              console.log(query);
              Db.query(query, function(err, user, fields) {
                if (err) {
                  console.log(err);
                  reject(err);
                }else{
                  response.success = 1;
                  response.data = user;
                  resolve(response);
                }
                
              });
            }
            
          }
        });
        
      });
      return promiseObj;
    }    
  }

   
  
module.exports = User;
