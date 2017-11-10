import java.util.ArrayList;

public class User {
	
	private String firstName;
	private String lastName;
	private String email;
	private String username;
	private String password;
	private String degree;
	private String major;
	private ArrayList<String> jobTypes;
	private ArrayList<String> languages;
	private ArrayList<String> workExperience;
	private ArrayList<Job> savedJobs;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public ArrayList<String> getJobTypes() {
		return jobTypes;
	}
	public void setJobTypes(ArrayList<String> jobTypes) {
		this.jobTypes = jobTypes;
	}
	public ArrayList<String> getLanguages() {
		return languages;
	}
	public void setLanguages(ArrayList<String> languages) {
		this.languages = languages;
	}
	public ArrayList<String> getWorkExperience() {
		return workExperience;
	}
	public void setWorkExperience(ArrayList<String> workExperience) {
		this.workExperience = workExperience;
	}
	public ArrayList<Job> getSavedJobs() {
		return savedJobs;
	}
	public void setSavedJobs(ArrayList<Job> savedJobs) {
		this.savedJobs = savedJobs;
	}
	
}
