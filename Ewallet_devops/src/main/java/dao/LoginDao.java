package dao;

import java.sql.*;
import bean.User;
import connection.ConnectionManager;
public class LoginDao {
	public static User validate(long mobile,String pass){  
		boolean status=false;  
		User user1=new User();
		try{  
			System.out.println("Inside dao class" + mobile + pass);
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=ConnectionManager.getConnection();
			PreparedStatement ps=con.prepareStatement("select user_id,first_name,last_name,phone from user where phone=? and pswd=? ");  
		ps.setLong(1,mobile);  
		ps.setString(2,pass);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();
		
		user1.setFirst(rs.getString(2));
		user1.setLast(rs.getString(3));
		user1.setPhone(rs.getLong(4));
	
		System.out.println("User_id " + rs.getInt(1));
		System.out.println("First name " + user1.getFirst());
		System.out.println("Last name" + user1.getLast());
		System.out.println("Phone number " + user1.getPhone());
		System.out.println("status of query " +" " +status);
		System.out.println("True");
		       con.close();
		       ps.close();
		}
		catch(Exception e)
		{
		System.out.println("False is working");
		e.printStackTrace();
		}  		    
	return user1;
}
	
}
