package com.kh.admin.adminMember.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMember.model.service.adMemberService;
import com.kh.member.model.vo.Member;



/**
 * Servlet implementation class AdMemberSearchServlet
 */
@WebServlet("/memberSearch.ad")
public class AdMemberSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdMemberSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memberId = request.getParameter("memberId");
		
		Member m = new adMemberService().searchMember(memberId);
		
		request.setAttribute("m", m);
		
		
		if(m != null) {	// 성공
			request.getRequestDispatcher("views/admin/adminMember/adminMemberSearch.jsp").forward(request, response);			
		}else {	// 실패했을시 alert창 띄우면서 전페이지로
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('조회된 결과가 없습니다');history.back();</script>");
			 
			out.flush();


			
			
			
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
