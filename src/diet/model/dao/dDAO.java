package diet.model.dao;

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

import diet.model.vo.Diet;

public class dDAO {

	private Properties prop = new Properties();
	
	public dDAO() {
		String fileName = dDAO.class.getResource("/query/diet-query.properties").getPath();
		try {
			
			prop.load(new FileReader(fileName));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Diet> listDiet(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Diet> list = new ArrayList<Diet>();
		String query = prop.getProperty("listD");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset= pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Diet(rset.getInt("d_code"),
							      rset.getDate("d_date"),
							      rset.getString("memo"),
							      rset.getString("id"),
							      rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int insertDiet(Connection conn, Diet d) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("saveD");
		
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setDate(1, d.getdDate());
			pstmt.setString(2, d.getMemo());
			pstmt.setString(3, d.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
				
		return result;
	}
	

	public int deleteD(Connection conn, int ch) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteD");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, ch);
			result = pstmt.executeUpdate();
			System.out.println("delete dao result:"+result);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
