package service;

import java.sql.SQLException;

import bean.BenBean;
import dao.BeneficiaryDAO;

public class BenService {
	
	public  void addBeneficiary(BenBean benBean) {
		
		
		BeneficiaryDAO  beneficiarydao =new BeneficiaryDAO();
		
		 beneficiarydao.addBeneficiary(benBean);
		
		
		
		
		
		
		
		
	}

}
