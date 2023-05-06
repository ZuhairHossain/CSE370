<html lang="en">
  <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>   <!--Viewer dimention and scaling-->
      <meta name="description" content="Online Exam System"/>
      <meta name="author" content="Group 05"/>
      <title> Home </title>
    
      <!-- core CSS -->
      <link href="css/bootstrap.min.css" rel="stylesheet"/>
      <link href="css/font-awesome.min.css" rel="stylesheet"/>
      <link href="css/animate.min.css" rel="stylesheet"/>
      <link href="css/main.css" rel="stylesheet"/> 

	<style>
		.center{
			 text-align:center;
			 padding:95px;
		}
		.link{
			width: 35%;
			background-color: white; 
			border-radius: 05px;
            color: black; 
            padding: 5px 10px; 
            text-align: center; 
            display: inline-block; 
            font-size: 20px; 
            margin: 10px 30px; 
            cursor: pointer; 
		}
	</style>
	
  </head>

  <body> 
     <!-- following section is used for creating the menubar in the webpage -->
	<section id="header">
		<div class="row">  
			<div class="col-md-2" style="font-size: 30px;color:#F8F9F9;"> Faculty View </div>
			<div class="col-md-10" style="text-align: right"> 
				<a href="Home.php"> Home </a> 
				<a href="log-in.php" style="margin-left: 20px;"> Log Out </a> 
			</div>
		</div>
	</section>
	
	<section id = "section1">
		<div class="title"> Welcome to Faculty View!! </div>
		<div class="center">
			<button class="link"><a href="Exam_List.php">Show Exam</a></button><br>
			<button class="link"><a href="Add_Exam.php">Add Exam</a></button><br>
			<button class="link"><a href="Show_Qs.php">Show Question</a></button><br>
			<button class="link"><a href="Add_Qs.php">Add Question</a></button><br>
			<button class="link"><a href="Remove_Qs.php">Remove Question</a></button><br>
		</div>
	
	</section>

	
	<!----- Footer ----->
	<section id="footer"> 
	
	</section>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/wow.min.js"></script>
	
  </body> 
</html>