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
 * Servlet implementation class Calendar
 */
@WebServlet("/Calendar")
public class Calendar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String companyname = request.getParameter("companyName");
		Job j = new Job();
		j.setCompanyName(companyname);
		ArrayList<Job> jobs = MongoDB.searchJob(j);
		Job job = jobs.get(0);
		String title = job.getJobTitle();
		String deadline = job.getDeadline();
		String[] pieces = deadline.split("-");
		String year = pieces[0];
		String month = pieces[1];
		String date = pieces[2];
		deadline = month + "/" + date + "/" + year;
		String subject = companyname + " " + title;
		
		try{
        	File file = new File("C:\\users\\katel\\Desktop\\InternSConnect.csv");
        	StringBuilder sb = new StringBuilder();
        	if(!file.exists()){
        		System.out.println("made it here");
        		PrintWriter pw = new PrintWriter(file);
        		System.out.println("made it here");
        		sb.append("Subject");
        		sb.append(',');
        		sb.append("Start Date");
        		sb.append(',');
        		sb.append("All Day Event");
        		sb.append('\n');
        		pw.write(sb.toString());
        		pw.close();
        	}
        	FileWriter fw = new FileWriter("C:\\users\\katel\\Desktop\\InternSConnect.csv", true);
        	StringBuilder sb2 = new StringBuilder();
    		sb2.append(subject);
    		sb2.append(',');
    		sb2.append(deadline);
    		sb2.append(',');
    		//since no time will be given, the event will be displayed in Google as an all day event
    		sb2.append("True");
    		sb2.append('\n');
    		fw.write(sb2.toString());
    		fw.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }	
	}

}
