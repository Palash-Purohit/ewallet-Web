package controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.BenService;
import bean.BenBean;

/**
 * Servlet implementation class Add
 */
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Add() {
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
	
		BenBean bean = new BenBean();
		long mob = Long.parseLong(request.getParameter("mobile"));
		bean.setMobile(mob);
		String name = request.getParameter("name");
		bean.setName(name);
		String email = request.getParameter("email");
		bean.setEmail(email);
		 request.setAttribute("name", name);
		 request.setAttribute("email", email);
		 BenService bs= new BenService();
			bs.addBeneficiary(bean);
		 RequestDispatcher rd=request.getRequestDispatcher("AddStatus.jsp");
	        rd.forward(request,response);
	}

}
