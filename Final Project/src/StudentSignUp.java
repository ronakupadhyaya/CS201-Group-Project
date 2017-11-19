

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.codegen.types.Type;

/**
 * Servlet implementation class StudentSignUp
 */
@WebServlet("/StudentSignUp")
public class StudentSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String[] nameArray = name.split(" ");
		String fname = "";
		String lname = "";
		if(name.length() >1) {
			fname = nameArray[0];
			lname = nameArray[1];
		}
		
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String degree = request.getParameter("degree");
		String major = request.getParameter("major");
		String type = request.getParameter("type");
		ArrayList<String> typeList = new ArrayList<String>();
		if(type.contains("fullTime")) {
			typeList.add("fullTime");
		}
		if(type.contains("partTime")) {
			typeList.add("partTime");
		}
		if(type.contains("internship")) {
			typeList.add("internship");
		}
		String languages = request.getParameter("languages");
		String[] languageArray = languages.split(",");
		ArrayList<String> languageList = new ArrayList<String>();
		for(int i = 0; i < languageArray.length; i++) {
			languageList.add(languageArray[i]);
		}
		String experience = request.getParameter("experience");
		if(name.length() == 0 || username.length() == 0 || password.length() == 0) {
			pw.println("Required fields are blank.");
			pw.flush();
		}
		else {
			User user = new User();
			user.setFirstName(fname);
			user.setLastName(lname);
			user.setEmail(email);
			user.setUsername(username);
			//for calendar
	        session.setAttribute("username", username);
			user.setPassword(password);
			user.setDegree(degree);
			user.setMajor(major);
			user.setJobTypes(typeList);
			user.setLanguages(languageList);
			user.setWorkExperience(experience);
			
			MongoDB.signUpUser(user);
			pw.println("valid");
			//for calendar
			RequestDispatcher dispatcher = request.getRequestDispatcher("calendar.jsp");
	        dispatcher.forward(request, response);
			pw.flush();
		}
		
		
		
		
	}

}
