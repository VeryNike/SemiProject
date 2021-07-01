package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import board.model.service.BoardService;

/**
 * Servlet implementation class BoardReplyCountServlet
 */
@WebServlet("/countReply.count")
public class BoardReplyCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardReplyCountServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] bno = request.getParameterValues("bno");

		int[] count = new int[bno.length];
		JSONArray jArr = new JSONArray();
		if (bno != null) {

			for (int i = 0; i < bno.length; i++) {
				
				count[i] = new BoardService().ReplyCount(Integer.parseInt(bno[i]));
				JSONObject jObj = new JSONObject();
				System.out.println(i + " = " + count[i]);
				jObj.put("cnt", count[i]);
				
				jArr.add(count[i]);
			}
		}


		System.out.println(jArr);
		response.getWriter().println(jArr);


	}

}
