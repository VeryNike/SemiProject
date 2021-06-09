package user.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import user.model.dao.userDAO;
import user.model.vo.User;

public class userService {

	public User loginUser(User user) {
		Connection conn = getConnection();
		
		User loginUser = new userDAO().loginUser(conn, user);
	
		close(conn);
		return loginUser;
	}

	public int insertUser(User user) {
		Connection conn = getConnection();
		
		int result = new userDAO().insertUser(conn,user);
		if(result>0) {
			commit(conn);			
		}else {
			rollback(conn);
		}
		return 0;
	}



}
