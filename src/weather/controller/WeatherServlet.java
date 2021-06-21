package weather.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


@WebServlet("/weather.me")
public class WeatherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WeatherServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String inputString = "";
		final URL url = new URL("http://www.kma.go.kr/DFSROOT/POINT/DATA/top.json.txt");

		InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");

		BufferedReader bufferedReader = new BufferedReader(isr);

		StringBuffer builder = new StringBuffer();

		if ((inputString = bufferedReader.readLine()) != null) {
			builder.append(inputString);
		}
		
		
		String s;
		s = builder.toString();
		JSONArray city = null;
		try {
			JSONParser parser = new JSONParser();
			Object jObj = parser.parse(s);
			
			city = (JSONArray) jObj;	

			 
		} catch (ParseException e) {
			e.printStackTrace();
		}

		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().println(city);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
