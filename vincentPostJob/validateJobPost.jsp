<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  String title = request.getParameter("title");
  String location = request.getParameter("location");
  String deadline = request.getParameter("deadline");
  //System.out.println("title\n "+title + "\nlocation\n " + location);
  if (title == null || title.length() == 0) {
%>
    <font color="red"><strong>Title needs a value.</strong></font><br />
<%
  }
  if (location == null || location.length() == 0) {
%>
    <font color="red"><strong>Location needs a value.</strong></font><br />
<%
  }
%>
<%
  if (deadline == null || deadline.length() == 0) {
%>
    <font color="red"><strong>Deadline needs a value.</strong></font><br />
<%
  }
%>