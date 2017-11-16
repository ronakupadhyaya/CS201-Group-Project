

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
@WebServlet("/EmployerSignUp")
public class EmployerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String companyname = request.getParameter("cname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String website = request.getParameter("website");
		String description = request.getParameter("compdescription");
		
		Company c = new Company();
		c.setCompanyname(companyname);
		c.setEmail(email);
		c.setPassword(password);
		c.setWebsite(website);
		c.setDescription(description);
		
  	  	MongoDB.signUpCompany(c);		
	}

}
