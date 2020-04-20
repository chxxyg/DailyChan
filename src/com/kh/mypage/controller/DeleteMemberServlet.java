package com.kh.mypage.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.mypage.model.service.MypageService;

/**
 * Servlet implementation class DeleteMemberServlet
 */
@WebServlet("/deleteMember.my")
public class DeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String userId = request.getParameter("userId");
	    int result = new MypageService().deleteMember(userId);
	    if(result > 0)
	    {
	        response.sendRedirect("logout.me");
	    }
	    else
	    {
	        request.setAttribute("msg", "회원가입실패");
            request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);;
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
