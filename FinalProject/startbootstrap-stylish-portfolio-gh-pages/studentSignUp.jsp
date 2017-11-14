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
    
    border: 1px solid black;
    border-radius: 4px;
}
select{
    border: 1px solid black;
    border-radius: 4px;
}
textarea{
   
    border: 1px solid black;
    border-radius: 10px;
    width: 95%;
    height: 50px;
}
button{
  background-color: black; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style>
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
	     <aside class="callout22">
	       <div class="text-vertical-center">
	  <form >
           <font size="5"  color="Black">First Name</font> <input align = "center"  type="text" placeholder="first name" name ="fname"> 
          <font size="5"  color="Black">Last Name</font>  <input  type="text" placeholder="last name" name = "lname"> </br> </br>
           
           <font size="5"  color="Black">Email</font>    <input  type="email" placeholder="email" name = "email" >
           <font size="5"  color="Black"> Password</font> <input type="password" placeholder="password" name = "password"> </br> </br>
          
           <font size="5"  color="Black">Degree</font>  
           <select name="Degree">
              <option value="freshman">Freshman        </option>
              <option value="sophomore">Sophomore       </option>
              <option value="junior">Junior</option>
              <option value="senior">Senior</option>
          </select>
          <font size="5"  color="Black">Major</font>  
           <select name="Major">
              <option value="CSCI">Computer Science</option>
              <option value="CSBA">Computer Science and Business</option>
              <option value="CECS">Computer Science and Engineering</option>
              <option value="EE">Electrical Engineering </option>
              <option value="ME">Mechanical Engineering</option>
              <option value="CE">Civil Engineering</option>
              <option value="ChemE">Chemical Engineering</option>
              
          </select>
          </br> </br>
           <font size="5" color="Black">Type</font> 
          <input type="radio" name="type" value="fullTime">  <font color="black">Full Time</font> 
          <input type="radio" name="type" value="partTime">  <font color="black">Part Time</font> 
          <input type="radio" name="type" value="internship"> <font color="black">Internship </font> 
          
          </br> </br>
          <font size="5" color="Black">Languages </font> 
          <textarea id="description" name="languages" placeholder="Please separate languages with commas " ></textarea>
          
          </br> </br>
          <font size="5" color="Black">Work Experiance</font> 
          <textarea id="description" name="experiance" placeholder="Please be as specific as possible: maximum 300 words"  ></textarea>
          
          </br> </br>
           <br>
        <!-- need to connect those buttons | also need to validate users input  -->
        <a class="btn btn-dark btn-lg js-scroll-trigger"><input type="submit" value="Submit"></a>
        <a href="#about" class="btn btn-dark btn-lg js-scroll-trigger"><input type="reset" value="Reset"></a>
           </form>
          </div>
       </aside>

    
  

    
             
  
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