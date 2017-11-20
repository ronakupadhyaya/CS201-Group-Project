<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import = "Test.*" %>    
<%@ page import = "java.util.ArrayList" %>

 <% 
String keyword = request.getParameter("keyword");
 System.out.println(keyword);
		Job j = new Job();
		j.setCompanyName(keyword);
		j.setDescription(keyword);
		j.setJobTitle(keyword);
	
		
		ArrayList<Job> matchedJobs = MongoDB.searchJob2(j);

%>
<body>
	<%for(int i = 0; i < matchedJobs.size(); i++){ 
		System.out.println(matchedJobs.get(i).getCompanyName());
	%>
		<a href = "jobDisplay.jsp">
		    <div class="grid__item"><img src=<%=matchedJobs.get(i).getImageUrl() %> alt="<%=matchedJobs.get(i).getCompanyName() %>" style="width:25%;height:25%;" ></div>
		    <p><font color="black"><%=matchedJobs.get(i).getDescription() %></font></p>
	    </a>
	<%} %>
</body>

