package service;

import bean.TransactBean;
import dao.TransactDao;

public class TansactService {
	public int booking(TransactBean tb) {
		TransactDao tDao = new TransactDao();
		return tDao.sendMoney(tb);
	}
	
}
