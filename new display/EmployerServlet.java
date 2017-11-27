package Test;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/EmployerServlet")
public class EmployerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		PrintWriter pw = response.getWriter();
		String companyname = request.getParameter("cname");
		String recruitername = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String website = request.getParameter("website");
		String logo = request.getParameter("logo");
		Company c = new Company();
		c.setCompanyname(companyname);
		c.setRecruitername(recruitername);
		c.setEmail(email);
		c.setPassword(password);
		c.setWebsite(website);
		c.setLogo(logo);
		if(companyname.length() == 0 || password.length() == 0 || website.length() == 0) {
			pw.println("Required fields are missing.");
			pw.flush();
		}
		else {
			MongoDB.signUpCompany(c);	
			pw.print("valid");
			pw.flush();
		}
  	  	
  	    
	}

}