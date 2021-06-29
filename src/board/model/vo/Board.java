package board.model.vo;

import java.sql.Date;

public class Board {

	private int bNo;
	private int bType;
	private String category;
	private String psTitle;
	private String psContent;
	private String psWriter;
	private Date psDate;
	private int commentNo;
	private String status;
	
	public Board() {}

	public Board(int bNo, int bType, String category, String psTitle, String psContent, String psWriter, Date psDate,
			int commentNo, String status) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.category = category;
		this.psTitle = psTitle;
		this.psContent = psContent;
		this.psWriter = psWriter;
		this.psDate = psDate;
		this.commentNo = commentNo;
		this.status = status;
	}
	
	public Board(int bNo, String category, String psTitle, String psContent, String psWriter, Date psDate) {
		super();
		this.bNo = bNo;
		this.category = category;
		this.psTitle = psTitle;
		this.psContent = psContent;
		this.psWriter = psWriter;
		this.psDate = psDate;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getbType() {
		return bType;
	}

	public void setbType(int bType) {
		this.bType = bType;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPsTitle() {
		return psTitle;
	}

	public void setPsTitle(String psTitle) {
		this.psTitle = psTitle;
	}

	public String getPsContent() {
		return psContent;
	}

	public void setPsContent(String psContent) {
		this.psContent = psContent;
	}

	public String getPsWriter() {
		return psWriter;
	}

	public void setPsWriter(String psWriter) {
		this.psWriter = psWriter;
	}

	public Date getPsDate() {
		return psDate;
	}

	public void setPsDate(Date psDate) {
		this.psDate = psDate;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentTo(int commentNo) {
		this.commentNo = commentNo;
	}

	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bType=" + bType + ", category=" + category + ", psTitle=" + psTitle
				+ ", psContent=" + psContent + ", psWriter=" + psWriter + ", psDate=" + psDate + ", commentNo="
				+ commentNo + ", status=" + status + "]";
	}
	
	
	
		
}