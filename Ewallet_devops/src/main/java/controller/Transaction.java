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
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TansactService ts=new TansactService();
		String name = req.getParameter("name");
		TransactBean transact=new TransactBean();
		transact.setUmobile(Long.parseLong(req.getParameter("uname")));
		System.out.println(transact.getUmobile());
		transact.setbenName(name);
		transact.setMobile(Long.parseLong(req.getParameter("mobile")));
		transact.setAmount(Integer.parseInt(req.getParameter("amount")));
		transact.setdetails(req.getParameter("detail"));
		int b=ts.booking(transact);
		System.out.println(b);
		req.setAttribute("name", name);
        req.getRequestDispatcher("LoginStatus.jsp").forward(req, resp);
	}

}
