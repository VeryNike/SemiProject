package diet.model.vo;

import java.sql.Date;

public class Diet {
	private int dCode;
	private Date dDate;
	private String memo ;
	private String userId;
	private String status;
	
		
	public Diet() {}

	public Diet(int dCode, Date dDate, String memo, String userId, String status) {
		super();
		this.dCode = dCode;
		this.dDate = dDate;
		this.memo = memo;
		this.userId = userId;
		this.status = status;
	}


	public int getdCode() {
		return dCode;
	}


	public void setdCode(int dCode) {
		this.dCode = dCode;
	}


	public Date getdDate() {
		return dDate;
	}


	public void setdDate(Date dDate) {
		this.dDate = dDate;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Diet [dCode=" + dCode + ", dDate=" + dDate + ", memo=" + memo + ", userId=" + userId + ", status="
				+ status + "]";
	}

}
