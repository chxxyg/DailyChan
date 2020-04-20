package com.kh.admin.adminMember.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMember.model.service.adMemberService;
import com.kh.member.model.vo.Member;
import com.kh.admin.adminMember.model.vo.AdPageInfo;


/**
 * Servlet implementation class AdMemberCountServlet
 */
@WebServlet("/countMember.ad")
public class AdMemberCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdMemberCountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int countMember;
		int currentPage;
		int startPage;
		int endPage;
		int maxPage;
		
		int pageLimit;
		int countLimit;
		
		countMember = new adMemberService().getCountMember();
		
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		pageLimit = 10;
		
		countLimit = 10;
		
		maxPage = (int)Math.ceil((double)countMember / countLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		AdPageInfo pi = new AdPageInfo(countMember, currentPage, startPage, endPage, maxPage, pageLimit, countLimit);
		
		ArrayList<Member> list = new adMemberService().getCountMember(pi);
		
		request.setAttribute("pi", pi);
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
