package com.kh.admin.adminReview.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminReview.model.service.AdReviewService;
import com.kh.admin.adminReview.model.vo.AdReview;

/**
 * Servlet implementation class AdReviewDetailServlet
 */
@WebServlet("/reviewDetail.ad")
public class AdReviewDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdReviewDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int rbo = Integer.parseInt(request.getParameter("rbo"));
		
		AdReview v = new AdReviewService().detailReview(rbo);
		
		request.setAttribute("v", v);
		request.getRequestDispatcher("리뷰디테일jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
