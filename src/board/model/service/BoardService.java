package board.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;


public class BoardService {

	public int getListCount() {
		
		Connection conn = getConnection();
		
		int result = new BoardDAO().getListCount(conn);
		
		close(conn);
		
		return result;
	}

	public ArrayList<Board> selectList() {
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDAO().selectList(conn);
		
		close(conn);
		
		return list;
	
	}

	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDAO().insertBoard(conn, b);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public Board selectBoard(int no) {
		Connection conn = getConnection();
		
		BoardDAO bDAO = new BoardDAO();
		
		Board board = null;
		
		board = bDAO.selectBoard(conn,no);
		
		close(conn);
		
		return board;
		
	}

	public int updateBoard(Board board) {
		
		Connection conn = getConnection();
		
		int result = new BoardDAO().updateBoard(conn, board);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
			
		return result;
	}

	public int deleteBoard(int no) {
		Connection conn = getConnection();
		
		int result = new BoardDAO().deleteBoard(conn, no);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}