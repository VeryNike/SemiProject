package diet.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import diet.model.dao.dDAO;
import diet.model.vo.Diet;

public class dService {
	
	public ArrayList<Diet> listDiet(String userId) {
		Connection conn = getConnection();
		ArrayList<Diet> list= new dDAO().listDiet(conn,userId);
		close(conn);
		return list;
	}
	
	public ArrayList<Diet> insertDiet(Diet d) {
		Connection conn = getConnection();
		
		dDAO dao = new dDAO();
		int result = dao.insertDiet(conn,d);
		
		ArrayList<Diet> list= null;
		
		if(result>0) {
			commit(conn);
			list = dao.listDiet(conn, d.getUserId());
			
		}else {
			rollback(conn);
		}
		
		close(conn);
		return list;
	}
	

	public int deleteD(int ch) {
		Connection conn = getConnection();
		int result = new dDAO().deleteD(conn,ch);
		
		if(result>0) {
			commit(conn);
			System.out.println("삭제 성공");
		}else {
			rollback(conn);
			System.out.println("삭제 실패");
		}

		return result;
	}



	
}
