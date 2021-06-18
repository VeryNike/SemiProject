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
import board.model.vo.PageInfo;

public class BoardDAO {
	
	private Properties prop = new Properties(); 
	
	
	public BoardDAO() {
		String fileName = BoardDAO.class.getResource("/sql/board/board-query.properties").getPath();
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


	public ArrayList<Board> slectList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		String query = prop.getProperty("selectList");
		
		int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int endRow = startRow + pi.getBoardLimit() -1 ;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Board b = new Board(rset.getInt("boardNo"),
									rset.getString("postTitle"),
									rset.getString("postContent"),
									rset.getInt("numofview"),
									rset.getString("id"),
									rset.getDate("createDate"),
									rset.getDate("modifyDate"),
									rset.getString("status"));
				list.add(b);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	
	
}
