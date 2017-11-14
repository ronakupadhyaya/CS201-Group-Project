<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.card {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 300px;
    margin: auto;
    text-align: center;
}

.title {
    color: grey;
    font-size: 18px;
}

button {
    border: none;
    outline: 0;
    display: inline-block;
    padding: 8px;
    color: white;
    background-color: #000;
    text-align: center;
    cursor: pointer;
    width: 100%;
    font-size: 18px;
}

a {
    text-decoration: none;
    font-size: 22px;
    color: black;
}

button:hover, a:hover {
    opacity: 0.7;
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
<title>Internship Page</title>
</head>
<body>
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%for(int i=0; i<3; i++){ %>
	<div class="card">
		  <img src="portfolio-1.jpg" alt="John" style="width:100%">
		  <h1>John Doe</h1>
		  <p class="title">CEO & Founder, Example</p>
		  <p>Harvard University</p>
		  <a href="#"><i class="fa fa-dribbble"></i></a> 
		  <a href="#"><i class="fa fa-twitter"></i></a> 
		  <a href="#"><i class="fa fa-linkedin"></i></a> 
		  <a href="#"><i class="fa fa-facebook"></i></a> 
		  <p><button>Add </button></p>
	</div>
<%} %>
</body>
</html>