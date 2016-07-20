package service;

import bean.TransactBean;
import dao.TransactDao;

public class TansactService {
	public int booking(TransactBean tb) {
		/* Price price=new Price(); */
		TransactDao tDao = new TransactDao();
		int b = tDao.sendMoney(tb);
		return b;
	}
	
}
