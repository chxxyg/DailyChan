package com.kh.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.service.ReviewService;
import com.kh.mypage.model.vo.Review;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ReviewInsertServlet
 */
@WebServlet("/insertReview.re")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String proCode = request.getParameter("proCode");
		int rating = Integer.parseInt(request.getParameter("rating"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		
		Review re = new Review();
		re.setProductCode(proCode);
		re.setMemberId(memberId);
		re.setReviewTitle(title);
		re.setReviewContent(content);
		re.setReviewRating(rating);
		
		
		int result = new ReviewService().insertReview(re);

		request.setAttribute("result", result);
		String url = "window.opener.location.replace('/dailyChan/pDetail.pro?proCode=" + proCode + "');";
        PrintWriter out = response.getWriter();
        out.println("<script>");
        out.println(url);
        out.println("window.close();");
        out.println("</script>");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
