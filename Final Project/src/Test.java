import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class Test { 
   
   public static void main( String args[] ) throws UnknownHostException {  
	   
	   Company company = new Company();
	   company.setCompanyname("usc");
	   company.setEmail("usc@usc.edu");
	   company.setPassword("usc");
	   MongoDB.signUpCompany(company);
	   
   } 
   
}
