package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Common;
import user.model.service.userService;
import user.model.vo.User;

<<<<<<< HEAD

=======
/**
 * Servlet implementation class LoginServlet
 */
>>>>>>> main
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
<<<<<<< HEAD

    public LoginServlet() {
        super();
    }


=======
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
>>>>>>> main
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); 
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		User user = new User(userId, userPwd);
		
		User loginUser = new userService().loginUser(user);
		
		if(loginUser != null) {
			System.out.println("로그인성공 !=null");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			session.setMaxInactiveInterval(1200); 
			
<<<<<<< HEAD
			response.sendRedirect("home.me");
=======
			response.sendRedirect("home.jsp");
>>>>>>> main
			
		} else {
			System.out.println("user:"+user.toString());
			request.setAttribute("msg","로그인실패");
			RequestDispatcher view = request.getRequestDispatcher(Common.ERR_URL);
			view.forward(request, response);
			
		}
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
