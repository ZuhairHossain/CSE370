<?php 

require_once('DBConnect.php');

$name = $_POST['name'];
$email = $_POST['email'];
$id = $_POST['Id'];
$major = $_POST['major'];
$password = $_POST['psw'];
$repeat_password = $_POST['psw-repeat'];

$q = "SELECT * FROM  student WHERE email ='$email' && password = '$password' &&  std_id ='$id' ";

$result = mysqli_query($conn, $q);

$num = mysqli_num_rows($result);

if ($num == 1) {
	
	header("Location: student-sign-up.php");
}

else{
	$qy = "INSERT INTO `student` (`std_id`, `name`, `email`, `password`, `major`) VALUES ('$id', '$name', '$email', '$password', '$major')";
	mysqli_query($conn, $qy);
	header("Location: student_home.php");
}

?>