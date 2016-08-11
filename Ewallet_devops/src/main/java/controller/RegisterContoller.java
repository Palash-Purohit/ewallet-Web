package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import bean.User;
import service.Service;
import java.util.Date;

/**
 * Servlet implementation class RegisterContoller
 */
public class RegisterContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterContoller() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		User user = new User();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		try {
			Date date = formatter.parse(request.getParameter("dateOfBirth"));
			System.out.println(date);
			String dob = date.toString();
			user.setDob(dob);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		user.setFirst(request.getParameter("firstName"));
		user.setLast(request.getParameter("lastName"));
		user.setGender(request.getParameter("gender"));
		user.setPhone(Long.parseLong(request.getParameter("phoneNumber")));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		System.out.println(user.getDob() + " " + user.getEmail() + " " + user.getFirst() + " " + user.getGender() + " "
				+ user.getPassword() + " " + user.getLast() + " " + user.getPhone());
		if (Service.registerdao(user)) {
			RequestDispatcher rd = request.getRequestDispatcher("RegistratonStatus.jsp");
			rd.forward(request, response);
			out.println("You have been registered successfully!!");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("RegistratonStatusFail.jsp");
			rd.forward(request, response);
			out.println("User already exists..." + "please try again...");
		}
	}
}
