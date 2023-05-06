<!DOCTYPE html>
<html>
<head>
  <title>Log In</title>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

h2 {text-align: center;}
h1 {text-align: center;}
p {text-align: center;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.signupbtn {
  padding: 14px 10px;
  background-color: #5a87fa;
}

/* Float cancel and signup buttons and add an equal width */
.signupbtn, .loginpbtn {
  float: left
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .signupbtn, .loginpbtn {
     width: 100%;
  }
}
</style>
<body>




<form action="home.php" style="border:1px solid #ccc" method="post">
  <?php if(!empty($err_msg)) : ?>
  <div class="alert alert-danger" role="alert"><?php echo $err_msg; ?></div>
  <?php endif ?>

  <div class="container">
  	<h2>Welcome to Online Exam Platform</h2>
    <h1>Log In</h1>
    <p>Please give your credentials to log in the system</p>
    <hr>
  

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter your email address" name="email" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter your password" name="psw" required>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a></p>

    <div class="clearfix">
      <button type="button" class="signupbtn" onclick="document.location='choose-role.php'">Do not have an Account?</button>
      
      <button type="submit" class="loginbtn" value="Log in">Log in</button>
    </div>
  </div>
</form>

</body>
</html>
