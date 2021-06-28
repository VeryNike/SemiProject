package shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import shopping.model.service.ItemService;
import shopping.model.vo.Review;


/**
 * Servlet implementation class ReviewInsertServlet
 */
@WebServlet("/review.delete")
public class ReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Icode = request.getParameter("Icode");
		int rnum = Integer.parseInt(request.getParameter("rnum"));
		String name = request.getParameter("name");
		String cdate = request.getParameter("cdate");
		
		Review r = new Review();
		r.setItemCode(Icode);
		r.setRnum(rnum);
		r.setName(name);
		r.setCdate(cdate);
		
		int result = new ItemService().deleteReview(r);
		
		PrintWriter out = response.getWriter();
		if(result>0) {
			out.print("review delete.success");
		}else {
			out.print("review d.false");
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
