package shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.model.service.ItemService;
import shopping.model.vo.Review;


/**
 * Servlet implementation class ReviewInsertServlet
 */
@WebServlet("/review.insert")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Icode = request.getParameter("Icode");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		
		Review r = new Review();
		r.setItemCode(Icode);
		r.setName(name);
		r.setContent(content);
		r.setstar(star);

		ArrayList<Review> reviews = new ItemService().insertReview(r);
		
		response.setContentType("charset=UTF-8");
		response.getWriter().println(reviews);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
