<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import = "Test.*" %>    
<%@ page import = "java.util.ArrayList" %>
 <% 
String keyword = request.getParameter("keyword");
 System.out.println(keyword);
		Job j = new Job();
		j.setCompanyName(keyword);
		j.setJobTitle(keyword);
		ArrayList<String> types = new ArrayList<String>();
		types.add(keyword);
		j.setJobTypes(types);
		j.setDegree(keyword);
		j.setMajor(keyword);
		ArrayList<String> languages = new ArrayList<String>();
		languages.add(keyword);
		j.setLanguages(languages);
		
		ArrayList<Job> matchedJobs = MongoDB.searchJob(j);
		
%>
