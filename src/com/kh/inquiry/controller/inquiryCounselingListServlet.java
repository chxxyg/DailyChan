package com.kh.inquiry.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.inquiry.model.service.InquiryService;
import com.kh.inquiry.model.vo.Inquiry;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class inquiryCounselingListServlet
 */
@WebServlet("/counselingList.in")
public class inquiryCounselingListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inquiryCounselingListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();

		 Inquiry i = new InquiryService().selectInquiryList(memberId); 

		/*
		 * ArrayList<Inquiry> list = new InquiryService().selectInquiryList(memberId);
		 */

		if (i != null) { // 조회성공
			
			
			request.setAttribute("i", i);
			/* request.setAttribute("list", list); */

			RequestDispatcher view = request.getRequestDispatcher("views/inquiry/inquiryCounselingList.jsp");
			view.forward(request, response);

		} else { // 조회실패
			request.setAttribute("msg", "조회 실패");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
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
