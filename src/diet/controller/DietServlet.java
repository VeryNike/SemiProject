package diet.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import diet.model.service.dService;
import diet.model.vo.Diet;
import user.model.vo.User;

@WebServlet("/diet.me")
public class DietServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DietServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userId = ((User) session.getAttribute("loginUser")).getUserId(); 
		System.out.println("servlet에서의 userId:"+userId);
		ArrayList<Diet> list = new dService().listDiet(userId);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/view/Diet/diet.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
