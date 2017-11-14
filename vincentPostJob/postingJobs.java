

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class postingJobs
 */
@WebServlet("/postingJobs")
public class postingJobs extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String title = request.getParameter("title");
		//System.out.println("1 " + title);
		String location = request.getParameter("location");
		String[] locationArray = location.split(",");
		//System.out.println("2 " + location);
		ArrayList<String> locationList = new ArrayList<String>();
		for(int i = 0; i < locationArray.length; i++) {
			locationList.add(locationArray[i]);
			//System.out.println(locationList.get(i));
		}
		
		String deadline = request.getParameter("deadline");
		//System.out.println("========== "+deadline);
		
		String type =  request.getParameter("type");
		//System.out.println("3 " + type);
		String[] typeArray = type.split(",");
		ArrayList<String> typeList = new ArrayList<String>();
		for(int i = 0; i < typeArray.length; i++) {
			typeList.add(typeArray[i]);
			//System.out.println(typeList.get(i));
		}
		
		
		String languages = request.getParameter("languages");
		//System.out.println("4 " + languages);
		String[] languageArray = languages.split(",");
		ArrayList<String> languageList = new ArrayList<String>();
		for(int i = 0; i < languageArray.length; i++) {
			languageList.add(languageArray[i]);
			//System.out.println(languageList.get(i));
		}
		
		String description = request.getParameter("description");
		//System.out.println("5 " + description);
		String major = request.getParameter("major");
		//System.out.println("6 " + major);
		String degree = request.getParameter("degree");
		//System.out.println("7 " + degree);
		System.out.println("title "+title + "\nlocation "+location +"\ntype "+ type+"\nlanguage "+languages + "\ndescription "+description+"\nmajor "+ major+"\ndegree "+degree);
		
		
		Job job = new Job();
		job.setJobTitle(title);
		job.setLocations(locationList);
		job.setDeadline(deadline);
		job.setDescription(description);
		job.setJobTypes(typeList);
		job.setLanguages(languageList);
		job.setDegree(degree);
		job.setMajor(major);
		
		MongoDB.addJobCompany(job);
		
	}

}
