import java.net.UnknownHostException;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class ConnectDB { 
   
   public static void main( String args[] ) throws UnknownHostException {  
        
	   MongoClientURI uri  = new MongoClientURI("mongodb://user:user@ds125255.mlab.com:25255/cs201"); 
	   MongoClient client = new MongoClient(uri);
       MongoDatabase database = client.getDatabase(uri.getDatabase());
       MongoCollection<Document> collection = database.getCollection("users");
       //Document document = new Document("Username", "Ronak");
       Document document = new Document("Username", "Test");
       collection.insertOne(document);
       
       System.out.println(login(collection, "Ronak", "Ronak"));
       
       //client.close();
         
   } 
   
   public static boolean login(MongoCollection<Document> collection, String username, String password) {
	   
	   Document findQuery = new Document("Username", new Document("$eq", username));
       MongoCursor<Document> cursor = collection.find(findQuery).iterator();
	   
       try {
           while (cursor.hasNext()) {
               Document doc = cursor.next();
               System.out.println(doc.get("Username"));
           }
       } finally {
           cursor.close();
       }
       
	   
	   return false;
   }
   
}