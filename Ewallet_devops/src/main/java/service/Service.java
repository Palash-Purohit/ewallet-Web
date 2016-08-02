package service;

import bean.User;
import dao.LoginDao;

public class Service {
	public static User logindao(long mobile,String pass)
	{ 
	return LoginDao.validate(mobile,pass);	
	}
	
	public static boolean registerdao(User user)
	{
		return dao.registerdao.register(user);
	}

}
