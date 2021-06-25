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
}
