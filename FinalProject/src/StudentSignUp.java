

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentSignUp
 */
@WebServlet("/StudentSignUp")
public class StudentSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String degree = request.getParameter("degree");
		String major = request.getParameter("major");
		String type = request.getParameter("type");
		String[] typeArray = type.split(",");
		ArrayList<String> typeList = new ArrayList<String>();
		for(int i = 0; i < typeArray.length; i++) {
			typeList.add(typeArray[i]);
			System.out.println(typeList.get(i));
		}
		String languages = request.getParameter("languages");
		String[] languageArray = type.split(",");
		ArrayList<String> languageList = new ArrayList<String>();
		for(int i = 0; i < languageArray.length; i++) {
			languageList.add(languageArray[i]);
			System.out.println(languageList.get(i));
		}
		String experience = request.getParameter("experience");
		
		User user = new User();
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setEmail(email);
		user.setPassword(password);
		user.setDegree(degree);
		user.setMajor(major);
		user.setJobTypes(typeList);
		user.setLanguages(languageList);
		user.setWorkExperience(experience);
		
		MongoDB.signUpUser(user);
		
		System.out.println(fname + " " + lname + " " + email + " " + password + " " + degree + " " + major + " " + type + " " + languages + " " + experience);
		
	}

}
