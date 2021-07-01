package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import board.model.service.BoardService;
import board.model.vo.Reply;

/**
 * Servlet implementation class BoardReplyInsertServlet
 */
@WebServlet("/BoardReply.insert")
public class BoardReplyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardReplyInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cNo = Integer.parseInt(request.getParameter("bNo"));
		String name = request.getParameter("name");
		String content = request.getParameter("content");
	
		Reply r = new Reply();
		r.setB_no(cNo);
		r.setID(name);
		r.setCommentContent(content);
		System.out.println("1" +r);
		
		ArrayList<Reply> replys = new BoardService().insertReply(r);
		System.out.println("서블릿에서의 r" +replys);
		
		response.setContentType("application/json; charset=UTF-8");
		GsonBuilder gd = new GsonBuilder();
	      GsonBuilder dateGd = gd.setDateFormat("yyyy-mm-dd");
	      Gson gson = dateGd.create();
	      
	      gson.toJson(replys, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
