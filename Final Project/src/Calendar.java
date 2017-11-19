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
		String[] pieces = deadline.split("-");
		String year = pieces[0];
		String month = pieces[1];
		String date = pieces[2];
		deadline = month + "/" + date + "/" + year;
		String subject = companyname + " " + title;
		
		try{
        	String path = "calendar.csv";
        	File file = new File(path);
        	StringBuilder sb = new StringBuilder();
        	if(!file.exists()){
        		PrintWriter pw = new PrintWriter(file);
        		sb.append("Subject");
        		sb.append(',');
        		sb.append("Start Date");
        		sb.append(',');
        		sb.append("All Day Event");
        		sb.append('\n');
        		pw.write(sb.toString());
        		pw.close();
        	}
        	FileWriter fw = new FileWriter("calendar.csv", true);
    		sb.append(subject);
    		sb.append(',');
    		sb.append(deadline);
    		sb.append(',');
    		//since no time will be given, the event will be displayed in Google as an all day event
    		sb.append("True");
    		sb.append('\n');
    		fw.write(sb.toString());
    		fw.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }	
	}

}
