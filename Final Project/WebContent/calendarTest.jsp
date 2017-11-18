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
			//receive information when user hits "favorite"
		    String subject = request.getParameter("subject");
			String startDate = request.getParameter("sdate");
			String startTime = request.getParameter("stime");
			String endDate = request.getParameter("edate");
			String endTime = request.getParameter("etime");
		%>
	</head>
	<body>
		<%
        try{
        	String path = "calendar.csv";
        	File file = new File(path);
        	StringBuilder sb = new StringBuilder();
        	if(!file.exists()){
        		PrintWriter pw = new PrintWriter(file);
        		sb.append("Subject");
        		sb.append(',');
        		sb.append("Start date");
        		sb.append(',');
        		sb.append("Start time");
        		sb.append(',');
        		sb.append("End date");
        		sb.append(',');
        		sb.append("End time");
        		sb.append('\n');
        		pw.write(sb.toString());
        		pw.close();
        	}
        	FileWriter fw = new FileWriter("calendar.csv", true);
    		sb.append(subject);
    		sb.append(',');
    		sb.append(startDate);
    		sb.append(',');
    		sb.append(startTime);
    		sb.append(',');
    		sb.append(endDate);
    		sb.append(',');
    		sb.append(endTime);
    		sb.append('\n');
    		fw.write(sb.toString());
    		fw.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    	%>
	</body>
</html>