<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!-- Bootstrap Core CSS -->
	    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom Fonts -->
	    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	
	    <!-- Custom CSS -->
	    <link href="css/stylish-portfolio.css" rel="stylesheet">
	<title>Home Page</title>
</head>
<body>
<!-- Navigation -->
	<header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

 		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Profile</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="#">Sign Out</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <br/>
    <br/>


    <!-- Callout -->
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>Post a New Job</h1><br/>
        <form name = "jobForm" method ="POST" action ="jobsubmitted.jsp" onsubmit="return validate();">
        		<strong>Job Title:&nbsp<font color ="red">*</font> </strong>
        		<input type ="text" name ="title" /> <br /><br />
        		<strong>Location:&nbsp<font color ="red">*</font> </strong>
        		<input type ="text" name ="location" /> <br /><br />
        		<strong>Type:&nbsp </strong>
        		<input type="checkbox" name="type" value="male"> Full Time 
  			<input type="checkbox" name="type" value="female"> Part Time 
  			<input type="checkbox" name="type" value="other"> Internship <br /><br/>
  			
  			<strong> Job Description</strong> <br />
			<textarea rows="4" cols="50" name ="description">
  			</textarea><br/> <br/>
  			<strong>Degree:&nbsp </strong>
  			<select name="degree"> 
			<option value="bachelor">Bachelors</option>
			<option value="master">Masters</option>
			<option value="phd">PHD</option>
			</select>
			&nbsp&nbsp&nbsp
			<strong>Major:&nbsp </strong>
  			<select name="major"> 
			<option value="cs">Computer Science</option>
			<option value="be">Biomedical Engineering</option>
			<option value="ce">Computer Engineering</option>
			<option value="ee">Electrical Engineering</option>
			</select>
			
  		</form>
        <br>
        <a href="#about" class="btn btn-dark btn-lg js-scroll-trigger">Submit</a>
        <a href="#about" class="btn btn-dark btn-lg js-scroll-trigger">Cancel</a>
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