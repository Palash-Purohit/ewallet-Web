package dao;

import connection.ConnectionManager;
import bean.BenBean;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class BeneficiaryDAO {
	private Connection con = null;
	private PreparedStatement ps1 = null;
	private PreparedStatement ps0 = null;
	private ResultSet rs0 = null;
	public void addBeneficiary(BenBean benBean) {
		try {

			con = ConnectionManager.getConnection();
			ps0 = con.prepareStatement("select * from user where phone =?");
			ps0.setLong(1, benBean.getMobile());
			rs0 = ps0.executeQuery();
			if (rs0.next()) {
				ps1 = con.prepareStatement("insert into Beneficiary  values(10003,?,?,?)");
				ps1.setLong(1, benBean.getMobile());
				ps1.setString(2, benBean.getName());
				ps1.setString(3, benBean.getEmail());
				ps1.executeUpdate();
			} else {
				System.out.println("Unknown User.....Register here !!!!!!");
			}
			con.close();
			ps0.close();
			ps1.close();
			} catch (Exception e) {
			System.out.println("Exception in View ");
			e.printStackTrace();
		}
	}
}