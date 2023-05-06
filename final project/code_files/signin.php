<?php 
//first of all we need to connect to the database  
 require_once('DBConnect.php');

//we nned to check if the inout in the form textfields are not empty

if (isset($_Post['email']) && isset($_Post['id']) && isset($_Post['psw'])){
	//write the query to check if this username, student ID, and password exists in our database
	$u = $_Post['email'];
	$p = $_Post['psw'];
	$sql = "SELECT * FROM user WHERE email = ''
}
	

?>