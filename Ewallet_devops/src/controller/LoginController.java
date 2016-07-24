package controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.User;
import service.Service;
/**
 * Servlet implementation class logincontroller
 */

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
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
		User userlogin = new User();
		User userlogin1 = new User();
		long mobile = (Long.parseLong(request.getParameter("mobile")));
		userlogin.setPassword(request.getParameter("userpass"));
		userlogin1 = Service.logindao(mobile, userlogin.getPassword());
		if (userlogin1.getFirst() != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("name", userlogin1.getFirst());
			session.setAttribute("phone", userlogin1.getPhone());
			session.setAttribute("password", userlogin.getPassword());
			RequestDispatcher rd = request.getRequestDispatcher("LoginStatus.jsp");
			rd.forward(request, response);
		} else {
			out.print("Incorrect username or password");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
		out.close();
	}
}