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
<div class="container bootstrap snippet">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<%
		if(matchedJobs.size() == 0){ %>
		<div class="well search-result">
            	<div class="row">
            		There are no search results. 
            	</div>
      </div>
		
			
	<% }
		for(int i = 0; i < matchedJobs.size(); i++){ 
		
	%>
	
	 <div class="well search-result">
            	<div class="row">
            		<a href="#">
                		<div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">
	                    	<img class="img-responsive" src=<%=matchedJobs.get(i).getImageUrl() %> alt="<%=matchedJobs.get(i).getCompanyName() %>">
                		</div>
                		<div class="col-xs-6 col-sm-9 col-md-9 col-lg-10 title">
	                    	<h3><%=matchedJobs.get(i).getJobTitle() %></h3>
	                    	<p><%=matchedJobs.get(i).getDescription() %></p>
                		</div>
            		</a>
            	</div>
      </div>
		
		
	    
	<%} %>
	</div>
	</div>
	</div>
</body>

