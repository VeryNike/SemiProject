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
 * Servlet implementation class MyUpdateServlet
 */
@WebServlet("/myupdate.me")
public class MyUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String myId = request.getParameter("userId");
		String myPwd = request.getParameter("myPwd");
		String myName = request.getParameter("myUserName");
		String myNickName = request.getParameter("myNickName");
		String myAges = request.getParameter("myAge");
		String myGender = request.getParameter("myGender");
		String myPhone = request.getParameter("myPhone");
		String myEmail = request.getParameter("myEmail");
		String myAddress = request.getParameter("myAddress");
		String[] myFfoodarr = request.getParameterValues("myFfood");
		int myAge = Integer.parseInt(myAges);
		
		String myFfood =null;
		if(myFfoodarr != null) {
			myFfood = String.join(",", myFfoodarr);
		}
		
		User myUser = new User(myId, myPwd, myGender, myAge, myName, myNickName,myAddress, myEmail, myPhone, null, myFfood,null,null );
		
		int result = new userService().updateUser(myUser);
	
		if(result>0) {
			System.out.println("회원정보수정 성공");
			response.sendRedirect("mypage.me");
		} else {
			request.setAttribute("msg", "정보 수정에 실패하였습니다");
			RequestDispatcher view = request.getRequestDispatcher(Common.ERR_URL);

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
