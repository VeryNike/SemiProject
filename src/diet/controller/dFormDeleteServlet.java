package diet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import board.model.service.BoardService;
import diet.model.service.dService;
import diet.model.vo.Diet;
import user.model.service.userService;
import user.model.vo.User;

/**
 * Servlet implementation class dFormServlet
 */
@WebServlet("/dForm.delete")
public class dFormDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dFormDeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String[] charr = request.getParameterValues("charr[]");
		int result = 0;
		
		for(int i=0; i<charr.length; i++) {
			int ch = Integer.parseInt(charr[i]);
			result = new dService().deleteD(ch);

			System.out.println("삭제"+i);
		}
		PrintWriter out = response.getWriter();
		if(result>0) {
			out.print("d.success");
		}else {
			out.print("d.false");
		}
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
