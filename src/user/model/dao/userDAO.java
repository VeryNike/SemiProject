package user.model.dao;

import static common.JDBCTemplate.close;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import user.model.vo.User;

public class userDAO {

	private Properties prop = new Properties();
	
	public userDAO() {
		
		String fileName = userDAO.class.getResource("/query/user-query.properties").getPath();
		
		try {
			
			prop.load(new FileReader(fileName));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public User loginUser(Connection conn, User user) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User loginUser = null;
		
		String query = prop.getProperty("loginUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,  user.getUserId());
			pstmt.setString(2,  user.getUserPwd());
			
			rset = pstmt.executeQuery();
			
			System.out.println("DAO탔습니당");

			if(rset.next()) {
				loginUser = new User(rset.getString("ID"),
										rset.getString("PASSWORD"),
										rset.getString("GENDER"),
										rset.getInt("AGE"),
										rset.getString("NAME"),
										rset.getString("NICK_NAME"),
										rset.getString("ADDRESS"),
										rset.getString("EMAIL"),
										rset.getString("PHONE"),
										rset.getString("M_RATING"),
										rset.getString("F_FOOD"),
										rset.getString("SORTATION"),
										rset.getString("STATUS"));
				
			}
			System.out.println("DAOUser:"+user.getUserId());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return loginUser;
	}



	public int insertUser(Connection conn, User user) {
		PreparedStatement pstmt=null;
		int result = 0;
		
		String query = prop.getProperty("insertUser");
		
		try {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPwd());
			pstmt.setString(3, user.getGender());
			pstmt.setInt(4, user.getAge());
			pstmt.setString(5, user.getUserName());
			pstmt.setString(6, user.getNickName());
			pstmt.setString(7, user.getAddress());
			pstmt.setString(8, user.getEmail());
			pstmt.setString(9, user.getPhone());
			pstmt.setString(10, user.getFfood());
					
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
				
		return result;
	}



	public int IdCheck(Connection conn, String inputId) {

		System.out.println("inputid:"+inputId);
		
		String query = prop.getProperty("checkId");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, inputId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}

			System.out.println("result:"+result);
	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rs);
		}
		
		return result;
	}

public User selectUser(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
				
		String query = prop.getProperty("myPage");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();		
			
			if(rs.next()) {
				user = new User(rs.getString("ID"),
								rs.getString("PASSWORD"),
								rs.getString("GENDER"),
								rs.getInt("AGE"),
								rs.getString("NAME"),
								rs.getString("NICK_NAME"),
								rs.getString("ADDRESS"),
								rs.getString("EMAIL"),
								rs.getString("PHONE"),
								rs.getString("M_RATING"),
								rs.getString("F_FOOD"),
								rs.getString("SORTATION"),
								rs.getString("STATUS"));
							
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}	
		return user;
	}




}
