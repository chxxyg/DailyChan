package com.kh.admin.adminMember.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMember.model.service.adMemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class AdMemberUpdateServlet
 */
@WebServlet("/updateMember.ad")
public class AdMemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdMemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		String id = request.getParameter("id");
		String phone = request.getParameter("phone");
		
		Member m = new Member();
		m.setMemberId(id);
		m.setPhone(phone);
		
		int result = new adMemberService().updateMember(m);
		
		if(result > 0) {
			response.sendRedirect("detail.ad?id=" + id);
		}else {
			
		}
		*/
		String memberId = request.getParameter("memberId");
		String phone = request.getParameter("phone");

		Member m = new Member();
		m.setMemberId(memberId);
		m.setPhone(phone);
				
		
		int result = new adMemberService().updateMember(m);
		
		if(result > 0) {	// 성공
			
			response.sendRedirect("detail.ad?mid="+memberId);
			request.setAttribute("msgAd", "수정 완료!");
		}else {	// 실패
			request.setAttribute("msg", "삭제 실패!");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
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

