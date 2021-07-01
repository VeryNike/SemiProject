package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Reply;

/**
 * Servlet implementation class BoardReplyUpdate
 */
@WebServlet("/reply.update")
public class BoardReplyUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardReplyUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		int rnum = Integer.parseInt(request.getParameter("rnum"));
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		Reply r = new Reply();
		r.setB_no(bno);
		r.setCNum(rnum);
		r.setID(name);
		r.setCommentContent(content);
		
		ArrayList<Reply> replys = new BoardService().updateReply(r);
		response.setContentType("charset=UTF-8");
		response.getWriter().println(replys);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
