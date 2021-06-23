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

import diet.model.service.dService;
import diet.model.vo.Diet;
import user.model.vo.User;

/**
 * Servlet implementation class dFormServlet
 */
@WebServlet("/dForm.save")
public class dFormSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dFormSaveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
				
		String date = request.getParameter("dateNo"); 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date dDate = new Date(sdf.parse(date).getTime());
			String memo = request.getParameter("dtext"); 
			
			String userId = ((User)request.getSession().getAttribute("loginUser")).getUserId();
			
			Diet d = new Diet(); 
			d.setdCode(0); 
			d.setdDate(dDate);
			d.setMemo(memo); 
			d.setUserId(userId); 
			
			System.out.println("d.Date:"+ dDate);
			System.out.println("userId:"+ userId);
			
			ArrayList<Diet> list = new dService().insertDiet(d);
			
			response.setContentType("application/json; charset=UTF-8");
			
			GsonBuilder gBuild = new GsonBuilder();
			GsonBuilder dateGb = gBuild.setDateFormat("yyyy-mm-dd");
			Gson gson = dateGb.create();
			//PrintWriter out = response.getWriter();
			gson.toJson(list, response.getWriter());
			
			response.sendRedirect("Diet.me");
			
		} catch (ParseException e) {
			e.printStackTrace();
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
