package board.model;

public class Board {

	private int bNo;
	private String postTitle;
	private String postContent;
	private String postUpload;
	private int numOfViews;
	private String id;
	private String boardType;
	
	public Board(int bNo, String postTitle, String postContent, String postUpload, int numOfViews, String id,
			String boardType) {
		super();
		this.bNo = bNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postUpload = postUpload;
		this.numOfViews = numOfViews;
		this.id = id;
		this.boardType = boardType;
	}

	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
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
	public String getPostUpload() {
		return postUpload;
	}
	public void setPostUpload(String postUpload) {
		this.postUpload = postUpload;
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
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	
	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", postTitle=" + postTitle + ", postContent=" + postContent + ", postUpload="
				+ postUpload + ", numOfViews=" + numOfViews + ", id=" + id + ", boardType=" + boardType + "]";
	}
	
	
}
