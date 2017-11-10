import java.util.ArrayList;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoIterable;

public class MongoDB {
	MongoClientURI mongoURI;
	MongoClient mongoClient;
	MongoDatabase mongoDatabase;
	MongoIterable<String> mongoCollectionGames;

	public MongoDB(String stringURI) {

		mongoURI = new MongoClientURI(stringURI);
		mongoClient = new MongoClient(mongoURI);
		mongoDatabase = mongoClient.getDatabase(mongoURI.getDatabase());
		mongoCollectionGames = mongoDatabase.listCollectionNames();

	}
	
	public void signUpUser(User user) {
		
		String firstName = user.getFirstName();
		String lastName = user.getLastName();
		String email = user.getEmail();
		String password = user.getPassword();
		String degree = user.getDegree();
		String major = user.getMajor();
		ArrayList<String> jobTypes = user.getJobTypes();
		ArrayList<String> languages = user.getLanguages();
		ArrayList<String> workExperience = user.getWorkExperience();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");
		Document mongoDocument = new Document("First Name", firstName)
									  .append("Lat Name", lastName)
									  .append("Email", email)
									  .append("Password", password)
									  .append("Degree", degree)
									  .append("Major", major)
									  .append("Job Types", jobTypes)
									  .append("Languages", languages)
									  .append("Work Experience", workExperience);
		mongoCollection.insertOne(mongoDocument);
		
		return;
		
	}
	
	public void signUpCompany(Company company) {
		
		String companyName = company.getCompanyName();
		String email = company.getEmail();
		String password = company.getPassword();
		String website = company.getWebsite();
		String description = company.getDescription();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("companies");
		Document mongoDocument = new Document("Company Name", companyName)
									  .append("Email", email)
									  .append("Password", password)
									  .append("Website", website)
									  .append("Description", description);
		mongoCollection.insertOne(mongoDocument);
		
		return;
		
	}	

	public boolean login(String receivedUsername, String receviedPassword) {

		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");	
		Document findQuery = new Document("Username", new Document("$eq", receivedUsername));
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		String username = "";
		String password = "";
		
		try {
			while (mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				username = (String)mongoDocument.get("Username");
				password = (String)mongoDocument.get("Password");
			}
		} finally {
			mongoCursor.close();
		}
		
		if((username != "") && (password == receviedPassword)) {
			return true;
		}

		return false;

	}
	
	public void insertJobCompany(Job job) {
		
		String company = job.getCompany();
		String jobTitle = job.getJobTitle();
		ArrayList<String> locations = job.getLocations();
		ArrayList<String> jobTypes = job.getJobTypes();
		String degree = job.getDegree();
		String major = job.getMajor();
		ArrayList<String> languages = job.getLanguages();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("jobs");
		Document mongoDocument = new Document("Company", company)
									  .append("Job Title", jobTitle)
									  .append("Locations", locations)
									  .append("Job Types", jobTypes)
									  .append("Degree", degree)
									  .append("Major", major)
									  .append("Languages", languages);
		mongoCollection.insertOne(mongoDocument);
		
		return;
		
	}
	
	public void saveJobUser(User user, Job job) {
		
		String firstName = user.getFirstName();
		String lastName = user.getLastName();
		
		String company = job.getCompany();
		String jobTitle = job.getJobTitle();
		ArrayList<String> locations = job.getLocations();
		ArrayList<String> jobTypes = job.getJobTypes();
		String degree = job.getDegree();
		String major = job.getMajor();
		ArrayList<String> languages = job.getLanguages();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("users");
		Document mongoDocument = new Document("Company", company)
									  .append("Job Title", jobTitle)
									  .append("Locations", locations)
									  .append("Job Types", jobTypes)
									  .append("Degree", degree)
									  .append("Major", major)
									  .append("Languages", languages);
		
		return;
		
	}
	
	public ArrayList<Job> searchJob(Job jobFilter) {
		
		String company = jobFilter.getCompany();
		String jobTitle = jobFilter.getJobTitle();
		ArrayList<String> locations = jobFilter.getLocations();
		ArrayList<String> jobTypes = jobFilter.getJobTypes();
		String degree = jobFilter.getDegree();
		String major = jobFilter.getMajor();
		ArrayList<String> languages = jobFilter.getLanguages();
		
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("jobs");
		Document findQuery = new Document("Company", new Document("$eq", company))
								  .append("Job Title", new Document("$eq", jobTitle))
								  .append("Locations", new Document("$eq", locations))
								  .append("Job Types", new Document("$eq", jobTypes))
								  .append("Degree", new Document("$eq", degree))
								  .append("Major", new Document("$eq", major))
								  .append("Languages", new Document("$eq", languages));					  			
		MongoCursor<Document> mongoCursor = mongoCollection.find(findQuery).iterator();
		
		ArrayList<Job> returnJobs = null;
		
		try {
			while (mongoCursor.hasNext()) {
				Document mongoDocument = mongoCursor.next();
				Job tempJob = null;
				tempJob.setCompany((String)mongoDocument.get("Company"));
				tempJob.setJobTitle((String)mongoDocument.get("Job Title"));
				tempJob.setLocations((ArrayList<String>) mongoDocument.get("Locations"));
				tempJob.setJobTypes((ArrayList<String>) mongoDocument.get("Job Types"));
				tempJob.setDegree((String)mongoDocument.get("Degree"));
				tempJob.setMajor((String)mongoDocument.get("Major"));
				tempJob.setLanguages((ArrayList<String>)mongoDocument.get("Languages"));
				returnJobs.add(tempJob);
			}
		} finally {
			mongoCursor.close();
		}
		
		return returnJobs;
		
	}
	
	

}
