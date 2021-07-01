package board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Reply;

/**
 * Servlet implementation class BoardReplyDeleteServlet
 */
@WebServlet("/reply.delete")
public class BoardReplyDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardReplyDeleteServlet() {
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		int rnum = Integer.parseInt(request.getParameter("rnum"));
		String name = request.getParameter("name");
		
		
		Reply r = new Reply();
		r.setB_no(bno);
		r.setCNum(rnum);
		r.setID(name);
		
		System.out.println("reply: " +r);
		int result = new BoardService().deleteReply(r);
		
		PrintWriter out = response.getWriter();
		if(result>0) {
			out.println("reply delete success");
		}else {
		out.print("reply delete false");
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
