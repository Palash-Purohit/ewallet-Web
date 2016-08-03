package dao;

import bean.User;
import dao.LoginDao;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class TestLogin {

	public void loginSuccess() {
		LoginDao user = new LoginDao();
		User user1 = new User();
		long num = 9096438885l;
		user1 = user.validate(num, "password");
		System.out.println("0--------------------------------------------------------");
		
		assertEquals("login successful", "anks", user1.getFirst());
		
	}
		
		public void loginFailure() {
			LoginDao user = new LoginDao();
			User user1 = new User();
			long num = 9096438885l;
			user1 = user.validate(num, "password");
			assertEquals("login failure", "anks", user1.getFirst());


	}

}
