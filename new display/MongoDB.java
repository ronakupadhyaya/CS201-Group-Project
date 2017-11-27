package Test;
import java.util.ArrayList;
import java.util.Arrays;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoIterable;

public class MongoDB {
	private static MongoClientURI mongoURI;
	private static MongoClient mongoClient;
	private static MongoDatabase mongoDatabase;
	private static MongoIterable<String> mongoCollectionGames;

	public static void connect(String stringURI) {

		mongoURI = new MongoClientURI(stringURI);
		mongoClient = new MongoClient(mongoURI);
		mongoDatabase = mongoClient.getDatabase(mongoURI.getDatabase());
		mongoCollectionGames = mongoDatabase.listCollectionNames();

	}
	
	public static void signUpUser(User user) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		String firstName = user.getFirstName();
		String lastName = user.getLastName();
		String email = user.getEmail();
		String username = user.getUsername();
		String password = user.getPassword();
		String degree = user.getDegree();
		String major = user.getMajor();
		String calendarUrl = user.getCalendarUrl();
		ArrayList<String> jobTypes = user.getJobTypes();
		ArrayList<String> languages = user.getLanguages();
		String workExperience = user.getWorkExperience();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");
		Document mongoDocument = new Document("firstName", firstName)
									  .append("lastName", lastName)
									  .append("email", email)
									  .append("username", username)
									  .append("password", password)
									  .append("degree", degree)
									  .append("major", major)
									  .append("calenderUrl", calendarUrl)
									  .append("jobTypes", jobTypes)
									  .append("languages", languages)
									  .append("workExperience", workExperience);
		mongoCollection.insertOne(mongoDocument);
		
