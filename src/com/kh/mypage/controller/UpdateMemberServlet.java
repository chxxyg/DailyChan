package com.kh.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.service.MypageService;

/**
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet("/updateMember.my")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String cell_no1 = request.getParameter("cell_no1");
	    String cell_no2 = request.getParameter("cell_no2");
	    String cell_no3 = request.getParameter("cell_no3");
	    String birth = request.getParameter("birthday");
	    
	    String userId = request.getParameter("userId");
	    String gender = request.getParameter("gend_cd");
	    String name = request.getParameter("mbr_nm");
	    String pwd = request.getParameter("pwd");
	    String email = request.getParameter("email");
	    String phone = cell_no1 + cell_no2 + cell_no3;
	    String userBirth = birth.replaceAll("-", "");
	    
	    Member m = new Member();
	    m.setMemberId(userId);
	    m.setGender(gender);
	    m.setMemberName(name);
	    m.setPassword(pwd);
	    m.setEmail(email);
	    m.setPhone(phone);
	    m.setBirth(userBirth);
	    
	    int result = new MypageService().updateMember(m);
	    
	    if(result > 0)
	    {
	        HttpSession session = request.getSession();
	        session.invalidate();
	        
	        response.sendRedirect(request.getContextPath());    
	    }
	    else
	    {
	        request.setAttribute("msg", "회원정보 수정 실패");
	        request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
