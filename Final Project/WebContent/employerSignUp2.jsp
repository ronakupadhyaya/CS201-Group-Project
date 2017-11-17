<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="css/employerSignUp.css">
      <title>Company Sign Up</title>
      <script>
      function validate() {
          var xhttp = new XMLHttpRequest();
          var cname = document.getElementById("INPUT_61").value;
          var name = document.getElementById("INPUT_66").value;
          var email = document.getElementById("INPUT_80").value;
          var password = document.getElementById("INPUT_85").value;
          var website = document.getElementById("INPUT_90").value;
          var description = document.getElementById("INPUT_94").value;
          xhttp.open("GET", "EmployerServlet?cname=" + cname + "&name=" + name + "&email=" + email
        		  + "&password=" + password + "&website=" + website
        		  + "&compdescription=" + description, false);
          xhttp.send();
          var response = xhttp.responseText.trim();
    	  if (response == "valid") {
    		  window.location.href="HomeCompany.jsp";   
          }
    	  else{
    		  document.getElementById("formerror").innerHTML = xhttp.responseText;
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
	         <section id="SECTION_53">
	            <div id="DIV_54">
	               <h1 id="H1_55">
	                  Create an InternSConnect Employer Account
	               </h1>
	            </div>
	            <div id="DIV_56">
	               <div id="DIV_57">
	                  <div id="DIV_58">
	                  <div id = "formerror" ></div>
	                  <form name="companyform" method = "GET" onsubmit="return validate();">
	                     <div id="DIV_59">
	                        <div id="DIV_60">
	                           <input name="cname" id="INPUT_61" />
	                           <ul id="UL_62">
	                              <!-- ngRepeat: match in matches track by $index -->
	                           </ul>
	                           <div id="DIV_63">
	                              <span id="SPAN_64">Company Name*</span>
	                           </div>
	                        </div>
	                        <div id="DIV_65">
	                           <input type="text" name="name" maxlength="24" id="INPUT_66" />
	                           <div id="DIV_67">
	                              <span id="SPAN_68">Recruiter Name</span>
	                           </div>
	                        </div>
	                     </div>
	                     <div id="DIV_78">
	                        <div id="DIV_79">
	                           <input type="email" name="email" id="INPUT_80" />
	                           <div id="DIV_81">
	                              <span id="SPAN_82">email address (your username)</span>
	                              <span id="SPAN_83"></span>
	                           </div>
	                        </div>
	                        <div id="DIV_84">
	                           <input type="password" name="password" id="INPUT_85" />
	                           <div id="DIV_86">
	                              <span id="SPAN_87">Choose a password*</span>
	                           </div>
	                        </div>
	                     </div>
	                     <div id="DIV_88">
	                        <div id="DIV_89">
	                           <input type="text" name="website" id="INPUT_90" />
	                           <div id="DIV_91">
	                              <span id="SPAN_92">Website*</span>
	                           </div>
	                        </div>
	                        <div id="DIV_93">
	                           <input type="text" name="description" id="INPUT_94" />
	                           <div id="DIV_95">
	                              <span id="SPAN_96">Comapny Description</span>
	                           </div>
	                        </div>
	                     </div>
	                     <div id="DIV_97">
	                        <button id="BUTTON_98">
	                        Create Account
	                        </button>
	                     </div>
	                     </form>  
	                  </div>
	               </div>
	            </div>
	         </section>
	         <footer id="FOOTER_99">
	            <div id="DIV_100">
	               <div id="DIV_101">
	                  <div id="DIV_102">
	                     <ul id="UL_103">
	                        <li id="LI_104">
	                           <a id="A_105">Career Advice</a>
	                        </li>
	                        <li id="LI_106">
	                           <a id="A_107">Marketing</a>
	                        </li>
	                        <li id="LI_108">
	                           <a id="A_109">Sales</a>
	                        </li>
	                        <li id="LI_110">
	                           <a id="A_111">Software Development</a>
	                        </li>
	                        <li id="LI_112">
	                           <a id="A_113">Finance</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_114">
	                     <ul id="UL_115">
	                        <li id="LI_116">
	                           <a id="A_117">Bussiness Development</a>
	                        </li>
	                        <li id="LI_118">
	                           <a id="A_119">Art &amp; Design</a>
	                        </li>
	                        <li id="LI_120">
	                           <a id="A_121">Data Science</a>
	                        </li>
	                        <li id="LI_122">
	                           <a id="A_123">Operations</a>
	                        </li>
	                        <li id="LI_124">
	                           <a id="A_125">Product Management</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_126">
	                     <ul id="UL_127">
	                        <li id="LI_128">
	                           <a id="A_129">For Employers</a>
	                        </li>
	                        <li id="LI_130">
	                           <a id="A_131">Post a Job for Free</a>
	                        </li>
	                        <li id="LI_132">
	                           <a id="A_133">Employer Login</a>
	                        </li>
	                        <li id="LI_134">
	                           <a id="A_135">Employer FAQ</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_136">
	                     <ul id="UL_137">
	                        <li id="LI_138">
	                           <a id="A_139">For Jobseekers</a>
	                        </li>
	                        <li id="LI_140">
	                           <a id="A_141">Create Free Account</a>
	                        </li>
	                        <li id="LI_142">
	                           <a id="A_143">Jobseeker Login</a>
	                        </li>
	                        <li id="LI_144">
	                           <a id="A_145">Jobseeker FAQ</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_146">
	                     <ul id="UL_147">
	                        <li id="LI_148">
	                           <a id="A_149">Case Studies</a>
	                        </li>
	                        <li id="LI_150">
	                           <a id="A_151">Applause</a>
	                        </li>
	                        <li id="LI_152">
	                           <a id="A_153">NBCUniversal</a>
	                        </li>
	                        <li id="LI_154">
	                           <a id="A_155">Majestyk</a>
	                        </li>
	                        <li id="LI_156">
	                           <a id="A_157">Crowdtap</a>
	                        </li>
	                        <li id="LI_158">
	                           <a id="A_159">Sneakers</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_160">
	                     <ul id="UL_161">
	                        <li id="LI_162">
	                           <a id="A_163">Jobs by Function</a>
	                        </li>
	                        <li id="LI_164">
	                           <a id="A_165">Account Executive / Sales Executive</a>
	                        </li>
	                        <li id="LI_166">
	                           <a id="A_167">Account Management / Customer Success</a>
	                        </li>
	                        <li id="LI_168">
	                           <a id="A_169">Backend Development</a>
	                        </li>
	                        <li id="LI_170">
	                           <a id="A_171">Front End Development</a>
	                        </li>
	                        <li id="LI_172">
	                           <a id="A_173">UX Design &amp; Research</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_174">
	                     <ul id="UL_175">
	                        <li id="LI_176">
	                           <a id="A_177">About InternSConnect</a>
	                        </li>
	                        <li id="LI_178">
	                           <a id="A_179">We are Hiring</a>
	                        </li>
	                        <li id="LI_180">
	                           <a id="A_181">Blog</a>
	                        </li>
	                        <li id="LI_182">
	                           <a id="A_183">Contact Us</a>
	                        </li>
	                        <li id="LI_184">
	                           <a id="A_185">Terms</a>
	                        </li>
	                        <li id="LI_186">
	                           <a id="A_187">Privacy Policy</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_188">
	                     <ul id="UL_189">
	                        <li id="LI_190">
	                           <a id="A_191">Jobs by State</a>
	                        </li>
	                        <li id="LI_192">
	                           <a id="A_193">New York, NY</a>
	                        </li>
	                        <li id="LI_194">
	                           <a id="A_195">San Francisco, CA</a>
	                        </li>
	                        <li id="LI_196">
	                           <a id="A_197">Newark, NJ</a>
	                        </li>
	                        <li id="LI_198">
	                           <a id="A_199">Redwood City, CA</a>
	                        </li>
	                        <li id="LI_200">
	                           <a id="A_201">Emeryville, CA</a>
	                        </li>
	                     </ul>
	                  </div>
	                  <div id="DIV_204">
	                     <p id="P_205">
	                        © 2017 InternSConnect Inc.
	                     </p>
	               
	                  </div>
	                  <div id="DIV_212">
	                     <div id="DIV_213">
	                        <a id="A_214"><img src="img/fb-btn.png" id="IMG_215" alt='' /></a><a id="A_216"><img src="img/insta-btn.png" id="IMG_217" alt='' /></a><a id="A_218"><img src="img/twitter-btn.png" id="IMG_219" alt='' /></a><a id="A_220"><img src="img/linkdn-btn.png" id="IMG_221" alt='' /></a>
	                     </div>
	                  </div>
	               </div>
	            </div>
	         </footer>
	      </div>
	      <div id="DIV_222">
	      </div>
	      <div id="DIV_223">
	         <div id="DIV_224">
	            <div id="DIV_225">
	               <div id="DIV_226">
	                  <button type="button" id="BUTTON_227">
	                  </button>
	                  <svg id="svg_228">
	                     <g id="g_229">
	                        <path id="path_230">
	                        </path>
	                     </g>
	                  </svg>
	                  <h4 id="H4_231">
	                     Password Reset
	                  </h4>
	               </div>
	               <div id="DIV_232">
	                  <div id="DIV_233">
	                     <div id="DIV_234">
	                        <h4 id="H4_235">
	                           Enter your email address
	                        </h4>
	                        <p id="P_236">
	                           We'll send you a link to reset your password.
	                        </p>
	                     </div>
	                     <div id="DIV_237">
	                        <h4 id="H4_238">
	                           Enter your email address
	                        </h4>
	                        <p id="P_239">
	                           Your account doesn't have a password yet. We'll send you a link to create one.
	                        </p>
	                     </div>
	                     <div id="DIV_240">
	                        <input type="email" name="email" placeholder="Email" id="INPUT_241" />
	                     </div>
	                     <button type="button" id="BUTTON_242">
	                     <i id="I_243"></i> Submit
	                     </button>
	                  </div>
	                  <div id="DIV_244">
	                     <h3 id="H3_245">
	                     </h3>
	                  </div>
	               </div>
	            </div>
	         </div>
	      </div>
	      <div id="DIV_257">
	         <div id="DIV_258">
	            <div id="DIV_259">
	               <div id="DIV_260">
	                  <button type="button" id="BUTTON_261">
	                  <span id="SPAN_262">×</span>
	                  </button>
	                  <h4 id="H4_263">
	                     Browser Not Supported
	                  </h4>
	               </div>
	               <div id="DIV_264">
	                  <p id="P_265">
	                     It looks like you're using a browser we don't currently support.
	                  </p>
	                  <p id="P_266">
	                     For best results, try using one of these instead:
	                  </p>
	                  <div id="DIV_267">
	                     <ul id="UL_268">
	                        <li id="LI_269">
	                           Chrome 31+
	                        </li>
	                        <li id="LI_270">
	                           Firefox 31+
	                        </li>
	                        <li id="LI_271">
	                           Safari 7+
	                        </li>
	                        <li id="LI_272">
	                           Internet Explorer 10+
	                        </li>
	                     </ul>
	                  </div>
	                  <p id="P_273">
	                     If you have any questions, please <a id="A_274">contact us</a>.
	                  </p>
	               </div>
	            </div>
	         </div>
	      </div>
	      <div id="DIV_275">
	         <div id="DIV_276">
	            <div id="DIV_277">
	            </div>
	         </div>
	         <div id="DIV_279">
	            <div id="DIV_280">
	            </div>
	         </div>
	      </div>
	      <div id="DIV_282">
	      </div>
      </div>
   </body>
</html>