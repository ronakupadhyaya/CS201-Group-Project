<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="objects.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	Job job = new Job();
	job.setJobTitle("Software Engineering Intern, Summer 2018");
	job.setCompanyName("Google");
	ArrayList<String> myLocations = new ArrayList<String>();
	myLocations.add("Los Angeles");
	myLocations.add("London");
	job.setLocations(myLocations);	
	job.setDeadline("2017-11-20");
	job.setDescription("");
	ArrayList<String> myTypes = new ArrayList<String>();
	myTypes.add("Intern");

	job.setJobTypes(myTypes);
	job.setLanguages(null);
	job.setDegree("");
	job.setMajor("Computer Science");
	job.setWebsite("http://www.google.com");
	job.setImageUrl("https://cdn.vox-cdn.com/thumbor/wwiYgTK3hZw3r_RpC-0pGF25HS0=/800x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/4019454/googlelogo.0.jpg");
%>
<head>
    <meta charset="utf-8">


    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    
	<link rel="stylesheet" type="text/css" href="css/jobDisplay.css">
    <!-- Custom styles for this template -->
 
   </head>

<body>

	<div id ="image">
		<img src="<%=job.getImageUrl() %>" alt="">
	</div>

	<div id="title">
		<h1><%=job.getJobTitle() %></h1>
	</div>
	
	<div id="company">
		<strong>Company:&nbsp </strong>
		<%=job.getCompanyName() %>
	</div>
	
	<div id="type">
		<strong>Employment Type:&nbsp </strong>
		<%for(int i =0;i<job.getJobTypes().size();i++){ %>
			<%=job.getJobTypes().get(i)%>
			<%if(i!=job.getJobTypes().size()-1){ %>
				|
			<%} %>
		<%} %>
	</div>
	
	<div id="location">
		<strong>Locations:&nbsp </strong>
		<%for(int i =0;i<job.getLocations().size();i++){ %>
			<%=job.getLocations().get(i)%>
			<%if(i!=job.getLocations().size()-1){ %>
				|
			<%} %>
		<%} %>
	</div>
	
	<div id="deadline">
		<strong>Deadline:&nbsp </strong>
		<%=job.getDeadline() %>
	</div>
	

	
	<div id="buttons">
		<button id ="save" onclick >Save
		</button>
		
		<a href="<%=job.getWebsite() %>">
   			 <button id="apply">Apply</button>
		</a>
	</div>
	
	
	<div id="position details">
			<h1>Position Details</h1>
			
		<div id= "major">
			<strong>Major Requirement:&nbsp </strong>
			<%if(job.getMajor()==null||job.getMajor().equals("")) {%>
				none
			<%}else{ %>
				<%=job.getMajor() %>
			<%} %>
		</div>
		
		<div id= "degree">
			<strong>Degree Requirement:&nbsp </strong>
			<%if(job.getDegree()==null||job.getDegree().equals("")) {%>
				none
			<%}else{ %>
				<%=job.getDegree() %>
			<%} %>
		</div>
		
		<div id= "languages">
			<strong>Languages Requirement:&nbsp </strong>
			<%if(job.getLanguages()==null||job.getLanguages().size()==0){ %>
				none
			<%} else{%>
				<%for(int i = 0; i<job.getLanguages().size();i++){ %>
					<%=job.getLanguages().get(i) %>
					<%if(i!=job.getLanguages().size()){ %>
						|
					<%} %>
				<%} %>
			<%} %>
			
		</div>
		
		<div id= "description">
			<strong>Job Description:&nbsp </strong>
			<%if(job.getDescription()==null||job.getDescription().equals("")) {%>
				none
			<%}else{ %>
				<%=job.getDescription() %>
			<%} %>
		</div>
		
		
	</div>

</body>
</html>