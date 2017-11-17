<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
form {
    display: inline-block;
    text-align: center;4
    align: center;
}
input {
    
    border: 1px solid blue;
    border-radius: 4px;
}
select{
    border: 1px solid blue;
    border-radius: 4px;
}
textarea{
   
    border: 1px solid blue;
    border-radius: 10px;
    width: 95%;
    height: 50px;
}
button{
  background-color: #0000ff;
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
	    <!-- <link href="css/style" rel="stylesheet"> -->
	<title>Company Sign Up</title>
	<script>
      function validate() {
    	  console.log("Here");
          var xhttp = new XMLHttpRequest();
          xhttp.open("GET", "validateCompanySignIn.jsp?cname=" + document.myform.cname.value + "&email=" + document.myform.email.value
        		  + "&password=" + document.myform.password.value + "&website=" + document.myform.website.value
        		  + "&compdescription=" + document.myform.compdescription.value, false);
          xhttp.send();
    	  if (xhttp.responseText.trim().length > 0) {
            document.getElementById("formerror").innerHTML = xhttp.responseText;
            return false;
          }
    	  window.location.href="HomeCompany.jsp";
      }
    </script>
</head>

<body>
	<!-- Navigation -->
	<header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

 		<font size="6" color="Blue">Company Sign Up</font> 
      </nav>
        
    </header>
    <br/>
	    <br/>
	    <br/>
	    <br/>
	    <br/>
	  <form name="companyform" action="HomeCompany.jsp" method="POST" onsubmit="return validate();">
           <div id="formerror"></div>
           <font size="5"  color="Blue">Company Name</font> <input align = "center" type="text" placeholder="company name" name ="cname"> </br> </br>
           
           <font size="5"  color="Blue">Email</font>    <input type="email" placeholder="email" name = "email" >
           <font size="5"  color="Blue"> Password</font> <input type="password" placeholder="password" name = "password"> </br> </br>
           
           <font size="5"  color="Blue">Website</font> <input align = "center" type="text" placeholder="website" name = "website">
          
          </br> </br>
          <font size="5" color="Blue">Company Description</font> 
          <textarea id="description" name="compdescription" placeholder="Please include the mission of your company in 300 words or less" ></textarea>
          <input type="submit" value="Sumbmit" />
          </br> </br>
           <!-- <button  type="button" onclick="alert('Company Home Page Here!')" >Submit</button> -->
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