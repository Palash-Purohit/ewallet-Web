package controller;

import java.io.IOException;
import java.io.PrintWriter;
//import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


import bean.User;
import service.Service;

import java.util.Date;

/**
 * Servlet implementation class registercontoller
 */
public class registercontoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registercontoller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		User user=new User();
		
	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
	try {
		Date date = formatter.parse(request.getParameter("dateOfBirth"));
		System.out.println(date);
		String dob=date.toString();
		user.setDob(dob);
	} catch (ParseException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	} 
		//System.out.println(date);


		
	
		//String dob=request.getParameter("dateofBirth");
		
		user.setFirst(request.getParameter("firstName"));  
		user.setLast(request.getParameter("lastName"));  
		user.setGender(request.getParameter("gender"));  
		user.setPhone(Long.parseLong(request.getParameter("phoneNumber")));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		System.out.println(user.getDob() +" "+ user.getEmail() +" "+ user.getFirst() +" "+ user.getGender() +" "+user.getPassword() +" "+user.getLast() +" "+user.getPhone());
		
		if(Service.registerdao(user))
		{	
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.forward(request,response); 
	        out.println("You have been registered successfully!!");
	        
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("New_Registration.jsp");  
	        rd.forward(request,response); 
	        out.println("User already exists..."
					+ "please try again...");
			
		}
		
}

}

