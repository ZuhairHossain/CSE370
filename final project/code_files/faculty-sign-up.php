<!DOCTYPE html>
<html>

<head>
  <title>Faculty Sign Up</title>
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

<form action="faculty-registration.php" style="border:1px solid #ccc" method="post">
  <div class="container">
  	<h2>Welcome to Online Exam Platform</h2>
    <h1>Faculty Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="Name"><b>Name</b></label>
    <input type="text" placeholder="Enter your name" name="name" required>
    
    <label for="email"><b>Email Address</b></label>
    <input type="text" placeholder="Enter your email address" name="email" required>
    
    <label for="Id"><b>ID</b></label>
    <input type="text" placeholder="Enter your ID" name="Id" required>
    

    <label for="initial"><b>Faculty Initial</b></label>
    <input type="text" placeholder="Enter your initial name [only three Alphabet in Capital]" name="initial" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter your password" name="psw" required>
    
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Sign Up </button>
      <button onclick="document.location='log-in.php'">Already Have an account?</button>
      <!--<button type="submit" class="loginbtn">Log in</button> -->
    </div>
  </div>
</form>
</body>
</html>
