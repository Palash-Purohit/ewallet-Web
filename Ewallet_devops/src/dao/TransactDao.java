package dao;

import bean.TransactBean;
import connection.ConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TransactDao {
	int id = 0;
	TransactBean tb = new TransactBean();

	public int sendMoney(TransactBean tb1) {
		System.out.println(tb1.getAmount());
		Connection con = ConnectionManager.getConnection();
		try {
			int flag;
			Statement stmt = con.createStatement();
			Statement stmt1 = con.createStatement();
			System.out.println(tb1.getUmobile());
			ResultSet rs = stmt.executeQuery("select * from user where phone=" + tb1.getUmobile() + ";");
			ResultSet rs1 = stmt1.executeQuery("select * from user where phone=" + tb1.getMobile() + ";");
			if (!rs.next()) {
				System.out.println("no data");
				flag = 0;
			} else {
				do {
					System.out
							.println("User Details:" + rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
					tb.setuserId(rs.getString(2));
					tb.setUmobile(rs.getLong(8));
					tb.setAmount(rs.getInt(7));
					System.out.println("User Details" + tb.getuserId() + " " + tb.getUmobile() + " " + tb.getAmount());
					flag = 1;
				} while (rs.next());
			}
			System.out.println(flag);
			TransactBean tb2 = new TransactBean();
			while (rs1.next()) {
				System.out.println(
						"Beneficiary Details:" + rs1.getInt(1) + "  " + rs1.getString(2) + "  " + rs1.getString(3));
				tb2.setuserId(rs1.getString(2));
				tb2.setUmobile(rs1.getLong(8));
				tb2.setAmount(rs1.getInt(7));
				System.out.println(
						"Beneficiary Dteails:" + tb2.getuserId() + " " + tb2.getUmobile() + " " + tb2.getAmount());
			}
			String query = "update user set amount = ? where phone = ?";
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setInt(1, tb.getAmount() - tb1.getAmount());
			preparedStmt.setLong(2, tb1.getUmobile());
			PreparedStatement preparedStmt1 = con.prepareStatement(query);
			preparedStmt1.setInt(1, tb2.getAmount() + tb1.getAmount());
			preparedStmt1.setLong(2, tb1.getMobile());
			String insert1 = "insert into transaction values(?,?,?,?,?,?,?)";
			PreparedStatement insertstmt1 = con.prepareStatement(insert1);
			String insert = "insert into transaction values(?,?,?,?,?,?,?)";
			PreparedStatement insertstmt = con.prepareStatement(insert);
			try{
			insertstmt1.setString(1, tb2.getuserId());
			insertstmt1.setLong(2, tb2.getUmobile());
			insertstmt1.setString(3, tb.getuserId());
			insertstmt1.setLong(4, tb.getUmobile());
			insertstmt1.setInt(5, tb1.getAmount());
			insertstmt1.setInt(6, 0);
			insertstmt1.setString(7, tb1.getdetails());
			
			insertstmt.setString(1, tb.getuserId());
			insertstmt.setLong(2, tb.getUmobile());
			insertstmt.setString(3, tb2.getuserId());
			insertstmt.setLong(4, tb2.getUmobile());
			insertstmt.setInt(5, 0);
			insertstmt.setInt(6, tb1.getAmount());
			insertstmt.setString(7, tb1.getdetails());
			preparedStmt.executeUpdate();
			preparedStmt1.executeUpdate();
			insertstmt.executeUpdate();
			insertstmt1.executeUpdate();}
			catch(SQLException e){
				e.printStackTrace();
			}
			con.close();
			stmt.close();
			stmt1.close();
			preparedStmt.close();
			preparedStmt1.close();
			return 1;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		/*
		 * String query="UPDATE user SET amount="+value, column2=value2,...
		 * WHERE some_column=some_value";
		 */
		return 0;
	}

}
