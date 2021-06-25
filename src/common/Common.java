package common;

public class Common {
	//public static final String WEB_URL = "WEB-INF/view";
	public static final String ERR_URL = "WEB-INF/view/common/errorPage.jsp";
	
	
	/////////////////////////2021-06-25 + ///////////////////////////////////
	public static String nvl(String str) {
		return str == null ? "" : str;
	}

	public static String nvl(String str, String repl) {
		if (nvl(str).trim().equals("")) {
			return repl;
		}
		return str;
	}
     

}
