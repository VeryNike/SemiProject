/**
 * 
 */
package home.model.dao;

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

import home.model.vo.CheckList;
import home.model.vo.PT;
import user.model.dao.userDAO;


public class HomeDAO {
	
	public HomeDAO() {
		String fileName = userDAO.class.getResource("/query/home-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private Properties prop = new Properties();

	public ArrayList<PT> selectPtList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<PT> list = new ArrayList<PT>();
		
		String query = prop.getProperty("selectPtList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				PT p = new PT(rset.getInt("pt_no"),rset.getString("pt_type"),rset.getString("pt_name"));
				
				list.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<CheckList> selectCheckList(Connection conn, String user) {
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		ArrayList<CheckList> list = new ArrayList<CheckList>();
		
		String query = prop.getProperty("selectCheckList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user);
			
			rset = pstmt.executeQuery();
			
			while (rset.next()) {
				CheckList c = new CheckList(rset.getInt("list_date"), rset.getString("list_content"), rset.getString("id"));
				
				list.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	public int countList(Connection conn, CheckList c) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int count = 0;
		
		String query = prop.getProperty("countList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, c.getListDate());
			pstmt.setString(2, c.getUser());
			
			rset = pstmt.executeQuery();
			if (rset.next()) { 
				count = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}

	public int updateCheckList(Connection conn, CheckList c) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("UpdateCheckList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, c.getListContent());
			pstmt.setString(2, c.getUser());
			pstmt.setInt(3, c.getListDate());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertCheckList(Connection conn, CheckList c) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("InsertCheckList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, c.getListDate());
			pstmt.setString(2, c.getListContent());
			pstmt.setString(3, c.getUser());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}





}
