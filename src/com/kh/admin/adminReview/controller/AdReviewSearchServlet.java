package com.kh.admin.adminReview.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminReview.model.service.AdReviewService;
import com.kh.admin.adminReview.model.vo.AdReview;

/**
 * Servlet implementation class AdReviewSearchServlet
 */
@WebServlet("/reviewSearch.ad")
public class AdReviewSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdReviewSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memberId = request.getParameter("memberId");
		
		ArrayList<AdReview> list = new AdReviewService().searchReview(memberId);
		
		request.setAttribute("list", list);
		if(list.isEmpty()) {	
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('조회된 결과가 없습니다');history.back();</script>");
			
			out.flush();
		}else {	
			request.getRequestDispatcher("views/admin/adminReview/adminReviewList.jsp").forward(request, response);		
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
