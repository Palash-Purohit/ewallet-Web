package service;

import bean.User;
import dao.LoginDao;

public class Service {
	

	public static User logindao(long mobile,String pass)
	{ 
		System.out.println(pass +" "+mobile +" in service class");
		return(LoginDao.validate(mobile,pass));	
	}
	
	public static boolean registerdao(User user)
	{
		System.out.println(user.getDob() + " inside service class");
		return(dao.registerdao.register(user));
		
	}

}
