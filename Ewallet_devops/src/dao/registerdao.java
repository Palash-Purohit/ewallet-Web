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
			System.out.println( "in dao class " +user.getDob() +" "+ user.getEmail() +" "+ user.getFirst() +" "+ user.getGender() +" "+user.getPassword() +" "+user.getLast() +" "+user.getPhone());
	//add user
			
//			PreparedStatement ps=con.prepareStatement(  
//		"insert into user (first_name, last_name, dob, gender, email, pswd, phone) VALUES (?,?,?,?,?,?,?)");  
//		ps.setString(1,user.getFirst());  
//		ps.setString(2,user.getLast());
//		ps.setString(3,user.getDob());
//		ps.setString(4,user.getGender());
//		ps.setString(5,user.getEmail());
//		ps.setString(6,user.getPassword());	
//		ps.setLong(7,user.getPhone());
	
		//check if user already exists
		PreparedStatement ps1=con.prepareStatement("select * from user where phone=?"); 
		
		ps1.setLong(1,user.getPhone());
		ResultSet rs=ps1.executeQuery();
		if(rs.next())
		{
			System.out.println("User already exists");
		}
		else
			{
			
			PreparedStatement ps=con.prepareStatement(  
					"insert into user (first_name, last_name, dob, gender, email, pswd, phone) VALUES (?,?,?,?,?,?,?)");  
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
				//System.out.println(user.getDob() + " inside dao class");
		
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("False is working");}  
		return status;  
		}  
}

