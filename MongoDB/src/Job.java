import java.util.ArrayList;

public class Job {
	private String companyname;
	private String jobTitle;
	private ArrayList<String> locations;
	private ArrayList<String> jobTypes;
	private String degree;
	private String major;
	private ArrayList<String> languages;
	
	public String getCompanyName() {
		return companyname;
	}
	public void setCompanyName(String companyname) {
		this.companyname = companyname;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public ArrayList<String> getLocations() {
		return locations;
	}
	public void setLocations(ArrayList<String> locations) {
		this.locations = locations;
	}
	public ArrayList<String> getJobTypes() {
		return jobTypes;
	}
	public void setJobTypes(ArrayList<String> jobTypes) {
		this.jobTypes = jobTypes;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public ArrayList<String> getLanguages() {
		return languages;
	}
	public void setLanguages(ArrayList<String> languages) {
		this.languages = languages;
	}
	
}
