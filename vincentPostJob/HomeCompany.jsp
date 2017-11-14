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
	
	 <script>
      function validate() {
    	  
    	  	
          var xhttp = new XMLHttpRequest();
          xhttp.open("GET", "validateJobPost.jsp?title=" + document.jobForm.title.value + "&location=" + document.jobForm.location.value
        		  		+ "&deadline=" + document.jobForm.deadline.value, false);
          xhttp.send();
    	  if (xhttp.responseText.trim().length > 0) {
            document.getElementById("formerror").innerHTML = xhttp.responseText;
            return false;
          }
          return true;
      }
      
      function postJob(){
    	  	//console.log("cal obj: "  + document.jobForm.deadline.value);
    	 	 // alert("A new jop posted successfully!");
    	 	 //alert("hi1!");
    	 	 var title = document.jobForm.title.value;
    	 	//alert(title);
    	 	 var location = document.jobForm.location.value;
    	 	 
    	 	 //var deadline = document.querySelector('input[type="date"]').value.toDateString();
    	 	//var deadline = $('#deadline').val();
    	 	 var deadline = document.jobForm.deadline.value;
    	 	
    	     //alert(deadline);
    	 	 var type = $('input[name="type"]:checked').map(function() {
      			 return this.value;
    		}).get();
   	 	//alert(type);
   	 	var languages = $('#languages').val();
   	 	//alert(languages);
   	 	var description = $('#description').val();
   	 	//alert(description);
   	 	var major = document.jobForm.major.value;
   	 	//alert(major);
   	 	var degree = document.jobForm.degree.value;
   	 	//alert(degree);
   	 	var request = "/"+window.location.pathname.split("/")[1]+"/postingJobs?title=" + title + "&location=" + location + 
   	 				"&deadline=" + deadline + "&type=" + type + "&languages=" + languages + "&description=" + description +
   	 				"&major=" + major + "&degree=" + degree;
   	 	
   	 	//console.log("request: " + request);
   	 	//alert(request);
   	 	var xhttp = new XMLHttpRequest();
    	 	xhttp.open("GET", request , false);
    	 	 //alert(title);
          xhttp.send();
          
          alert("A new job has been posted!");
          return false;
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
        <form name = "jobForm" method ="POST" action = "HomeCompany.jsp" onsubmit = "return postJob()">
        <div id="formerror"></div>
        		<strong>Job Title:&nbsp<font color ="red">*</font> </strong>  
        		<input type ="text" name ="title" /> <br /><br />
        		<strong>Location:&nbsp<font color ="red">*</font> </strong>  
        		<input type ="text" name ="location" /> <br /><br />
        		<strong>Deadline:&nbsp<font color ="red">*</font> </strong>  
        		<input type ="date" name ="deadline" id = "deadline" /> <br /><br />
        		<strong>Type:&nbsp </strong>
        		<input type="checkbox" name="type" value="Full Time"> Full Time 
  			<input type="checkbox" name="type" value="Part Time"> Part Time 
  			<input type="checkbox" name="type" value="Internship"> Internship <br /><br/>
  			<strong>Languages:&nbsp </strong><br/>
  			<textarea id="languages" rows = "1" cols="50" type="text" placeholder="Please separate languages with commas " ></textarea><br/><br/>
  			<strong> Job Description</strong> <br />
			<textarea rows="4" cols="50" id ="description">
  			</textarea><br/> <br/>
  			<strong>Degree:&nbsp </strong>
  			<select name="degree"> 
  			<option value=""> Degree </option>
			<option value="bachelor">Bachelors</option>
			<option value="master">Masters</option>
			<option value="phd">PHD</option>
			</select>
			&nbsp&nbsp&nbsp
			<strong>Major:&nbsp </strong>
  			<select name="major"> 
  			<option value= ""> Major </option>
			<option value="cs">Computer Science</option>
			<option value="be">Biomedical Engineering</option>
			<option value="ce">Computer Engineering</option>
			<option value="ee">Electrical Engineering</option>
			</select>
			<br/><br/>
			 <input type="submit" name="submit" class="btn btn-dark btn-lg js-scroll-trigger" onclick="return validate();"  value="Submit" /> 
			 <input type="reset" name="reset" class="btn btn-dark btn-lg js-scroll-trigger" onclick="document.location.reload()" value="Cancel" /> 
  		</form>
        <br>
     
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