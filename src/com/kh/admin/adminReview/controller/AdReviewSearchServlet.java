package com.kh.admin.adminReview.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMember.model.vo.AdPageInfo;
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

		// ------------------------ 페이징 처리 -------------------
		int listCount;			// 총 게시글 갯수
		int currentPage;		// 현재 페이지 (즉, 요청한 페이지)
		int startPage;			// 현재 페이지 하단에 보여지는 페이징바의 시작수
		int endPage;			// 현재 페이지 하단에 보여지는 페이징바의 끝 수
		int maxPage;			// 전체 페이지에서의 가장 마지막 페이지
		
		int pageLimit;			// 한 페이지 하단에 보여질 페이지 최대 갯수
		int boardLimit;			// 한 페이지에 보여질 게시글 최대 갯수
		
		// * listCount : 총 게시글 갯수
		listCount = new AdReviewService().adReCount();
		
		// * currentPage : 현재 페이지 (즉, 요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		// * pageLimit : 한 페이지 하단에 보여질 페이지 최대 갯수
		pageLimit = 10;
		
		// * boardLimit : 한 페이지에 보여질 게시글 최대 갯수
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
				
		AdPageInfo pi = new AdPageInfo(listCount, currentPage, startPage, endPage, maxPage, pageLimit, boardLimit);
			
		
		String memberId = request.getParameter("memberId");
		
		ArrayList<AdReview> list = new AdReviewService().searchReview(memberId, pi);
		
		request.setAttribute("pi", pi);
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
