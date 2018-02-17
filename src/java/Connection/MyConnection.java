package Connection;


import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;


/**
 * Created by Ahuja on 04-Aug-17.
 */
public class MyConnection {

    private static boolean isCon ;
    static MongoClientURI uri;
    static MongoClient mongoClient = null;
    static MongoDatabase database;


        public static MongoClient getConnection(){

            if (!isCon) {

                uri = new MongoClientURI("mongodb://piyush:qwerty12345@cluster0-shard-00-01-20ef4.mongodb.net:27017,cluster0-shard-00-01-20ef4.mongodb.net:27017,cluster0-shard-00-02-20ef4.mongodb.net:27017/test?ssl=true&replicaSet=Cluster0-shard-0&authSource=admin");
                mongoClient = new MongoClient(uri);
                database = mongoClient.getDatabase("test");

                isCon = true ;
            }

            return mongoClient ;

        }

}
