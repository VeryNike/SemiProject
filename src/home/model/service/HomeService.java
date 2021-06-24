package home.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import static common.JDBCTemplate.close;
import java.sql.Connection;
import java.util.ArrayList;

import home.model.dao.HomeDAO;
import home.model.vo.CheckList;
import home.model.vo.PT;

public class HomeService {
	
	public ArrayList<PT> selectPtList() {
		Connection conn = getConnection();
		
		ArrayList<PT> list = new HomeDAO().selectPtList(conn);
		
		close(conn);

		return list;
	}

	public ArrayList<CheckList> selectCheckList(String user) {
		Connection conn = getConnection();
		
		ArrayList<CheckList> list = new HomeDAO().selectCheckList(conn, user);
		
		if (list != null) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}

	public int saveCheckList(CheckList c) {
		Connection conn = getConnection();
		HomeDAO dao = new HomeDAO();
		int result = dao.countList(conn, c);
		if (result > 0) {
			int update = dao.updateCheckList(conn, c);
			if (update > 0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			return update;
		} else {
			int insert = dao.insertCheckList(conn, c);
			if (insert > 0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			return insert;
		}
	}
	

}
