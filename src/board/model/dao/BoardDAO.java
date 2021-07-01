package board.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Board;
import board.model.vo.Reply;

public class BoardDAO {
	
	private Properties prop = new Properties(); 
	
	
	public BoardDAO() {
		String fileName = BoardDAO.class.getResource("/query/board/board-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public int getListCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("listCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		
		return result;
	}


	public ArrayList<Board> selectList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = conn.createStatement();

			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Board b = new Board(rset.getInt("B_NO"),
									rset.getInt("B_TYPE"),
									rset.getString("CATE_NM"),
									rset.getString("PS_TITLE"),
									rset.getString("PS_CONTENT"),
									rset.getString("PS_WRITER"),
									rset.getDate("PS_DATE"),
									rset.getInt("COMMENT_NO"),
									rset.getString("STATUS"));
				list.add(b);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		return list;
	}


	public int insertBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		

		String query = prop.getProperty("insertBoard");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, b.getbType());
			pstmt.setInt(2, Integer.parseInt(b.getCategory()));
			pstmt.setString(3, b.getPsTitle());
			pstmt.setString(4, b.getPsContent());
			pstmt.setString(5, b.getPsWriter());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public Board selectBoard(Connection conn, int no) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board board = null;
		
		String query = prop.getProperty("boardDetail");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, no);
			rset =pstmt.executeQuery();
			
			if(rset.next()) {
				board = new Board (rset.getInt("B_NO"),
								   rset.getString("CATE_NO"),
								   rset.getString("PS_TITLE"),
								   rset.getString("PS_CONTENT"),
								   rset.getString("PS_WRITER"),
								   rset.getDate("PS_DATE"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return board;
	}


	public int updateBoard(Connection conn, Board board) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateBoard");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(board.getCategory()));
			pstmt.setString(2, board.getPsTitle());
			pstmt.setString(3, board.getPsContent());
			pstmt.setInt(4, board.getbNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int deleteBoard(Connection conn, int no) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteBoard");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, no);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertReply(Connection conn, Reply r) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,r.getCommentContent());
			pstmt.setString(2,r.getID());
			pstmt.setInt(3, r.getB_no());
			
			result =pstmt.executeUpdate();
			System.out.println("DAO에서의 result" +result);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}

	public ArrayList<Reply> listReply(Connection conn, int no) {
		PreparedStatement pstmt = null;
		ResultSet result =null;
		ArrayList<Reply> replys = new ArrayList<Reply>();
		
		String query = prop.getProperty("listReply");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, no);
			result = pstmt.executeQuery();
			while(result.next()) {
				replys.add(new Reply(result.getInt("COMMENT_NM"),
									result.getString("COMMENT_CONTENT"),
									result.getDate("WRITE_DATE"),
									result.getString("ID"),
									result.getInt("B_NO"),
									result.getString("STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(result);
			close(pstmt);
		}
		
		
		return replys;
	}


	public int updateReply(Connection conn, Reply r) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("updateReply");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, r.getCommentContent());
			pstmt.setInt(2, r.getB_no());
			pstmt.setInt(3, r.getCNum());
			pstmt.setString(4, r.getID());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}


	public int deleteReply(Connection conn, Reply r) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteReply");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, r.getB_no());
			pstmt.setInt(2, r.getCNum());
			pstmt.setString(3, r.getID());
			result = pstmt.executeUpdate();
			System.out.println("r:"+r);
			System.out.println("result:"+result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}


}