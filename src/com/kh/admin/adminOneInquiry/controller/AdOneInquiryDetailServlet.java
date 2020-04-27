package com.kh.admin.adminOneInquiry.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminOneInquiry.model.service.AdOneInquiryService;
import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;

/**
 * Servlet implementation class AdOneInquiryDetailServlet
 */
@WebServlet("/adOneInquiryDetail.ad")
public class AdOneInquiryDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdOneInquiryDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ibn = Integer.parseInt(request.getParameter("ibn"));
		
		AdOneInquiry i = new AdOneInquiryService().detailAdOneInquiry(ibn);
		
		request.setAttribute("i", i);
		request.getRequestDispatcher("views/admin/adminInquiry/adminOneInquiryDetail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
