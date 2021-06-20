package home.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import home.model.service.HomeService;
import home.model.vo.PT;


@WebServlet("/ptList.me")
public class PtListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PtListServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<PT> list = new HomeService().selectPtList();
		
		JSONArray jArr = new JSONArray();
		JSONObject jObj = new JSONObject();
		
		for(PT p : list) {
			jObj = new JSONObject();
			jObj.put("no", p.getPtNo());
			jObj.put("type", p.getPtType());
			jObj.put("name", p.getPtName());
			jArr.add(jObj);
		}
		
		System.out.println(jArr);
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().println(jArr);
		response.getWriter().flush();
		response.getWriter().close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
