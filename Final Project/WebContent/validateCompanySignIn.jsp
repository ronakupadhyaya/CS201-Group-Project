<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	System.out.println("Here");	
	String companyname = request.getParameter("cname");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String website = request.getParameter("website");
	String description = request.getParameter("compdescription");
  if (companyname == null || companyname.length() == 0) {
%>
    <font color="red"><strong>Company name needs a value.</strong></font><br />
<%
  }
  if (email == null || email.length() == 0) {
%>
    <font color="red"><strong>Email needs a value.</strong></font><br />
<%
  }
%>
<%
  if (password == null || password.length() == 0) {
%>
    <font color="red"><strong>Password needs a value.</strong></font><br />
<%
  }
%>
<%
  if (website == null || website.length() == 0) {
%>
    <font color="red"><strong>Website needs a value.</strong></font><br />
<%
  }
%>
<%
  if (description == null || description.length() == 0) {
%>
    <font color="red"><strong>Company description needs a value.</strong></font><br />
<%
  }
%>