var mysql = require('mysql');

/* If the node mysql module is not found on your system, you may
 * need to do an "sudo npm install -g mysql". */

/* You'll need to fill the following out with your mysql username and password.
 * database: "chat" specifies that we're using the database called
 * "chat", which we created by running schema.sql.*/
var dbConnection = mysql.createConnection({
  user: "adamike",
  password: "password",
  database: "chatbox"
});

dbConnection.connect();
/* Now you can make queries to the Mysql database using the
 * dbConnection.query() method.
 * See https://github.com/felixge/node-mysql for more details about
 * using this module.*/




exports.findAllMessages = function(cb){
  var queryString = 'SELECT message FROM messages;';
  dbConnection.query(queryString, cb);
};

exports.findUser = function(username, cb){
  console.log('Got to findUser');
  var queryString = 'SELECT username FROM users WHERE username = ' + username +';';
  dbConnection.query(queryString, cb);
};

exports.saveUser = function(username, cb){
  console.log('Got to saveUser with', username);
  var queryString = "INSERT into users (username) value ('" + username + "');";
  var queryStringg = 'SELECT * FROM users;';
  dbConnection.query(queryString, function(err,res){console.log('res1',res);});
  dbConnection.query(queryStringg, function (err,res) {
    console.log('bigtest',err,res);
  });
};

exports.saveMessage = function(message, userid, roomname, cb){
  console.log('Got to saveMessage');
  var queryString = 'INSERT into messages (username, message, roomname) values (' + username + ', ' + message +', ' + roomname + ');';
  dbConnection.query(queryString, cb);
};
