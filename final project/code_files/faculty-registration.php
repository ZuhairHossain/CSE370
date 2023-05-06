<?php 

require_once('DBConnect.php');

$name = $_POST['name'];
$email = $_POST['email'];
$id = $_POST['Id'];
$initial = $_POST['initial'];
$password = $_POST['psw'];
$repeat_password = $_POST['psw-repeat'];

$q = "SELECT * FROM  faculty WHERE email ='$email' && password = '$password' &&  std_id ='$id' ";

$result = mysqli_query($conn, $q);

$num = mysqli_num_rows($result);

if ($num == 1) {
	
	header("Location: faculty-sign-up.php");
}

else{
	$qy = "INSERT INTO `faculty` (`faculty_id`, `name`, `email`, `password`, `initial`) VALUES ('$id', '$name', '$email', '$password', '$initial')";
	mysqli_query($conn, $qy);
	header("Location: faculty_home.php");
}

?>