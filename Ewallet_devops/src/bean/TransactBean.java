package bean;

import java.math.BigInteger;

public class TransactBean {
	private String user_id;
private Long umobile;
private String b_name;
private Long mobile;
private int amount;

public Long getUmobile() {
	return umobile;
}
public void setUmobile(Long umobile) {
	this.umobile = umobile;
}

public String getUser_id() {
	return user_id;
}
public void setUser_id(String uname) {
	this.user_id = uname;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
private String transfer_detail;

public String getB_name() {
	return b_name;
}
public void setB_name(String b_name) {
	this.b_name = b_name;
}
public Long getMobile() {
	return mobile;
}
public void setMobile(Long string) {
	this.mobile = string;
}
public String getTransfer_detail() {
	return transfer_detail;
}
public void setTransfer_detail(String transfer_detail) {
	this.transfer_detail = transfer_detail;
}

}
