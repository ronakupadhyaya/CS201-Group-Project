<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="css/studentSignUp3.css">
      <title>Student Sign Up</title>
      <script>
	function signup(){
		alert("hi");
		var name = document.getElementById("INPUT_11").value;
		alert(name);
		//var lname = document.getElementById("lname").value;
		var email = document.getElementById("INPUT_20").value;
		alert(email);
		var username = document.getElementById("INPUT_15").value;
		alert(username);
		var password = document.getElementById("INPUT_24").value;
		alert(password);
		var degree = document.getElementById("Degree").value;
		alert(degree);
		var major = document.getElementById("Major").value;
		alert(major);
		/* var type = $('input[name="jobtype"]:checked').map(function() {
   			 return $(this).val();
		}).get(); */
		//alert(type);
		//var type = document.querySelector('input[name="type"]:checked').value
		//alert(type);
		//var languages = $('#languages').val();
		var textinputs = document.querySelectorAll('input[type=checkbox]');
		var arr = [];
		var type = "";
		for(var i = 0; i < textinputs.length; i++) {
			if(textinputs[i].checked == true) {
				arr.push(textinputs[i].defaultValue);
				type += textinputs[i].defaultValue; 
			}
		}
		console.log(arr);
		var languages = document.getElementById("languages").value;
		alert(languages);
		//var experience = $('#experience').val();
		var experience = document.getElementById("experience").value;
		alert(experience);
		//alert(name + username + email + password + degree + major + type + languages + experience);
		var xhttp = new XMLHttpRequest();
		var request = "StudentSignUp?name=" + name + "&email=" + email + "&username=" + username + "&password=" + password + "&degree=" + degree + "&major=" + major + "&type=" + type + "&languages=" + languages + "&experience=" + experience;
		xhttp.open("POST", request, false);
		xhttp.send();
		
		return false;
	}
</script>
   </head>
   <body>
      <div id="DIV_MAIN">
         <div id="DIV_49">
            <header id="HEADER_50">
               <a href="http://switchapp.com/" id="A_51">
                 <!-- <img src="img/logo.png" alt="Switch" id="IMG_52" /> -->
               </a>
            </header>
            <section id="SECTION_1">
             <form id = "studentform" method="POST" onsubmit = "return signup();">
               <h1 id="H1_2">
                  Create Your Free InternSConnect Account
               </h1>
               <profile id="PROFILE-INFORMATION_3">
                  <div id="DIV_4">
                     <div id="DIV_5">
                        <h1 id="H1_6">
                           <span id="SPAN_7">1</span><span id="SPAN_8">Your Information</span>
                        </h1>
                        <div id="DIV_9">
                           <div id="DIV_10">
                              <input name="name" type="text" id="INPUT_11" />
                              <div id="DIV_12">
                                 <span id="SPAN_13">Full name</span>
                              </div>
                           </div>
                           <div id="DIV_14">
                              <input name="username" type="text" id="INPUT_15" />
                              <div id="DIV_16">
                                 <span id="SPAN_17">Username</span>
                              </div>
                           </div>
                        </div>
                        <div id="DIV_18">
                           <div id="DIV_19">
                              <input name="email" type="email" id="INPUT_20" />
                              <div id="DIV_21">
                                 <span id="SPAN_22">Email address</span>
                              </div>
                           </div>
                           <div id="DIV_23">
                              <input type="password" name="password" id="INPUT_24" />
                              <button id="BUTTON_25">
                              RESET PASSWORD
                              </button>
                              <div id="DIV_26">
                                 <span id="SPAN_27">Create a password</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </profile>
               <profile id="PROFILE-WORK-TYPE_110">
                  <div id="DIV_60">
                     <div id="DIV_61">
                        <h1 id="H1_62">
                           <span id="SPAN_63">2</span><span id="SPAN_64">Work Type</span>
                        </h1>
                        <div id="DIV_66">
                           <div id="DIV_67">
                              <div id="DIV_68">
                                 <label id="LABEL_69">
                                <input type="checkbox" name="jobtype" value="fullTime"> 
                                 </label>
                                 Full-time
                              </div>
                           </div>
                           <div id="DIV_67">
                              <div id="DIV_68">
                                 <label id="LABEL_69">
                                  <input type="checkbox" name="jobtype" value="partTime"> 
                                 </label>
                                 Part-time
                              </div>
                           </div>
                           <div id="DIV_67">
                              <div id="DIV_68">
                                 <label id="LABEL_69">
                                 <input type="checkbox" name="jobtype" value="internship">
                                 </label>
                                 Internship
                              </div>
                           </div>
                        </div>                        
                     </div>
                  </div>
               </profile>
               <profile id="PROFILE-JOB-FUNCTIONS_156">
                  <div id="DIV_157">
                     <div id="DIV_158">
                        <h4 id="H4_159">
                           <span id="SPAN_160">3</span> <span id="SPAN_161">Degree Type</span>
                        </h4>
                        <select id="Degree" class="SPAN_SELECT">
		                	<option value="freshman">Freshman</option>
				            <option value="sophomore">Sophomore</option>
				            <option value="junior">Junior</option>
				            <option value="senior">Senior</option>
          				</select>
                     </div>
                  </div>
               </profile>
               <profile id="PROFILE-JOB-FUNCTIONS_156">
                  <div id="DIV_157">
                     <div id="DIV_158">
                        <h4 id="H4_159">
                           <span id="SPAN_160">4</span> <span id="SPAN_161">Major</span>
                        </h4>
                        <select id="Major" class="SPAN_SELECT">
		                	<option value="CSCI">Computer Science</option>
		              		<option value="CSBA">Computer Science and Business</option>
		              		<option value="CECS">Computer Science and Engineering</option>
			                <option value="EE">Electrical Engineering </option>
			                <option value="ME">Mechanical Engineering</option>
			                <option value="CE">Civil Engineering</option>
			                <option value="ChemE">Chemical Engineering</option>
          				</select>
                     </div>
                  </div>
               </profile>
               <profile id="PROFILE-SKILLS_355">
                  <div id="DIV_356">
                     <div id="DIV_357">
                        <h4 id="H4_358">
                           <span id="SPAN_359">5</span><span id="SPAN_360">Languages</span>
                        </h4>
                        <div id="DIV_364">
                           <div id="DIV_365">
                              <div id="DIV_366">
                                 <div id="DIV_367">
                                    <input type = "text" id="languages" placeholder="Add languages (seperated by commas)" class="INPUT_368" >
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </profile>
               <profile id="PROFILE-SKILLS_355">
                  <div id="DIV_356">
                     <div id="DIV_357">
                        <h4 id="H4_358">
                           <span id="SPAN_359">6</span><span id="SPAN_360">Work Experience</span>
                        </h4>
                        <div id="DIV_364">
                           <div id="DIV_365">
                              <div id="DIV_366">
                                 <div id="DIV_367">
                                    <input type = "text" id="experience" placeholder="Work Experience" class="INPUT_368" >
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </profile>
                <input  type="submit" value="Submit">
               </form>
            </section>
            
         </div>
      </div>
   </body>
</html>