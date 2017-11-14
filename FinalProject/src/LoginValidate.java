

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginValidate
 */
@WebServlet("/LoginValidate")
public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		PrintWriter pw = response.getWriter();
		System.out.println(username + " " + password + " " + type);
		if(type.equals("company")) {
			if(MongoDB.companyLogin(username, password)) {
				System.out.println("cool1");
				pw.println("validCompany");
				pw.flush();
				
			}
			else {
				System.out.println("no login");
			}
		}
		else if (type.equals("student")) {
			if(MongoDB.userLogin(username, password)) {
				System.out.println("cool2!");
				pw.println("valid");
				pw.flush();
			}
			else {
				System.out.println("bad");
				pw.println("Invalid login, please try again.");
				pw.flush();
			}
		}
	}

	
}
