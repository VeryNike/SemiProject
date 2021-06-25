package shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.model.service.ItemService;
import shopping.model.vo.Item;

@WebServlet("/shopping.me")
public class ShoppingPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Item> list = new ItemService().selectList();
		String page = null;

		if (list != null) {
			page = "WEB-INF/view/shopping/shopping.jsp";
			request.setAttribute("list", list);
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
