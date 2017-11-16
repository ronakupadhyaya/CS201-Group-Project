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
   
    <aside class="callout">
      <div class="text-vertical-center">
        <h1>Please Log In </h1><br/>
        <form name = "jobForm" method ="POST" action ="InternshipPageNew.jsp" onsubmit="return validate();">
        		<strong>User Name<font color ="red">*</font> </strong>
        		<input type ="text" name ="email" /> <br /><br />
        		<strong>Password<font color ="red">*</font> </strong>
        		<input type ="text" name ="location" /> <br /><br />
        		<strong>Type:&nbsp </strong>
        		<input type="checkbox" name="type" value="male"> Student 
  			<input type="checkbox" name="type" value="female"> Company<br /><br/>
  			
  			
  		
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