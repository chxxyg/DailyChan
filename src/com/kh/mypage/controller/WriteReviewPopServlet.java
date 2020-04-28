package com.kh.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.vo.Review;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class WriteReviewPopServlet
 */
@WebServlet("/reviewPop.re")
public class WriteReviewPopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteReviewPopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String proCode = request.getParameter("proCode");
		int rating = Integer.parseInt(request.getParameter("rating"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		
		Product p = new ProductService().selectDetail(proCode);
		
		Review re = new Review();
		re.setProductCode(proCode);
		re.setMemberId(memberId);
		re.setReviewTitle(title);
		re.setReviewContent(content);
		re.setReviewRating(rating);

		
		request.setAttribute("p", p);
		
		request.getRequestDispatcher("views/mypage/writeReviewPop.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
