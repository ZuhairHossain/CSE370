<?php 

require_once('DBConnect.php');


if(isset($_POST['email']) && isset($_POST['psw'])){
	// write the query to check if this username and password exists in our database
	$u = $_POST['email'];
	$p = $_POST['psw'];
	$sql = "SELECT * FROM student WHERE email = '$u' AND password = '$p'";
	
	//Execute the query 
	$result = mysqli_query($conn, $sql);
	
	//check if it returns an empty set
	if(mysqli_num_rows($result) !=0 ){
	
		//echo "LET HIM ENTER";
		header("Location: student_home.php");
	}
	else{
		$sql = "SELECT * FROM faculty WHERE email = '$u' AND password = '$p'";
		$result = mysqli_query($conn, $sql);
		if(mysqli_num_rows($result) !=0 ){
			header("Location: faculty_home.php");
		}
		else
			header("Location: log-in.php");
	}	
}

?>