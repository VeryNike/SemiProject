package home.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.model.service.HomeService;
import home.model.vo.CheckList;
import home.model.vo.PT;
import user.model.vo.User;

@WebServlet("/home.me")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = ((User)request.getSession().getAttribute("loginUser")).getUserId();
		ArrayList<PT> list = new HomeService().selectPtList();
		ArrayList<CheckList> clist = new HomeService().selectCheckList(user);
		request.setAttribute("list", list);
		request.setAttribute("clist", clist);
		request.getRequestDispatcher("WEB-INF/view/home/home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
