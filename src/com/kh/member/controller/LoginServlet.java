package com.kh.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String saveId = request.getParameter("saveId");
		
		
		Member loginUser = new MemberService().loginMember(userId, userPwd);

		
		if(loginUser != null) {// 로그인 성공했을 경우	
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			//쿠키
			Cookie c =new Cookie("saveId", userId);

			if(saveId != null) {
				c.setMaxAge(7 * 24 * 60 * 60);
			}else {
				c.setMaxAge(0);
			}
			
			c.setPath("/");
			
			response.addCookie(c);
			
			//response.sendRedirect("/dailyChan");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			
			out.println("window.opener.location.replace('/dailyChan');");
			out.println("window.close();");
			out.println("</script>");
			
		}else {// 로그인 실패했을 경우 --> 에러페이지
			
			request.setAttribute("msg", "로그인에 실패했습니다.");
			/*
			 * RequestDispatcher view =
			 * request.getRequestDispatcher("views/common/errorPage.jsp");
			 * view.forward(request, response);
			 */
					
			
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
