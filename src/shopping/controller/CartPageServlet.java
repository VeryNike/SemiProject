package shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Common;
import shopping.model.service.ItemService;
import shopping.model.vo.Item;

/**
 * Servlet implementation class CartPageServlet
 */
@WebServlet("/cart.me")
public class CartPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CartPageServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemCode = Common.nvl(request.getParameter("item"));
		Item item = new ItemService().selectProductInfo(itemCode);
		ArrayList<Item> list = new ArrayList<Item>();
		
		String deleteItem = request.getParameter("itembox");
		//list.add(item);
		
		if (item.getItemCode() != null) {
			request.setAttribute("item", item);
			request.setAttribute("list", list);
		}
		request.setAttribute("deleteItem", deleteItem);

		request.getRequestDispatcher("WEB-INF/view/shopping/cart.jsp").forward(request, response);

			
		}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
