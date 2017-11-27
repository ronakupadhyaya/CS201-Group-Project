<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body style="background-color:#F0F8FF;">
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
			
			a {
			    text-decoration: none;
			    font-size: 22px;
			    color: black;
			}
		</style>
		<head>
	      <meta charset="UTF-8"/>
	      <title>Job Search &amp; Job Posting App | InternSConnect</title>
	      <meta name="description" content="Hire top talent smarter, faster, and easier. Create a profile to post jobs for free. Switch matches candidates including software developers, marketers, sales people, product managers, designers, and more."/>
	      <meta name="keywords" content="Candidates, talent, team, hiring, business development, data science, design, finance, marketing, operations, product management, recruitng, sales, software development"/>
	      <link rel="apple-touch-icon" sizes="76x76" href="https://www.switchapp.com/favicons/apple-touch-icon.png"/>
	      <link rel="icon" type="image/png" href="https://www.switchapp.com/favicons/favicon-32x32.png" sizes="32x32"/>
	      <link rel="icon" type="image/png" href="https://www.switchapp.com/favicons/favicon-16x16.png" sizes="16x16"/>
	      <link rel="icon" type="image/ico" href="https://www.switchapp.com/favicons/favicon.ico" sizes="16x16"/>
	      <link rel="manifest" href="https://www.switchapp.com/favicons/manifest.json"/>
	      <link rel="mask-icon" href="https://www.switchapp.com/favicons/safari-pinned-tab.svg" color="#5bbad5"/>
	      <meta name="apple-mobile-web-app-title" content="Switchapp"/>
	      <meta name="application-name" content="Switchapp"/>
	      <meta name="theme-color" content="#ffffff"/>
	      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
	      <meta name="apple-itunes-app" content="app-id=879185767"/>
	      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css"/>
	      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.3/css/bulma.min.css"/>
	      <link rel="stylesheet" href="https://www.switchapp.com/libs/swiper/dist/css/swiper.min.css"/>
	      <link rel="stylesheet" href="https://www.switchapp.com/css/style.min.css"/>
	      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<!-- Bootstrap Core CSS -->
		    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		    <!-- Custom Fonts -->
		    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
			<link rel="stylesheet" type="text/css" href="css/searchResults.css" />
		    <link rel="stylesheet" type="text/css" href="css/searchButton.css" />
	   </head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- Bootstrap Core CSS -->
	    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom Fonts -->
	    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
	
	    <!-- Custom CSS -->
	    <link href="css/stylish-portfolio.css" rel="stylesheet">
		<title>Profile</title>
		<%
		    Object username = "test";//request.getAttribute("username");
			User u = MongoDB.userProfilePage((String)username);
			String email = u.getEmail();
			String[] pieces = email.split("@");
			String account = pieces[0];
			String service = pieces[1];
			boolean display = true;
			if(!service.equalsIgnoreCase("gmail.com") && !service.equalsIgnoreCase("usc.edu")){
				display = false;
			}
		%>
	</head>
	<body>
		<header class="header has-dropdowns" data-type="header" style="display: none;">
	         <nav class="section is-small">
	            <div class="container nav">
	               <a class="nav-item is-brand" href="https://www.switchapp.com">
	                  <!-- <span class="brand-item">
	                     <svg width="29" height="20" viewBox="6 10 29 20" xmlns="http://www.w3.org/2000/svg">
	                        <path d="M9.294 26.34a9.87 9.87 0 0 0 6.985 2.857 9.866 9.866 0 0 0 6.985-2.857l3.376-3.338a4.014 4.014 0 0 0 0-5.717 4.127 4.127 0 0 0-5.782 0l-3.376 3.338a1.716 1.716 0 0 1-2.406 0 1.67 1.67 0 0 1 0-2.378l3.376-3.34a7.483 7.483 0 0 1 5.297-2.165c2.004 0 3.885.77 5.297 2.166a7.318 7.318 0 0 1 2.19 5.237 7.315 7.315 0 0 1-2.19 5.237l-2.969 2.935c-.15.149-.093.424.265.424h2.189a1.2 1.2 0 0 0 .845-.346v-.001l1.358-1.342a9.647 9.647 0 0 0 2.89-6.907 9.647 9.647 0 0 0-2.89-6.906 9.867 9.867 0 0 0-6.985-2.857 9.867 9.867 0 0 0-6.985 2.857l-3.376 3.338a4.015 4.015 0 0 0 0 5.718 4.128 4.128 0 0 0 5.782 0l3.376-3.338a1.717 1.717 0 0 1 2.406-.001 1.67 1.67 0 0 1 0 2.378l-3.376 3.339a7.484 7.484 0 0 1-5.297 2.165 7.484 7.484 0 0 1-5.297-2.165 7.314 7.314 0 0 1-2.19-5.236c0-1.982.778-3.842 2.19-5.238l2.866-2.834c.15-.15.093-.424-.265-.424h-2.188c-.306 0-.613.116-.845.346l-1.257 1.242a9.65 9.65 0 0 0-2.889 6.907 9.645 9.645 0 0 0 2.89 6.906" fill="#FFF" fill-rule="evenodd"/>
	                     </svg>
	                  </span> -->
	               </a>
	               <div class="nav-dropdowns">
	                  <div class="dropdown">
	                     <button class="dropdown-button">
	                        Calendar
	                        <svg width="19" height="11" viewBox="0 0 19 11" xmlns="http://www.w3.org/2000/svg">
	                           <g stroke="#00A7FF" stroke-width="2" fill="none" fill-rule="evenodd" stroke-linecap="square">
	                              <path d="M2.193 2.18l7.16 6.608M16.807 2.18l-7.16 6.608"/>
	                           </g>
	                        </svg>
	                     </button>
	                     <ul class="dropdown-menu dropdown-menu-right">
	                        <li><a href="calendar.jsp">Display Calendar</a></li>
	                     </ul>
	                  </div>
	                  <div class="dropdown">
	                     <button class="dropdown-button">
	                        Jobseekers
	                        <svg width="19" height="11" viewBox="0 0 19 11" xmlns="http://www.w3.org/2000/svg">
	                           <g stroke="#00A7FF" stroke-width="2" fill="none" fill-rule="evenodd" stroke-linecap="square">
	                              <path d="M2.193 2.18l7.16 6.608M16.807 2.18l-7.16 6.608"/>
	                           </g>
	                        </svg>
	                     </button>
	                     <ul class="dropdown-menu dropdown-menu-right">
	                        <li><a href="studentSignUp.jsp">Account Info</a></li>
	                        <li><a href="studentLoginPage.jsp">Sign out</a></li>
	                     </ul>
	                  </div>
	                  <div class="dropdown">
	                     <button class="dropdown-button">
	                        About InternSConnect
	                        <svg width="19" height="11" viewBox="0 0 19 11" xmlns="http://www.w3.org/2000/svg">
	                           <g stroke="#00A7FF" stroke-width="2" fill="none" fill-rule="evenodd" stroke-linecap="square">
	                              <path d="M2.193 2.18l7.16 6.608M16.807 2.18l-7.16 6.608"/>
	                           </g>
	                        </svg>
	                     </button>
	                     <ul class="dropdown-menu dropdown-menu-right">
	                        <li><a href="about.jsp">About InternSConnect</a></li>
	                        <li><a href="case.jsp">Case Studies</a></li>
	                        <li><a href="faq.jsp">FAQ</a></li>
	                        <li><a href="blog.jsp">Blog</a></li>
	                     </ul>
	                  </div>
	               </div>
	            </div>
	         </nav>
	      </header>
	      <center>
	      <h1>Welcome, <%=u.getFirstName()%> <%=u.getLastName()%></h1>
	      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<%for(int i = 0; i < u.getSavedJobs().size(); i++){ %> 
			<div class="card">
			<%
				Job j = new Job();
				j.setCompanyName(u.getSavedJobs().get(i));
				ArrayList<Job> jobs = MongoDB.searchJob(j);
				Job job = jobs.get(0);
			%>
				<img src="<%=job.getImageUrl() %>" height="122" width="122" /></a>
				<h1><%=job.getCompanyName()%></h1>
				<p class = "title"><%=job.getJobTitle()%></p>
				<p><b><%=job.getDeadline()%></b></p>
			</div>
		<%} %>
		</center>
		<br><br>
		<%if(display == true){ %>
			<center><iframe src="https://calendar.google.com/calendar/embed?src=<%=account%>%40<%=service%>&ctz=America/Los_Angeles" align="middle" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe></center>
			<center><br/><br/><h3><b>How To View Your Application Deadlines</b></h3></center>
			<center> Your application deadlines have been written to a CSV file for you to import into your Google calendar.</br>
			Follow the instructions <a href="https://support.google.com/calendar/answer/37118?hl=en">here</a> to import the CSV.</br>
			Your CSV file is named "InternSConnect.csv"</br>
			Refresh the web page once the CSV has been imported.</br>
			</center>
		<%} else { %>
			<br/><br/><h3><b>Unable to Display Calendar</h4></b>
			<h4>You are seeing this page because you created your account without a Gmail account.</h4>
		<%} %>
	</body>
</html>