import java.io.File;
import java.io.FileWriter;
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
@WebServlet("/Calendar")
public class Calendar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String companyname = request.getParameter("cname");
		String title = request.getParameter("title");
		String deadline = request.getParameter("deadline");
		
		try{
        	String path = "calendar.csv";
        	File file = new File(path);
        	StringBuilder sb = new StringBuilder();
        	if(!file.exists()){
        		PrintWriter pw = new PrintWriter(file);
        		sb.append("Company");
        		sb.append(',');
        		sb.append("Job Title");
        		sb.append(',');
        		sb.append("Deadline");
        		sb.append('\n');
        		pw.write(sb.toString());
        		pw.close();
        	}
        	FileWriter fw = new FileWriter("calendar.csv", true);
    		sb.append(companyname);
    		sb.append(',');
    		sb.append(title);
    		sb.append(',');
    		sb.append(deadline);
    		sb.append('\n');
    		fw.write(sb.toString());
    		fw.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }	
	}

}
