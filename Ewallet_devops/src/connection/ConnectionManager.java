package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionManager {

	static final String url = "jdbc:mysql://172.29.180.136:3306/wallet";
	static final String dbUsername = "root";
	static final String dbPassword = "";

	public static Connection getConnection (){
	Connection conn = null;
	try {
		// load the JDBC-ODBC Bridge driver
		Class.forName("com.mysql.jdbc.Driver");
		// connect to db using DriverManager
		System.out.println("The Jdbc URL is " + url);
		conn = DriverManager.getConnection(url, dbUsername, dbPassword);
		} catch (ClassNotFoundException e){
		e.printStackTrace();
		}
	catch (SQLException e1){
				e1.printStackTrace();
		}
		return conn;
		}
}