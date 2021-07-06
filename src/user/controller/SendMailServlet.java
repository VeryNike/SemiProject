package user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SendMailServlet
 */
@WebServlet("/send.do")
public class SendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SendMailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 보내는 계정의 네이버 메일에 아래 환경 설정 -> POP3/IMAP설정 -> 사용함 설정하기
		
		// 1. 전달받은 값 인코딩
		// - 전송할 값은 html이 아닌 다른 프로토콜로 전송할 것이기 때문에
		// 현재는 별도 인코딩을 하지 않습니다.
		
		System.out.println("서블릿 in");
		request.setCharacterEncoding("UTF-8");

		final String sender = "mypt0513@naver.com"; // 보내는 사람 ID (Ex: @naver.com 까지..)
		final String password = "verynike0513"; // 보내는 사람 Password
		
		StringBuffer temp = new StringBuffer();
        Random rnd = new Random();
        for (int i = 0; i < 10; i++) {
           int rIndex = rnd.nextInt(3);
           switch (rIndex) {
           case 0:
              // a-z
              temp.append((char) ((int) (rnd.nextInt(26)) + 97));
              break;
           case 1:
              // A-Z
              temp.append((char) ((int) (rnd.nextInt(26)) + 65));
              break;
           case 2:
              // 0-9
              temp.append((rnd.nextInt(10)));
              break;
           }
        }

        String host = "smtp.naver.com"; // 사용하는 메일
        String title =  "MyPT 에서 보낸 인증메일 입니다.";
		String contents =  " 인증번호 : "+ temp;
		String html = "<div style='border:1px solid rgb(66, 165, 204); width:30em;'>"+"<h2 style='text-align:center'>"+ contents + "</h2>"+"</div>";		
		
		String receiver = request.getParameter("receiver"); // 받는 사용자 (Ex: @naver.com 까지..)

		System.out.println("---------recv Data Check--------");
		System.out.println("recvID : " + receiver);
		System.out.println("title : " + title);
		System.out.println("content : " + contents);
		System.out.println("--------------------------");

		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(sender, password);
			}
		});

		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(sender));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));

			// Subject
			message.setSubject(title);
		//	message.setText(contents,"UTF-8");

			// Text
			message.setText(contents, "UTF-8", "html");
			message.setText(html, "UTF-8", "html");

			// send the message
			Transport.send(message);
			System.out.println("전송 완료!");
			
			response.getWriter().println(temp);
			// naver 로그인 2단계 인증 되어있으면 오류 뜸

		} catch (MessagingException e) {
			System.out.println("전송 실패..");
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
