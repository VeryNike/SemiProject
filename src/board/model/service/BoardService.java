package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.Reply;


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
	
	public ArrayList<Reply> insertReply(Reply r) {
		Connection conn = getConnection();
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.insertReply(conn,r);
		
		ArrayList<Reply> replys = null;
	
		if (result >0) {
			commit(conn);
			replys = dao.listReply(conn,r.getB_no());
			
		}else {
			rollback(conn);
		}
		return replys;

	}

	public ArrayList<Reply> listReply(int no) {
		Connection conn = getConnection();
		ArrayList<Reply> replys = new BoardDAO().listReply(conn, no);
		close(conn);
		
		return replys;
	}

	public ArrayList<Reply> updateReply(Reply r) {
		Connection conn = getConnection();
		BoardDAO dao = new BoardDAO();
		int result = dao.updateReply(conn,r);
		ArrayList<Reply> replys = null;
		
		if(result >0) {
			commit(conn);
			replys = dao.listReply(conn, r.getB_no());
		}else {
			rollback(conn);
		}
		close(conn);
		return replys;
	}

	public int deleteReply(Reply r) {
		Connection conn = getConnection();
		
		int result = new BoardDAO().deleteReply(conn, r);
		System.out.println("result:" +result);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		System.out.println(result);
				
		return result;
	}
	
	public int ReplyCount(int bno) {
		
		Connection conn = getConnection();
		
		int result = new BoardDAO().ReplyCount(conn, bno);
		
		
		close(conn);
		
		return result;
	}

	


}
