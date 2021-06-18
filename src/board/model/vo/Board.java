package board.model.vo;

import java.sql.Date;

public class Board {

	private int boardNo;
	private String postTitle;
	private String postContent;
	private int numOfViews;
	private String id;
	private Date createDate;
	private Date modifyDate;
	private String status;
	
	public Board() {}
	
	

	public Board(int boardNo, String postTitle, String postContent, int numOfViews, String id, Date createDate,
			Date modifyDate, String status) {
		super();
		this.boardNo = boardNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.numOfViews = numOfViews;
		this.id = id;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}



	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}


	public int getNumOfViews() {
		return numOfViews;
	}

	public void setNumOfViews(int numOfViews) {
		this.numOfViews = numOfViews;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", postTitle=" + postTitle + ", postContent=" + postContent
				+ ", numOfViews=" + numOfViews + ", id=" + id + ", createDate=" + createDate + ", modifyDate="
				+ modifyDate + ", status=" + status + "]";
	}

	
	
	
	
		
}
