package dao;
import static org.junit.Assert.assertEquals;

import org.testng.annotations.Test;

import bean.User;

public class TestLogin{
@Test
	public void loginSuccess() {
		LoginDao user = new LoginDao();
		User user1 = new User();
		long num = 9093638884l;
		user1 = user.validate(num, "password");
		System.out.println("---------------test running-----------------------------------------");
	
		assertEquals("login successful", "ankita", user1.getFirst());
		
	}
@Test
public void loginFail() {
	LoginDao user = new LoginDao();
	User user1 = new User();
	long num = 9093638888l;
	user1 = user.validate(num, "pass");
	System.out.println("---------------test running-----------------------------------------");

	assertEquals("login successful",null, user1.getFirst());
	
}
}
