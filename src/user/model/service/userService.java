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
		return result;
	}

	public int IdCheck(String inputId) {
		Connection conn = getConnection();
		
		int result = new userDAO().IdCheck(conn,inputId);
		
		return result;
	}

	public User selectUser(String userId) {
		Connection conn =getConnection();
		User user = new userDAO().selectUser(conn,userId);
		close(conn);
		
		return user;
	}

	
	public int updateUser(User myUser) {
		Connection conn = getConnection();
		int result = new userDAO().updateUser(conn,myUser);
		
		if(result>0){
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}
	
	
	public int delete(String userId) {
		Connection conn =getConnection();

		int result = new userDAO().deleteUser(conn,userId);
		

		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}

		close(conn);
		
		return result;
	}
}
