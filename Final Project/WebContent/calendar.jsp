<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Calendar</title>
		<%
		    Object username = request.getAttribute("username");
			User u = MongoDB.userProfilePage((String)username);
			String email = u.getEmail();
			//String email = "katelivingston02@gmail.com";
			String[] pieces = email.split("@");
			String account = pieces[0];
			System.out.println(account);
			String service = pieces[1];
			System.out.println(service);
			boolean display = true;
			if(!service.equalsIgnoreCase("gmail.com") && !service.equalsIgnoreCase("usc.edu")){
				display = false;
			}
		%>
	</head>
	<body>
		<%if(display == true){ %>
			<iframe src="https://calendar.google.com/calendar/embed?src=<%=account%>%40<%=service%>&ctz=America/Los_Angeles" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
			<br/><br/><h3><b>How To View Your Application Deadlines</h4></b>
			<h4>Your application deadlines have been written to a CSV file for you to import into your Google calendar.</h4>
			<h4>Follow the instructions <a href="https://support.google.com/calendar/answer/37118?hl=en">here</a> to import the CSV.</h4>
			<h4>Your CSV file is named "calendar.csv"</h4>
			<h4>Refresh the web page once the CSV has been imported.</h4>
		<%} else { %>
			<br/><br/><h3><b>Unable to Display Calendar</h4></b>
			<h4>You are seeing this page because you created your account without a Gmail account.</h4>
		<%} %>
	</body>
</html>