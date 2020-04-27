package com.kh.admin.adminOneInquiry.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMember.model.service.adMemberService;
import com.kh.admin.adminOneInquiry.model.service.AdOneInquiryService;
import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;

/**
 * Servlet implementation class AdOneInquiryResponseServlet
 */
@WebServlet("/responseInquiry.ad")
public class AdOneInquiryResponseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdOneInquiryResponseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int ibn = Integer.parseInt(request.getParameter("ibn"));
		String res = request.getParameter("res");
		
		AdOneInquiry i = new AdOneInquiry();
		i.setInquiryBoardNo(ibn);
		i.setInquiryResponse(res);
		
		
		int result2 = new AdOneInquiryService().yn(ibn);
		
		int result = new AdOneInquiryService().responseInquiry(i);
		
		if(result > 0) {	// 성공
			response.sendRedirect("adOneInquiryDetail.ad?ibn="+ibn);
			request.setAttribute("msgAd", "수정완료");
		}else {
			request.setAttribute("msg", "삭제실패");
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
