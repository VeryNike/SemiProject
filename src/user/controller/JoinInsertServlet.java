package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Common;
import user.model.service.userService;
import user.model.vo.User;

/**
 * Servlet implementation class JoinInsertServlet
 */
@WebServlet("/insert.me")
public class JoinInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String nickName = request.getParameter("nickName");
		String ages = request.getParameter("age");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String frr[] = request.getParameterValues("ffood");
		
		String ffood= "";
		
		if(frr != null) {
			for (int i =0; i<frr.length; i++) {
				if(i==frr.length -1) {
					ffood += frr[i];
				} else {
					ffood += frr[i]+",";
				}
			}
		}
		int age = Integer.parseInt(ages);
		
		User user = new User(userId, userPwd, userName, nickName, age, gender, phone, email, address, ffood);
		
		System.out.println("user:"+user);
		
		int result = new userService().insertUser(user);
		
		if(result>0) {

			response.sendRedirect(request.getContextPath());
			
			
		} else {
			request.setAttribute("msg", "회원가입에 실패하였습니다.");
			RequestDispatcher view = request.getRequestDispatcher(Common.ERR_URL);
			view.forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
