package home.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import java.sql.Connection;
import java.util.ArrayList;

import home.model.dao.HomeDAO;
import home.model.vo.PT;

public class HomeService {
	
	public ArrayList<PT> selectPtList() {
		Connection conn = getConnection();
		
		ArrayList<PT> list = new HomeDAO().selectPtList(conn);
		
		close(conn);

		return list;
	}

}
