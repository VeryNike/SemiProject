package weather.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import weather.model.vo.Weather;

@WebServlet("/weatherList.me")
public class WeatherListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WeatherListServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String region = request.getParameter("region");
		String url = "https://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=" + region;

		System.out.println("주소: " + url);

		Document doc = null;

		try {
			// XML파싱 준비
			DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
			DocumentBuilder b = f.newDocumentBuilder();

			// 위에서 구성한 URL을 통해 XMl 파싱 시작
			doc = b.parse(url);
			doc.getDocumentElement().normalize();

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 서버에서 응답한 XML데이터를 data(발행문서 1개 해당)태그로 각각 나눔(파라미터로 요청한 size항목의 수만큼)
		NodeList items = doc.getElementsByTagName("data");

		String d = "", dd = "", h = "", t = "", ww = "", w="", p = "";
		ArrayList<Weather> wList = new ArrayList<Weather>();
		Weather weather = null;

		// for 루프시작
		for (int i = 0; i < items.getLength(); i++) {

			Node node = items.item(i); // data엘리먼트 노드
			Element fstElmnt = (Element) node;

			NodeList dayList = fstElmnt.getElementsByTagName("day"); // 일
			NodeList timeList = fstElmnt.getElementsByTagName("hour"); // 시간
			NodeList tempList = fstElmnt.getElementsByTagName("temp"); // 온도
			NodeList websiteList = fstElmnt.getElementsByTagName("wfKor"); // 날씨
			NodeList rainList = fstElmnt.getElementsByTagName("pop"); // 비올 확률

			dd = dayList.item(0).getChildNodes().item(0).getNodeValue();

			if (dd.equals("0")) {
				d = "오늘";
			} else if (dd.equals("1")) {
				d = "내일";
			} else if (dd.equals("2")) {
				d = "모레";
			}

			h = timeList.item(0).getChildNodes().item(0).getNodeValue() + "시";
			t = tempList.item(0).getChildNodes().item(0).getNodeValue() + "℃ ";
			ww = websiteList.item(0).getChildNodes().item(0).getNodeValue();

			if (ww.equals("맑음")) {
				w="clean.png";
			} else if (ww.equals("구름 많음")) {
				w = "most_cloudy.png";
				if (h.equals("18시") || h.equals("21시") || h.equals("24시") || h.equals("3시")) {
					w = "most_night.png";
				}
			} else if (ww.equals("흐림")) {
				w = "cloudy.png";
				if (h.equals("18시") || h.equals("21시") || h.equals("24시") || h.equals("3시")) {
					w = "cloudy_night.png";
				}
			} else if (ww.equals("비")) {
				w = "rain.png";
			} else if (ww.equals("비/눈")) {
				w = "rain_snow.png";
			} else if (ww.equals("눈")) {
				w = "snow.png";
			} else if (ww.equals("소나기")) {
				w = "shower.png";
			}

			p = rainList.item(0).getChildNodes().item(0).getNodeValue() + "%";

			weather = new Weather(d, h, t, w, p);
			wList.add(weather);
		}

		JSONArray jArr = new JSONArray();
		JSONObject jObj = new JSONObject();
		
		for(Weather www : wList) {
			jObj = new JSONObject();
			jObj.put("d", www.getDay());
			jObj.put("h", www.getHour());
			jObj.put("t", www.getTemp());
			jObj.put("w", www.getWfKor());
			jObj.put("p", www.getPop());
			
			jArr.add(jObj);
		}

		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().println(jArr);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
