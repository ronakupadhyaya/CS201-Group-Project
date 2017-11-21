<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="objects.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
         
         String[] monthNames = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
         
         job.setJobTypes(myTypes);
         job.setLanguages(null);
         job.setDegree("");
         job.setMajor("Computer Science");
         job.setWebsite("http://www.google.com");
         job.setImageUrl("https://cdn.vox-cdn.com/thumbor/wwiYgTK3hZw3r_RpC-0pGF25HS0=/800x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/4019454/googlelogo.0.jpg");
         %>
      <title><%=job.getJobTitle() %> | InternSConnect</title>
      <link rel="stylesheet" type="text/css" href="css/jobDisplay2.css">
   </head>
   <body>
      <div>
            <header id="HEADER_50">
               <a href="http://switchapp.com/" id="A_51">
                  <!-- <img src="img/logo.png" alt="Switch" id="IMG_52" /> -->
               </a>
            </header>
            <section id="SECTION_53">
               <div id="DIV_1">
                  <div id="DIV_2">
                     <!---->
                     <div id="DIV_3">
                        <div id="DIV_4">
                           <div id="DIV_5">
                              <a href="/company/1441/life/" id="A_6"><img alt="Company Logo" height="122" width="122" src="<%=job.getImageUrl() %>" id="IMG_7" /></a>
                           </div>
                           <div id="DIV_23">
                              <h1 id="H1_24">
                                 <%=job.getJobTitle() %>
                              </h1>
                              <h3 id="H3_25">
                                 <span id="SPAN_26">Company Name</span> <a href="/company/1441/life/" id="A_27"><%=job.getCompanyName() %> •</a> <span id="SPAN_28"> 
                                 <span id="SPAN_29">Company Location</span>
                                  		<%for(int i =0;i<job.getLocations().size();i++){ %>
											<%=job.getLocations().get(i)%>
												<%if(i!=job.getLocations().size()-1){ %>
														|
													<%} %>
												<%} %>
                                  </span>
                              	</h3>

                              <div id="DIV_43">
                                 <button id="BUTTON_44"  onclick >
                                 <span id="SPAN_45">Save</span> <span id="SPAN_46">Save</span>
                                 </button>
                                 <div id="DIV_47">
                                 <a href="<%=job.getWebsite() %>">
                                    <button id="BUTTON_48">
                                    <span id="SPAN_49">Apply</span> <span id="SPAN_50">Apply </span>
                                    </button>
                                  </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div id="DIV_51">
                        <article id="ARTICLE_52">
                           <div id="DIV_53">
                              <div id="DIV_54">
                                 <h2 id="H2_55">
                                    <strong>Position Details </strong>
                                 </h2>
                                 <!---->
                                 <strong id="STRONG_56">Note: By applying to this position your application is automatically submitted to the following locations: 
                                 	<%for(int i =0;i<job.getLocations().size();i++){ %>
											<%=job.getLocations().get(i)%>
												<%if(i != job.getLocations().size() - 1){ %>
														,
													<%} %>
												<%} %>
												.
                                 </strong>
                                 <p id="P_57">
                                 </p>
                                 <%
                                 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                 Date date = formatter.parse(job.getDeadline());
                                 String dateString = date.toString();
                                 String finalDateString = dateString.substring(0, 10) + " " + dateString.substring(24);
                                 /* String deadline = monthNames[]+ ;
                                 System.out.println(deadline); */
                                 %>
                                 <strong id="STRONG_58">Applications will be accepted until <%= finalDateString %> at 11:59PM PT.</strong><p></p>
                                 <p id="P_59">
                                 <Strong >Job Description</Strong>
                                 </p>
                                <%if(job.getDescription()==null||job.getDescription().equals("")) {%>
									none
							<%}else{ %>
								<%=job.getDescription() %>
							<%} %>
                                 <p id="P_60">
                                 </p>
                              </div>
                              <div id="DIV_97">
                                 <div id="DIV_98">
                                    <!---->
                                    <h3 id="H3_99">
                                       <strong>Employment Type</strong>
                                    </h3>
                                    <p id="P_100">
                                     <%for(int i =0;i<job.getJobTypes().size();i++){ %>
										<%=job.getJobTypes().get(i)%>
											<%if(i!=job.getJobTypes().size()-1){ %>
												|
											<%} %>
									<%} %>
                                      <%--  <%if(job.getMajor()==null||job.getMajor().equals("")) {%>
											none
									<%}else{ %>
										<%=job.getMajor() %>
									<%} %> --%>
                                    </p>
                                    <!---->
                                    <h3 id="H3_101">
                                       <strong>Major Requirement </strong>
                                    </h3>
                                    <ul id="UL_102">
                                       <li id="LI_103">
										 <%if(job.getMajor()==null||job.getMajor().equals("")) {%>
											none
									<%}else{ %>
										<%=job.getMajor() %>
									<%} %>
                                       </li>
                                    </ul>
                                    <h3 id="H3_105">
                                       Degree Requirement
                                    </h3>
                                    <p id="P_106">
									   <%if(job.getDegree()==null||job.getDegree().equals("")) {%>
												none
										<%}else{ %>
											<%=job.getDegree() %>
										<%} %>
                                    </p>
                                    <h3 id="H3_107">
                                       <strong>Languages Requirement </strong>
                                    </h3>
                                    <ul id="UL_108">
                                       <li id="LI_103">
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
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </article>
                     </div>
                  </div>
               </div>
            </section>
         </div>
 
   </body>
</html>