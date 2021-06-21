/**
 * 
 */
package home.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import home.model.vo.PT;
import user.model.dao.userDAO;


public class HomeDAO {
	
	public HomeDAO() {
		String fileName = userDAO.class.getResource("/query/user-query.properties").getPath();

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

}
