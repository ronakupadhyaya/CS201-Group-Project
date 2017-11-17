<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Post a Job!</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">

  </head>

  <body>
   

   


   
    <!-- Callout -->
    <aside class="callout11">
      <div class="text-vertical-center">
        <h1>Fill in the job information</h1><br/>
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
			
			<strong>Major:&nbsp </strong>
  			<select name="major"> 
			<option value="cs">Computer Science</option>
			<option value="be">Biomedical Engineering</option>
			<option value="ce">Computer Engineering</option>
			<option value="ee">Electrical Engineering</option>
			</select>
			  <br>
			  
			 <!-- need to connect those buttons  -->
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