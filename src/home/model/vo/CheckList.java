package home.model.vo;

public class CheckList {
	private int listDate;
	private String listContent;
	private String user;

	public CheckList() {

	}

	public CheckList(int listDate, String listContent, String user) {
		super();
		this.listDate = listDate;
		this.listContent = listContent;
		this.user = user;
	}

	public int getListDate() {
		return listDate;
	}

	public void setListDate(int listDate) {
		this.listDate = listDate;
	}

	public String getListContent() {
		return listContent;
	}

	public void setListContent(String listContent) {
		this.listContent = listContent;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "CheckList [listDate=" + listDate + ", listContent=" + listContent + ", user=" + user + "]";
	}
	

}
