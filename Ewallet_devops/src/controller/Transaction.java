package controller;

import service.TansactService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.TransactBean;

/**
 * Servlet implementation class Transaction
 */
public class Transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transaction() {
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		TansactService ts=new TansactService();
		String name = req.getParameter("name");
		System.out.println(name);
		TransactBean transact=new TransactBean();
		System.out.println(req.getParameter("uname"));
		transact.setUmobile(Long.parseLong(req.getParameter("uname")));
		System.out.println(transact.getUmobile());
		transact.setbenName(name);
		transact.setMobile(Long.parseLong(req.getParameter("mobile")));
		System.out.println(transact.getMobile());
		
		transact.setAmount(Integer.parseInt(req.getParameter("amount")));
		transact.setdetails(req.getParameter("detail"));
		
		
		int b=ts.booking(transact);
		System.out.println(b);
		
		
		req.setAttribute("name", name);
        req.getRequestDispatcher("success.jsp").forward(req, resp);
		
	}

}
