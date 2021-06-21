package home.model.vo;

public class PT {
	
	private int ptNo;
	private String ptType;
	private String ptName;

	public PT() {
	}

	public PT(int ptNo, String ptType, String ptName) {
		super();
		this.ptNo = ptNo;
		this.ptType = ptType;
		this.ptName = ptName;
	}

	public int getPtNo() {
		return ptNo;
	}

	public void setPtNo(int ptNo) {
		this.ptNo = ptNo;
	}

	public String getPtType() {
		return ptType;
	}

	public void setPtType(String ptType) {
		this.ptType = ptType;
	}

	public String getPtName() {
		return ptName;
	}

	public void setPtName(String ptName) {
		this.ptName = ptName;
	}

	@Override
	public String toString() {
		return "PT [ptNo=" + ptNo + ", ptType=" + ptType + ", ptName=" + ptName + "]";
	}

}
