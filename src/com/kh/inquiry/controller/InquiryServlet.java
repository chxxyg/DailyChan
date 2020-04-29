package com.kh.inquiry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.inquiry.model.service.InquiryService;
import com.kh.inquiry.model.vo.Inquiry;

/**
 * Servlet implementation class inquiryServlet
 */
@WebServlet("/write.in")
// 로그인 시 기본 작성 폼 보이는 
public class InquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InquiryServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 아이디 유형 제목 내용

		String memberId = request.getParameter("memberId");
		String inquiryType = request.getParameter("counsel_clss_no");
		String inquiryTitle = request.getParameter("quest_title");
		String inquiryContent = request.getParameter("quest_cont");

		Inquiry i = new Inquiry();
		i.setMemberId(memberId);
		i.setInquiryType(inquiryType);
		i.setInquiryTitle(inquiryTitle);
		i.setInquiryContent(inquiryContent);
		//System.out.println(i);
		int result = new InquiryService().insertInquiry(i);
		
		if (result > 0) {
			request.setAttribute("i", i);
			request.getSession().setAttribute("msg", "게시글 등록 성공");
//			RequestDispatcher view = request.getRequestDispatcher("views/inquiry/inquiryFormView.jsp");
//			view.forward(request, response);
			response.sendRedirect("counselingList.in");
		} else {

			request.setAttribute("msg", "게시글 등록 실패");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
