package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import service.Service;
import bean.User;


/**
 * Servlet implementation class logincontroller
 */

public class logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		    
		    User userlogin=new User();
		    User userlogin1=new User();
		    
		    long mobile=(Long.parseLong(request.getParameter("mobile")));
		    System.out.println(mobile);
		    userlogin.setPassword(request.getParameter("userpass"));  
		    System.out.println(userlogin.getPassword());
		    
		    userlogin1=Service.logindao(mobile,userlogin.getPassword());
		    System.out.println(userlogin1.getFirst()!=null); 
		    if(userlogin1.getFirst()!=null)
		    {     
		    	System.out.println("login successful!!");   
		    	HttpSession session = request.getSession(true);
		    	session.setAttribute("name",userlogin1.getFirst());
		    	session.setAttribute("phone",userlogin1.getPhone());
		    	System.out.println("Hi!!! I m In controller"+session.getAttribute("phone"));
	            session.setAttribute("password",userlogin.getPassword());
		    	
	            RequestDispatcher rd=request.getRequestDispatcher("LoginStatus.jsp");
		        rd.forward(request,response);  
		    }  
		    else
		    {  
		        out.print("Incorrect username or password");  
		        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
		        rd.include(request,response);  
		    }  
		          
		    out.close();
		
	}

}