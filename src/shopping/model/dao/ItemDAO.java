package shopping.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import common.JDBCTemplate;
import shopping.model.vo.Item;
import shopping.model.vo.ItemImage;
import shopping.model.vo.Review;

public class ItemDAO {
	private Properties prop = new Properties();
	
	public ItemDAO() {
		String fileName = ItemDAO.class.getResource("/query/shopping.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Item> selectList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> list = new ArrayList<Item>();

		String query = prop.getProperty("selectList");
		System.out.println(query);

		try {
			conn = JDBCTemplate.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Item item = new Item();
				item.setItemCode(rs.getString("ITEM_CODE"));
				item.setItemName(rs.getString("ITEM_NAME"));
				item.setItemPrice(rs.getString("ITEM_PRICE"));
				item.setItemDetail2(rs.getString("ITEM_DETAIL2"));
				item.setItemSize(rs.getString("ITEM_SIZE"));
				item.setItemUrl(rs.getString("ITEM_URL"));
				item.setItemLogo(rs.getString("ITEM_LOGO"));
				ItemImage thumbnail = new ItemImage();
				thumbnail.setItemCode(rs.getString("ITEM_CODE"));
				thumbnail.setImageNum(rs.getInt("IMAGE_NUM"));
				thumbnail.setOrgImgNm(rs.getString("ORG_IMG_NM"));
				thumbnail.setSaveImgNm(rs.getString("SAVE_IMG_NM"));
				thumbnail.setImgPath(rs.getString("IMG_PATH"));
				thumbnail.setImgDesc(rs.getString("IMG_DESC"));
				item.setThumbnail(thumbnail);
				list.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
//			JDBCTemplate.close(conn, pstmt, rs);
		}

		return list;
	}
	
	public Item selectProductInfo(String itemCode) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<ItemImage> images = null;
		Item item = null;

		String query = prop.getProperty("selectItem");
		String query2 = prop.getProperty("selectImageList");
		System.out.println(query);

		try {
			images = new ArrayList<>();
			item = new Item();

			conn = JDBCTemplate.getConnection();
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1, itemCode);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ItemImage image = new ItemImage();
				image.setItemCode(itemCode);
				image.setImageNum(rs.getInt("IMAGE_NUM"));
				image.setOrgImgNm(rs.getString("ORG_IMG_NM"));
				image.setSaveImgNm(rs.getString("SAVE_IMG_NM"));
				image.setImgPath(rs.getString("IMG_PATH"));
				image.setImgDesc(rs.getString("IMG_DESC"));
				image.setImgSize(rs.getInt("IMG_SIZE"));
				images.add(image);
			}
			
//			JDBCTemplate.close(pstmt, rs);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, itemCode);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				item.setImages(images);
				item.setItemCode(itemCode);
				item.setItemName(rs.getString("ITEM_NAME"));
				item.setItemPrice(rs.getString("ITEM_PRICE"));
				item.setItemDesc(rs.getString("ITEM_DESC"));
				item.setItemIfm(rs.getString("ITEM_IFM"));
				item.setItemCategory(rs.getString("ITEM_CATEGORY"));
				item.setItemDetail2(rs.getString("ITEM_DETAIL2"));
				item.setItemSize(rs.getString("ITEM_SIZE"));
				item.setItemUrl(rs.getString("ITEM_URL"));
				item.setItemLogo(rs.getString("ITEM_LOGO"));
				item.setItemStock(rs.getString("ITEM_STOCK"));
				item.setThumbnail(images.get(0));
				images.remove(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn, pstmt, rs);
		}

		return item;
	}

	public Item selectCartDetail(String itemCode) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<ItemImage> images = null;
		Item item = null;

		String query = prop.getProperty("selectItem");
		String query2 = prop.getProperty("selectImageList");
		System.out.println(query);

		try {
			images = new ArrayList<>();
			item = new Item();

			conn = JDBCTemplate.getConnection();
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1, itemCode);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ItemImage image = new ItemImage();
				image.setItemCode(itemCode);
				image.setImageNum(rs.getInt("IMAGE_NUM"));
				image.setOrgImgNm(rs.getString("ORG_IMG_NM"));
				image.setSaveImgNm(rs.getString("SAVE_IMG_NM"));
				image.setImgPath(rs.getString("IMG_PATH"));
				image.setImgDesc(rs.getString("IMG_DESC"));
				image.setImgSize(rs.getInt("IMG_SIZE"));
				images.add(image);
			}
			
			JDBCTemplate.close(pstmt, rs);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, itemCode);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				item.setImages(images);
				item.setItemCode(itemCode);
				item.setItemName(rs.getString("ITEM_NAME"));
				item.setItemPrice(rs.getString("ITEM_PRICE"));
				item.setItemDesc(rs.getString("ITEM_DESC"));
				item.setItemIfm(rs.getString("ITEM_IFM"));
				item.setItemCategory(rs.getString("ITEM_CATEGORY"));
				item.setItemDetail2(rs.getString("ITEM_DETAIL2"));
				item.setItemSize(rs.getString("ITEM_SIZE"));
				item.setItemUrl(rs.getString("ITEM_URL"));
				item.setItemLogo(rs.getString("ITEM_LOGO"));
				item.setItemStock(rs.getString("ITEM_STOCK"));
				item.setThumbnail(images.get(0));
				images.remove(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn, pstmt, rs);
		}

		return item;
	
	}

	public ArrayList<Review> listReview(Connection conn, String Icode) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Review> reviews = new ArrayList<Review>();
		String query = prop.getProperty("listReview");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, Icode);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				reviews.add(new Review(rs.getString("item_code"),
										rs.getInt("rnum"),
										rs.getString("name"),
										rs.getString("content"),
										rs.getString("cdate"),
										rs.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return reviews;
	}
	
	public int insertReview(Connection conn, Review r) {
		PreparedStatement pstmt = null;
		int result =0;
		
		String query = prop.getProperty("insertReview");
		
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, r.getItemCode());
			pstmt.setString(2, r.getName());
			pstmt.setString(3, r.getContent());
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int updateReview(Connection conn, Review r) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("updateReview");
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, r.getContent());
			pstmt.setString(2, r.getItemCode());
			pstmt.setInt(3, r.getRnum());
			pstmt.setString(4, r.getName());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteReview(Connection conn, Review r) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteReview");
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, r.getItemCode());
			pstmt.setInt(2, r.getRnum());
			pstmt.setString(3, r.getName());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}


}
