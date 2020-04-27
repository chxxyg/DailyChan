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
 * Servlet implementation class AdOneInquiryListServlet
 */
@WebServlet("/adOneInquiryList.ad")
public class AdOneInquiryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdOneInquiryListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<AdOneInquiry> list = new AdOneInquiryService().selectList();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/adminInquiry/adOneInquiryList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
