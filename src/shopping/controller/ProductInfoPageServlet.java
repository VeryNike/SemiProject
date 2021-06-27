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
import shopping.model.vo.Review;

@WebServlet("/productinfo.me")
public class ProductInfoPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemCode = Common.nvl(request.getParameter("itemCode"));
		Item item = new ItemService().selectProductInfo(itemCode);
		String page = null;

		String Icode = request.getParameter("itemCode");
		ArrayList<Review> reviews = new ItemService().listReview(Icode);
		
		if (item != null) {
			page = "WEB-INF/view/shopping/productInfo.jsp";
			request.setAttribute("item", item);
			request.setAttribute("reviews", reviews);
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
