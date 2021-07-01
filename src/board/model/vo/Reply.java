package board.model.vo;

import java.sql.Date;

public class Reply {
	private int CNum;
	private String CommentContent;
	private Date WriteDate;
	private String ID;
	private int B_no;
	private String status;
	
	public Reply() {}

	public Reply(int cNum, String commentContent, Date writeDate, String iD, int b_no, String status) {
		super();
		CNum = cNum;
		CommentContent = commentContent;
		WriteDate = writeDate;
		ID = iD;
		B_no = b_no;
		this.status = status;
	}
	

	public int getCNum() {
		return CNum;
	}

	public void setCNum(int cNum) {
		CNum = cNum;
	}

	public String getCommentContent() {
		return CommentContent;
	}

	public void setCommentContent(String commentContent) {
		CommentContent = commentContent;
	}

	public Date getWriteDate() {
		return WriteDate;
	}

	public void setWriteDate(Date writeDate) {
		WriteDate = writeDate;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public int getB_no() {
		return B_no;
	}

	public void setB_no(int b_no) {
		B_no = b_no;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Reply [CNum=" + CNum + ", CommentContent=" + CommentContent + ", WriteDate=" + WriteDate + ", ID=" + ID
				+ ", B_no=" + B_no + ", status=" + status + "]";
	}
	
}
