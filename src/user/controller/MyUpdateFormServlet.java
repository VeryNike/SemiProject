package user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.vo.User;


@WebServlet(urlPatterns="/MyUpdateForm.me", name="MyUpdateFormServelet")
public class MyUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public MyUpdateFormServlet() {
        super();
    }

	
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
		String myFfood = request.getParameter("myFfood");
		int myAge = Integer.parseInt(myAges);

		
		User myUser = new User(myId, myPwd, myGender, myAge, myName, myNickName,myAddress, myEmail, myPhone, null, myFfood,null,null );
		request.setAttribute("myUser", myUser);
		request.getRequestDispatcher("WEB-INF/view/user/myUpdate.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
