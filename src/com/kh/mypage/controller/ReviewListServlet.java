package com.kh.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mypage.model.service.ReviewService;
import com.kh.mypage.model.vo.Review;

/**
 * Servlet implementation class ReviewListServlet
 */
@WebServlet("/review.my")
public class ReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String proCode = request.getParameter("proCode");
		ArrayList<Review> rList = new ReviewService().selectReviewList(proCode);
		//request.setAttribute("proCode", proCode);
		request.setAttribute("rList", rList);
		request.getRequestDispatcher("views/product/productDetailPage.jsp").forward(request, response);
		
		//location.href="/dailyChan/views/product/productDetailPage.jsp?rList="+ rList;
		
		System.out.println(proCode);
		System.out.println(rList);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