		return;
		
	}
	
	public static boolean userExists(String receivedUsername) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");	
		Document findQuery = new Document("Username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();

		try {
			if(mongoCursor.hasNext()) {
				return true;
			}
		} finally {
			mongoCursor.close();
		}
		
		return false;
	}

	
	public static void signUpCompany(Company company) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		String companyname = company.getCompanyname();
		String recruitername = company.getRecruitername();
		String email = company.getEmail();
		String password = company.getPassword();
		String website = company.getWebsite();
		String logo = company.getLogo();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("companies");
		Document mongoDocument = new Document("companyname", companyname)
									  .append("recruitername", recruitername)
									  .append("email", email)
									  .append("password", password)
									  .append("website", website)
									  .append("logo", logo);
		mongoCollection.insertOne(mongoDocument);
		
		return;
		
	}	

	public static boolean userLogin(String receivedUsername, String receviedPassword) {

		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");	
		Document findQuery = new Document("username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		String password = "";
		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				password = (String)mongoDocument.get("password");
			}
		} finally {
			mongoCursor.close();
		}
		
		if(password.equals(receviedPassword)) {
			return true;
		}

		return false;

	}
	
	public static boolean companyLogin(String receivedCompanyname, String receviedPassword) {

		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("companies");	
		Document findQuery = new Document("companyname", new Document("$eq", receivedCompanyname));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		String password = "";
		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				password = (String)mongoDocument.get("password");
			}
		} finally {
			mongoCursor.close();
		}
		
		if(password.equals(receviedPassword)) {
			return true;
		}

		return false;

	}
	
	public static void addJobCompany(Job job) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		String companyname = job.getCompanyName();
		String description = job.getDescription();
		String deadline = job.getDeadline();
		String website = job.getWebsite();
		String imageUrl = job.getImageUrl();
		String jobTitle = job.getJobTitle();
		String jobType = job.getJobType();
		String degree = job.getDegree();
		String major = job.getMajor();
		String location = job.getLocation();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("jobs");
		Document mongoDocument = new Document("companyname", companyname)
								      .append("description", description)
								      .append("deadline", deadline)
								      .append("website", website)
								      .append("imageUrl", imageUrl)
									  .append("jobTitle", jobTitle)
									  .append("jobType", jobType)
									  .append("degree", degree)
									  .append("major", major)
									  .append("location", location);
		mongoCollection.insertOne(mongoDocument);
		
		return;
		
	}
	
	public static void addJobUser(String receivedUsername, Job job) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");
		String username = receivedUsername;
		
		Document findQuery = new Document("username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		ArrayList<Job> savedJobs = null;		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				savedJobs = (ArrayList<Job>)mongoDocument.get("savedJobs");
			}
		} finally {
			mongoCursor.close();
		}
		
		savedJobs.add(job);
		Document updateQuery = new Document("username", username);
		mongoCollection.updateOne(updateQuery, new Document("$set", new Document("savedJobs", savedJobs)));
		
		return;
		
	}
	
	public static ArrayList<Job> searchJob(Job jobFilter) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		String companyname = jobFilter.getCompanyName();
		String jobTitle = jobFilter.getJobTitle();
		String jobType = jobFilter.getJobType();
		String degree = jobFilter.getDegree();
		String major = jobFilter.getMajor();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("jobs");
		Document companyNameDocument = new Document("companyname", new Document("$eq", companyname));
		Document jobTitleDocument = new Document("jobTitle", new Document("$eq", jobTitle));
		Document jobTypesDocument = new Document("jobType", new Document("$eq", jobType));
		Document degreeDocument = new Document("degree", new Document("$eq", degree));
		Document majorDocument = new Document("major", new Document("$eq", major));
		
		ArrayList<Document> findQueryDocuments = new ArrayList<Document>(); 
		findQueryDocuments.add(companyNameDocument); 
		findQueryDocuments.add(jobTitleDocument);
		findQueryDocuments.add(jobTypesDocument);
		findQueryDocuments.add(degreeDocument);
		findQueryDocuments.add(majorDocument);
		
		Document findQuery = new Document("$or", findQueryDocuments); 
		
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		ArrayList<Job> returnJobs = new ArrayList<Job>();
		System.out.println("Here1");
		try {
			while (mongoCursor.hasNext()) {
				System.out.println("Here2");
				Document mongoDocument = mongoCursor.next();
				Job tempJob = new Job();
				tempJob.setCompanyName((String)mongoDocument.get("companyname"));
				tempJob.setJobTitle((String)mongoDocument.get("jobTitle"));
				tempJob.setJobType((String) mongoDocument.get("jobType"));
				tempJob.setDegree((String)mongoDocument.get("degree"));
				tempJob.setMajor((String)mongoDocument.get("major"));
				returnJobs.add(tempJob);
			}
		} finally {
			mongoCursor.close();
		}
		
		return returnJobs;
		
	}
	
