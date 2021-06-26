package shopping.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Common;
import shopping.model.service.ItemService;
import shopping.model.vo.Item;

@WebServlet("/cart.me")
public class CartPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemCode = Common.nvl(request.getParameter("itemCode"));
		Item item = new ItemService().selectProductInfo(itemCode);
		String page = null;

		if (item != null) {
			page = "WEB-INF/view/shopping/cart.jsp";
			request.setAttribute("item", item);
		} else {
			page = "WEB-INF/view/common/errorPage.jsp";
			request.setAttribute("msg", "상품 리스트 조회에 실패하였습니다.");
		}
		request.getRequestDispatcher(page).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
