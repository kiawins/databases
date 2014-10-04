var mysql = require('mysql');
// var mysql = require('mysql'); ??????????
/* If the node mysql module is not found on your system, you may
 * need to do an "sudo npm install -g mysql". */

/* You'll need to fill the following out with your mysql username and password.
 * database: "chat" specifies that we're using the database called
 * "chat", which we created by running schema.sql.*/
var dbConnection = mysql.createConnection({
  user: "alexkia",
  password: "alexkia",
  database: "chat"
});

dbConnection.connect();
/* Now you can make queries to the Mysql database using the
 * dbConnection.query() method.
 * See https://github.com/felixge/node-mysql for more details about
 * using this module.*/




exports.findAllMessages = function(cb){
  console.log("db finding all messages");
  dbConnection.query('SELECT message FROM messagesTable', function(err, results){
    // if(err) throw err;
    console.log('results in the findAllMessages:', results);
    console.log('found all messages');
    cb(results);
  })
};

exports.findUser = function(username, cb){
  dbConnection.query('SELECT name FROM userTable WHERE name = ' + username, function(err, results){
    // if(err) console.log(err);
    console.log('inside findUser');
    console.log('results in the findUser:', results);
    //if no results, results = null
    //if results, give name
    cb(err, results);
  });
};

exports.saveUser = function(username, cb){
  query = "INSERT INTO userTable (name) VALUES ('" + username + "')";
  console.log(query);
  dbConnection.query(query, function(err, results){
    console.log('inside saveUser');
    console.log('results in the saveUser:', results);
    console.log('err in the saveUser:', err);
    cb(results);
  });
};

exports.saveMessage = function(message, userid, roomname, cb){
  console.log(message, userid, roomname);
  console.log("inside saving messages");
  query = "INSERT INTO messagesTable (message, user_id, room_id) VALUES ('" + message + "','" + userid + "','1');";
  dbConnection.query(query, function(err, results){
    if(err) throw err;
    console.log('results in the saveMessage:', results);
    console.log("just saved the message");
    cb(results);
  });
};

// dbConnection.end();
