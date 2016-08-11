package connection;

//import java.io.File;
//import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//import java.util.ResourceBundle;
import java.util.ResourceBundle;
//import org.apache.logging.log4j.core.*;
//import org.apache.velocity.texen.util.PropertiesUtil;


public class ConnectionManager {

	public static Connection getConnection(){
		//String env=null;
		String url = null;
		String dbUsername = null;
		String dbPassword =null;
		String classForName=null;
		
		 Connection conn = null;
	//	Properties prop = new Properties();
	//	InputStream input = null;
		//File file1 = new File("Profile.properties");
		try {

		//	input =new FileInputStream("Profile.properties");

			// load a properties file
	//		prop.load(input);

			
		//	prop.load(PropertiesUtil.class.getClassLoader().getResourceAsStream("/main/resources/Profile.properties")); 
			
			System.out.println("---------------connection running----------------");
			
			//env=System.getenv("ENV");
			//System.out.println(System.getenv("ENV"));
		/*	
			if(env!=null){
				System.out.println("evironment is ="+env);
			ResourceBundle resourceBundle = ResourceBundle.getBundle(env+"_db");
		// prop = resourceBundle.getString("driverClass"); 
						
			// get the property value and print it out
			System.out.println(resourceBundle.getString("driverClass"));
		classForName=resourceBundle.getString("driverClass");
		  url =resourceBundle.getString("connectionURL");
		  dbUsername=resourceBundle.getString("username");
		 dbPassword =resourceBundle.getString("password");
			}
			else{*/
				ResourceBundle resourceBundle = ResourceBundle.getBundle("profile");
				// prop = resourceBundle.getString("driverClass"); 
								
					// get the property value and print it out
					System.out.println(resourceBundle.getString("driverClass"));
				classForName=resourceBundle.getString("driverClass");
				  url =resourceBundle.getString("connectionURL");
				  dbUsername=resourceBundle.getString("username");
				 dbPassword =resourceBundle.getString("password");
				
			//}
			}
		
			catch (Exception ex) {
				ex.printStackTrace();
			} 
	
	try {
		// load the JDBC-ODBC Bridge driver
		Class.forName(classForName);
		// connect to db using DriverManager
		System.out.println("The Jdbc URL is " + url);
		conn = DriverManager.getConnection(url, dbUsername, dbPassword);
		} 
	catch (ClassNotFoundException e){
		e.printStackTrace();
	//	 LOGGER.log("context", e);
		}
	catch (SQLException e1){
				e1.printStackTrace();
		}
		return conn;
		}
}
	
