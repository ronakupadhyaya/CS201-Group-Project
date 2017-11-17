<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="css/loginPage.css">
      <title>Login</title>
  <script>
	function validate(){
		var name = document.getElementById("INPUT_14").value;
		var password = document.getElementById("INPUT_17").value;
		
		var xhttp = new XMLHttpRequest();
		var request = "LoginValidate?username=" + name + "&password=" + password + "&type=" + "student";
		xhttp.open("GET", request, false);
		xhttp.send();
		var response = xhttp.responseText.trim();
		if(response == "valid"){
			window.location.href="homeStudent.jsp";
		}
		//else if(response == "validCompany"){
			//window.location.href="HomeCompany.jsp";
		//}
		else {
			document.getElementById("error").innerHTML = xhttp.responseText.trim();
		}
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
	         <div id="DIV_5">
		<div id="DIV_6">
			<div id="DIV_7">
				<h1 id="H1_8">
					Student Login
				</h1>
			</div>
			<!-- ngIf: ctrl.welcomeMessage -->
			 
			<div id="DIV_9">
				<div id="DIV_10">
				<div id = "error"></div>
					<form name = "jobForm" method ="GET" onsubmit="return validate();">
						<div id="DIV_12">
							<label for="email" id="LABEL_13">
								USERNAME
							</label>
							<input type="text" name="email" id="INPUT_14" />
						</div>
						<div id="DIV_15">
							<label for="password" id="LABEL_16">
								PASSWORD
							</label>
							<input type="password" name = "password" id="INPUT_17" />
						</div>
						<div id="DIV_25">
							<button type="submit" id="BUTTON_26">
								<span id="SPAN_27">Login</span><span id="SPAN_28"></span>
							</button>
						</div>
					</form>
				</div>
			</div>
			<div id="DIV_29">
				<div id="DIV_30">
					<a id="A_31">Forgot your password?</a>
				</div>
				<!-- ngIf: ctrl.isEmployer() -->

				<div id="DIV_32">
					<a href="#/signup-profile/" id="A_33">Create employer account</a> <span id="SPAN_34">|</span> <a href="mailto:hello@switchapp.com" id="A_35">Contact Switch support</a>
				</div>
				<!-- end ngIf: ctrl.isEmployer() -->

				<!-- ngIf: ctrl.isJobseeker() -->

				<!-- ngIf: ctrl.isEmployer() -->

				<div id="DIV_36">
					<a href="#/signup-jobseeker/" id="A_37">Looking for a job?</a>
				</div>
				<!-- end ngIf: ctrl.isEmployer() -->

				<!-- ngIf: ctrl.isJobseeker() -->

			</div>
			<div id="DIV_38">
				<div id="DIV_39">
					<div id="DIV_40">
						<div id="DIV_41">
							<button type="button" id="BUTTON_42">
							</button>
							<svg id="svg_43">
								<g id="g_44">
									<path id="path_45">
									</path>
								</g>
							</svg>
							<h4 id="H4_46">
								Oops, we forgot to give you a profile.
							</h4>
						</div>
						<div id="DIV_47">
							<p id="P_48">
								Please email us at<a href="mailto:hello@switchapp.com" id="A_49">hello@switchapp.com</a>and we'll get you started.
							</p>
						</div>
				
	      </div>
      </div>
   </body>
</html>