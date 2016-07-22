package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.ConnectionManager;
import bean.User;

public class registerdao {
	public static boolean register(User user){  
		boolean status=false;  
		
		try{   	  
			Connection con=ConnectionManager.getConnection(); 
		PreparedStatement ps1=con.prepareStatement("select * from user where phone=?"); 
		ps1.setLong(1,user.getPhone());
		ResultSet rs=ps1.executeQuery();
		PreparedStatement ps=con.prepareStatement(  
				"insert into user (first_name, last_name, dob, gender, email, pswd, phone) VALUES (?,?,?,?,?,?,?)");  
		if(rs.next())
		{
			System.out.println("User already exists");
		}
		else
			{
					ps.setString(1,user.getFirst());  
					ps.setString(2,user.getLast());
					ps.setString(3,user.getDob());
					ps.setString(4,user.getGender());
					ps.setString(5,user.getEmail());
					ps.setString(6,user.getPassword());	
					ps.setLong(7,user.getPhone());
			      
				int res=ps.executeUpdate();  
				if(res!=0)
				{
				status=true;
				System.out.println("Query is working");
				}         
			}
			con.close();
			ps.close();
			ps1.close();
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("False is working");}  
		return status;  
		}  
}

