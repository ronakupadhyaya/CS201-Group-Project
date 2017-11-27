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

<script>
	function jobDisplay(id){
		window.location = "/"+window.location.pathname.split("/")[1]+"/jobDisplay2.jsp?keyword=" + id;
		/* alert(id);
		var xhttp = new XMLHttpRequest();
		
		//xhttp.open("GET", "/"+window.location.pathname.split("/")[1]+"/jobDisplay2.jsp?keyword=" + id, false);
		xhttp.send(); */
	}


</script>

<body>
<div class="container bootstrap snippet">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<%for(int i = 0; i < matchedJobs.size(); i++){ 
		
	%>
	
	 <div class="well search-result">
            	<div class="row">
            		<a onclick ="return jobDisplay('<%=matchedJobs.get(i).getJobTitle() %>')">
                		<div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">
	                    	<img class="img-responsive" src=<%=matchedJobs.get(i).getImageUrl() %> alt="<%=matchedJobs.get(i).getCompanyName() %>">
                		</div>
                		<div class="col-xs-6 col-sm-9 col-md-9 col-lg-10 title">
	                    	<h3><%=matchedJobs.get(i).getDescription() %></h3>
	                    	<p>Ut quis libero id orci semper porta ac vel ante. In nec laoreet sapien. Nunc hendrerit ligula at massa sodales, ullamcorper rutrum orci semper.</p>
                		</div>
            		</a>
            	</div>
      </div>
		
		
	    
	<%} %>
	</div>
	</div>
	</div>
</body>