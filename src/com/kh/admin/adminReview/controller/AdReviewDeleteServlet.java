package com.kh.admin.adminReview.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminBlackList.model.service.AdBlackListService;
import com.kh.admin.adminReview.model.service.AdReviewService;
import com.kh.admin.adminReview.model.vo.AdReview;

/**
 * Servlet implementation class AdReviewDeleteServlet
 */
@WebServlet("/reviewDelete.ad")
public class AdReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdReviewDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int rno = Integer.parseInt(request.getParameter("rno"));
		
		int result = new AdReviewService().deleteReview(rno);
		
		if(result > 0) {	// 성공
			response.sendRedirect("reviewList.ad");
		}else {
			
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
