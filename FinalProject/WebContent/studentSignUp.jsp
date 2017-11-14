<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
form {
    display: inline-block;
    text-align: center;
    align: center;
}
input {
    
    border: 1px solid green;
    border-radius: 4px;
}
select{
    border: 1px solid green;
    border-radius: 4px;
}
textarea{
   
    border: 1px solid green;
    border-radius: 10px;
    width: 95%;
    height: 50px;
}
button{
  background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style>
<script>
	function signup(){
		
		var fname = document.getElementById("fname").value;
		var lname = document.getElementById("lname").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		//alert(password);
		var degree = document.getElementById("Degree").value;
		//alert(degree);
		var major = document.getElementById("Major").value;
		//alert(major);
		var type = $('input[name="type"]:checked').map(function() {
   			 return this.value;
		}).get();
		//var type = document.querySelector('input[name="type"]:checked').value
		var languages = $('#languages').val();
		//alert(languages);
		var experience = $('#experience').val();
		//alert(experience);
		//console.log(fname + lname + email + password + degree + major + type + languages + experience);
		var xhttp = new XMLHttpRequest();
		var request = "StudentSignUp?fname=" + fname + "&lname=" + lname + "&email=" + email + "&password=" + password + "&degree=" + degree + "&major=" + major + "&type=" + type + "&languages=" + languages + "&experience=" + experience;
		xhttp.open("GET", request, false);
		xhttp.send();
		
		return false;
	}
</script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- Bootstrap Core CSS -->
	    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom Fonts -->
	    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	
	    <!-- Custom CSS -->
	    <link href="css/stylish-portfolio.css" rel="stylesheet">
	<title>Student Sign Up</title>

</head>

<body>
	<!-- Navigation -->
	<header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

 		<font size="6" color="Green">Student Sign Up</font> 
      </nav>
        
    </header>
    <br/>
	    <br/>
	    <br/>
	    <br/>
	    <br/>
	    <!-- need to change those later  -->
	    <!-- find a way to remove h1 tags  -->
	  <form id = "studentform" method="GET" onsubmit = "return signup();">
           <font size="5"  color="Green">First Name</font> <input align = "center"  type="text" placeholder="first name" id ="fname"> 
          <font size="5"  color="Green">Last Name</font>  <input  type="text" placeholder="last name" id = "lname"> </br> </br>
           
           <font size="5"  color="Green">Email</font>    <input  type="email" placeholder="email" id = "email" >
           <font size="5"  color="Green"> Password</font> <input type="password" placeholder="password" id = "password"> </br> </br>
          
           <font size="5"  color="Green">Degree</font>  
           <select id="Degree">
              <option value="freshman">Freshman        </option>
              <option value="sophomore">Sophomore       </option>
              <option value="junior">Junior</option>
              <option value="senior">Senior</option>
          </select>
          <font size="5"  color="Green">Major</font>  
           <select id="Major">
              <option value="CSCI">Computer Science</option>
              <option value="CSBA">Computer Science and Business</option>
              <option value="CECS">Computer Science and Engineering</option>
              <option value="EE">Electrical Engineering </option>
              <option value="ME">Mechanical Engineering</option>
              <option value="CE">Civil Engineering</option>
              <option value="ChemE">Chemical Engineering</option>
              
          </select>
          </br> </br>
           <font size="5" color="Green">Type</font> 
          <input type="checkbox" name="type" value="fullTime">  <font color="black">Full Time</font> 
          <input type="checkbox" name="type" value="partTime">  <font color="black">Part Time</font> 
          <input type="checkbox" name="type" value="internship"> <font color="black">Internship </font> 
          
          </br> </br>
          <font size="5" color="Green">Languages </font> 
          <textarea id="languages" placeholder="Please separate languages with commas " ></textarea>
          
          </br> </br>
          <font size="5" color="Green">Work Experience</font> 
          <textarea id="experience" placeholder="Please be as specific as possible: maximum 300 words"  ></textarea>
          
          </br> </br>
           <input  type="submit" value="Submit">
         </form>   
  
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/stylish-portfolio.js"></script>
</body>
</html>