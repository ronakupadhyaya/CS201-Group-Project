<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body style="background-color:#F0F8FF;">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Profile</title>
		<%
		    Object username = "test";//request.getAttribute("username");
			User u = MongoDB.userProfilePage((String)username);
			//String email = u.getEmail();
			String email = "katelivingston02@gmail.com";
			String[] pieces = email.split("@");
			String account = pieces[0];
			String service = pieces[1];
			boolean display = true;
			if(!service.equalsIgnoreCase("gmail.com") && !service.equalsIgnoreCase("usc.edu")){
				display = false;
			}
		%>
		<h1><%=u.getFirstName()%> <%=u.getLastName()%></h1>
	</head>
	<body>
		<%for(int i = 0; i < u.getSavedJobs().size(); i++){ %>
			<a href="/company/1441/life/" id="A_6"><img alt="Company Logo" height="122" width="122" src="<%=u.getSavedJobs().get(i).getImageUrl() %>" id="IMG_7" /></a>
			<h2><%=u.getSavedJobs().get(i).getCompanyName()%></h2>
			<h3><b><%=u.getSavedJobs().get(i).getJobTitle()%></b></h3>
			<h5><%=u.getSavedJobs().get(i).getDeadline()%></h5>
		<%} %>
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