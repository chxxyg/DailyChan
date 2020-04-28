package com.kh.admin.adminNotice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminNotice.model.service.AdNoticeService;
import com.kh.inquiry.model.vo.Attachment;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class AdNoticeDetailServlet
 */
@WebServlet("/noticeDetail.ad")
public class AdNoticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdNoticeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String mid = request.getParameter("mid");
		
		Notice n = new AdNoticeService().adNoticeDetail(mid);
		Attachment at = new AdNoticeService().adAttachment(mid);
		
		request.setAttribute("n", n);
		request.setAttribute("at", at);
		
		RequestDispatcher view = request.getRequestDispatcher("views/admin/adminInquiry/adminNoticeDetailForm.jsp");
		view.forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
