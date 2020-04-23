package com.kh.admin.adminMember.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminBlackList.model.service.AdBlackListService;
import com.kh.admin.adminBlackList.model.vo.BlackList;
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
		
		ArrayList<Member> list = new adMemberService().searchMember(memberId);
		
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/admin/adminMember/adminMemberList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

