package shopping.model.service;

import java.util.ArrayList;

import shopping.model.dao.ItemDAO;
import shopping.model.vo.Item;

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
}
