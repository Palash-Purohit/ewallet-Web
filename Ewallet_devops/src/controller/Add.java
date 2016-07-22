package controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.BenService;
import bean.BenBean;


//sample commit



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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	

		BenBean bean = new BenBean();

		long mob = Long.parseLong(request.getParameter("mobile"));

		bean.setMobile(mob);
	//	System.out.println(mob);
		String name = request.getParameter("name");
	//	System.out.println(name);
		bean.setName(name);

		String email = request.getParameter("email");
		//System.out.println(email);
		bean.setEmail(email);

		// request.setAttribute("mobile", mob);

		 request.setAttribute("name", name);
		 request.setAttribute("email", email);
		
		 
		 /* RequestDispatcher reqDispatcher = getServletConfig().getServletContext().getRequestDispatcher("javaPapers.jsp");
	        reqDispatcher.forward(request,response);*/
		/* request.getRequestDispatcher("javaPapers.jsp").forward(request,response);*/
		 RequestDispatcher rd=request.getRequestDispatcher("AddStatus.jsp");
	        rd.forward(request,response);
		 
		 BenService bs= new BenService();
		
			bs.addBeneficiary(bean);
		
		
	}

}
