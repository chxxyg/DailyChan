package com.kh.member.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmailAuthFormServlet
 */
@WebServlet("/emailAuthForm.me")
public class EmailAuthFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailAuthFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          
	    String email = request.getParameter("email");
	    
	    Properties prop = System.getProperties();
            prop.put("mail.smtp.starttls.enable", "true");
            prop.put("mail.smtp.host", "smtp.gmail.com");
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.port", "587");

            Authenticator auth = new MailAuth();

            Session session = Session.getDefaultInstance(prop, auth);

            MimeMessage msg = new MimeMessage(session);
            
            // 인증 번호 생성기
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
            String AuthenticationKey = temp.toString();
            System.out.println(AuthenticationKey);
            
            try
            {
                msg.setSentDate(new Date());

                msg.setFrom(
                new InternetAddress("fotd0323@gmail.com", "데일리찬"));
                InternetAddress to = new InternetAddress(email);
                msg.setRecipient(Message.RecipientType.TO, to);
                msg.setSubject("데일리찬 신규 회원가입 인증번호입니다.", "UTF-8");
                msg.setText(AuthenticationKey + "\n위의 인증코드를 인증란에 입력해주세요.", "UTF-8");

                Transport.send(msg);

            }
            catch (AddressException ae )
            {
                System.out.println("AddressException : " + ae.getMessage());
            }
            catch (MessagingException me )
            {
                System.out.println("MessagingException : " + me.getMessage());
            }
            catch (UnsupportedEncodingException e )
            {
                System.out.println(
                        "UnsupportedEncodingException : " + e.getMessage());
            }

            
            request.setAttribute("code", AuthenticationKey);
            request.getRequestDispatcher("views/member/emailAuthForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
