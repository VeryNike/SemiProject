package home.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.model.service.HomeService;
import home.model.vo.CheckList;
import user.model.vo.User;


@WebServlet("/checkList.me")
public class CheckListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CheckListServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String user = ((User)request.getSession().getAttribute("loginUser")).getUserId();
		int date = Integer.parseInt(request.getParameter("date"));
		String content = request.getParameter("content");
		
		CheckList c = new CheckList(date, content, user);
		System.out.println(c);
		int result = new HomeService().saveCheckList(c);
		
		if (result > 0) {
			response.sendRedirect("home.me");
		}else {
			request.setAttribute("msg", "데이터 조회에 실패하였습니다.");
			request.getRequestDispatcher("WEB-INF/view/common/errorPage.jsp").forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
