package shopping.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.close;
import java.sql.Connection;
import java.util.ArrayList;

import shopping.model.dao.ItemDAO;
import shopping.model.vo.Item;
import shopping.model.vo.Review;

public class ItemService {

	public ArrayList<Item> selectList() {
		return new ItemDAO().selectList();
	}

	public Item selectProductInfo(String itemCode) {
		return new ItemDAO().selectProductInfo(itemCode);
	}
	
	public ArrayList<Review> listReview(String Icode) {
		Connection conn = getConnection();
		ArrayList<Review> reviews = new ItemDAO().listReview(conn, Icode);
		close(conn);
		
		return reviews;
	}


	public ArrayList<Review> insertReview(Review r) {
		Connection conn = getConnection();
		
		ItemDAO idao = new ItemDAO();
		int result = idao.insertReview(conn,r);
		
		ArrayList<Review> reviews= null;
		
		if(result>0) {
			commit(conn);
			reviews = idao.listReview(conn, r.getItemCode());
			
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return reviews;
	}

	public ArrayList<Review> updateReview(Review r) {
		Connection conn = getConnection();
		ItemDAO idao = new ItemDAO();
		int result = idao.updateReview(conn, r);
		ArrayList<Review> reviews = null;
		if(result>0) {
			commit(conn);
			reviews = idao.listReview(conn,r.getItemCode());
		}else {
			rollback(conn);
		}
		close(conn);
		return reviews;
	}

	public int deleteReview(Review r) {
		Connection conn = getConnection();
		int result = new ItemDAO().deleteReview(conn,r);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}
	
	public Item selectCheckoutForm(String itemCode) {
		return new ItemDAO().selectCheckoutForm(itemCode);


	}
}
