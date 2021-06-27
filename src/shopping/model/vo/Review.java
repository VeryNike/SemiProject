package shopping.model.vo;

import java.sql.Date;

public class Review {
	private String itemCode;
	private String name;
	private String content;
	private Date cdate;
	private String status;
	
	public Review() {}
	
	public Review(String itemCode, String name, String content, Date cdate, String status) {
		super();
		this.itemCode = itemCode;
		this.name = name;
		this.content = content;
		this.cdate = cdate;
		this.status = status;
	}

	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Review [itemCode=" + itemCode + ", name=" + name + ", content=" + content + ", cdate=" + cdate
				+ ", status=" + status + "]";
	}

	
}
