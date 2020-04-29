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
import com.kh.notice.model.service.NoticeService;

/**
 * Servlet implementation class InquiryFormServlet
 */
@WebServlet("/form.in")
public class InquiryFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiryFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int ino = Integer.parseInt(request.getParameter("ino"));

		Inquiry i = new InquiryService().selectInquiry(ino);

		if (i != null) { // 조회성공

			request.setAttribute("i", i);

			RequestDispatcher view = request.getRequestDispatcher("views/inquiry/inquiryFormView.jsp");
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
