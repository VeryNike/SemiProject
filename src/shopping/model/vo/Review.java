package shopping.model.vo;

public class Review {
	private String itemCode;
	private int rnum;
	private String name;
	private String content;
	private String cdate;
	private String status;
	private String star;
	
	public Review() {}
	
	public Review(String itemCode, int rnum, String name, String content, String cdate, String status, String star) {
		super();
		this.itemCode = itemCode;
		this.rnum = rnum;
		this.name = name;
		this.content = content;
		this.cdate = cdate;
		this.status = status;
		this.star = star;
	}

	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	
	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
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
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getstar() {
		return star;
	}
	public void setstar(String star) {
		this.star = star;
	}

	@Override
	public String toString() {
		return "Review [itemCode=" + itemCode + ", rnum=" + rnum + ", name=" + name + ", content=" + content
				+ ", cdate=" + cdate + ", status=" + status + ", star=" + star + "]";
	}
	
}