public static ArrayList<Job> searchJob2(Job jobFilter) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		String companyname = jobFilter.getCompanyName();
		String description = jobFilter.getDescription();
		String jobTitle = jobFilter.getJobTitle();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("jobs");
		Document companyNameDocument = new Document("companyname", new Document("$eq", companyname));
		Document descriptionDocument = new Document("description", new Document("$eq", description));
		Document jobTitleDocument = new Document("jobTitle", new Document("$eq", jobTitle));
		
		ArrayList<Document> findQueryDocuments = new ArrayList<Document>(); 
		findQueryDocuments.add(companyNameDocument); 
		findQueryDocuments.add(descriptionDocument);
		findQueryDocuments.add(jobTitleDocument);
		
		Document findQuery = new Document("$or", findQueryDocuments); 
		
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		ArrayList<Job> returnJobs = new ArrayList<Job>();
		System.out.println("Here1");
		try {
			while (mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				Job tempJob = new Job();
				tempJob.setCompanyName((String)mongoDocument.get("companyname"));
				tempJob.setDescription((String)mongoDocument.get("description"));
				tempJob.setDeadline((String)mongoDocument.get("deadline"));
				tempJob.setWebsite((String)mongoDocument.get("website"));
				tempJob.setImageUrl((String)mongoDocument.get("imageUrl"));
				tempJob.setJobTitle((String)mongoDocument.get("jobTitle"));
				tempJob.setDegree((String)mongoDocument.get("degree"));
				tempJob.setMajor((String)mongoDocument.get("major"));
				returnJobs.add(tempJob);
			}
		} finally {
			mongoCursor.close();
		}
		
		return returnJobs;
		
	}
	
	public static User userProfilePage(String receivedUsername) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		User user = new User();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");	
		Document findQuery = new Document("username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		String firstName = "";
		String lastName = "";
		String email = "";
		String username = "";
		String password = "";
		String degree = "";
		String major = "";
		String calendarUrl = "";
		ArrayList<String> jobTypes = null;
		ArrayList<String> languages = null;
		String workExperience = null;
		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				firstName = (String)mongoDocument.get("firstName");
				lastName = (String)mongoDocument.get("lastName");
				email = (String)mongoDocument.get("email");
				username = (String)mongoDocument.get("username");
				password = (String)mongoDocument.get("password");
				degree = (String)mongoDocument.get("degree");
				major = (String)mongoDocument.get("major");
				calendarUrl = (String)mongoDocument.get("calendarUrl");
				jobTypes = (ArrayList<String>)mongoDocument.get("jobTypes");
				languages = (ArrayList<String>)mongoDocument.get("languages");
				workExperience = (String)mongoDocument.get("workExperience");
			}
		} finally {
			mongoCursor.close();
		}

		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
		user.setDegree(degree);
		user.setMajor(major);
		user.setCalendarUrl(calendarUrl);
		user.setJobTypes(jobTypes);
		user.setLanguages(languages);
		user.setWorkExperience(workExperience);
		
		return user;
	}
		
	public static Company companyProfilePage(String receivedCompanyname) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		Company company = new Company();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("companies");	
		Document findQuery = new Document("companyname", new Document("$eq", receivedCompanyname));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		String companyname = "";
		String recruitername = "";
		String email = "";
		String password = "";
		String website = "";
		String logo = "";
		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				companyname = (String)mongoDocument.get("companyname");
				recruitername = (String)mongoDocument.getString("recruitername");
				email = (String)mongoDocument.get("email");
				password = (String)mongoDocument.get("password");
				website = (String)mongoDocument.get("website");
				logo = (String)mongoDocument.get("logo");
			}
		} finally {
			mongoCursor.close();
		}

		company.setCompanyname(companyname);
		company.setRecruitername(recruitername);
		company.setEmail(email);
		company.setPassword(password);
		company.setWebsite(website);
		company.setLogo(logo);
		
		return company;
	}
	
	public static ArrayList<Job> displaySavedJobs(String receivedUsername) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		ArrayList<Job> savedJobs = null;
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");	
		Document findQuery = new Document("username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				savedJobs = (ArrayList<Job>)mongoDocument.get("savedJobs");
			}
		} finally {
			mongoCursor.close();
		}

		return savedJobs;
		
	}
	
	public static String getCalendarUrl(String receivedUsername) {
		
		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		
		String calendarUrl = "";
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");	
		Document findQuery = new Document("username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		try {
			if(mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				calendarUrl = (String)mongoDocument.get("calendarUrl");
			}
		} finally {
			mongoCursor.close();
		}

		return calendarUrl;
		
	}
	
	public static ArrayList<Job> getAllJobs() {

		connect("mongodb://user:user@ds125255.mlab.com:25255/cs201");
		ArrayList<Job> result = new ArrayList<Job>();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("jobs");
		MongoCursor<Document> cursor = mongoCollection.find().iterator();

		try {
			while (cursor.hasNext()) {
			    Document job = cursor.next();
			    Job temp = new Job();
			    temp.setCompanyName((String)job.get("companyname"));
			    temp.setDescription((String)job.get("description"));
			    temp.setDeadline((String)job.get("deadline"));
			    temp.setJobTitle((String)job.get("jobTitle"));
			    temp.setLocation((String)job.get("location"));
			    temp.setImageUrl((String)job.get("imageUrl"));
			    temp.setDegree((String)job.get("degree"));
			    temp.setMajor((String)job.get("major"));
			    temp.setWebsite((String)job.get("website"));
			    temp.setJobType((String)job.get("jobType"));
			    result.add(temp);
		    }
		} 
		finally {
			cursor.close();
		}
		   
		return result;
	}
	
}