package com.kh.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.service.MypageService;

/**
 * Servlet implementation class PwdCheckServlet
 */
@WebServlet("/getPwdConfirm.me")
public class GetPwdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPwdCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String target = request.getParameter("target");
	    String userId = request.getParameter("userId");
	    String userPwd = request.getParameter("temp_pw");
	    Member m = new Member();
	    m.setMemberId(userId);
	    m.setPassword(userPwd);
	    int result = new MypageService().pwdCheck(m);
	    
	    request.setAttribute("userId", userId);
	    
	    if(result == 1)
	    {
	        if(target.equals("updateMember"))
	        {
	            request.getRequestDispatcher("views/mypage/memberUpdate.jsp").forward(request, response);
	        }
	        else if(target.equals("deleteMember"))
	        {
	            request.getRequestDispatcher("views/mypage/memberDelete.jsp").forward(request, response);
	        }
	    }
	    else
	    {
	        request.setAttribute("msg1", "비밀번호가 일치하지 않습니다.");
	        request.getRequestDispatcher("views/mypage/initPwdConfirmForm.jsp").forward(request, response);
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
