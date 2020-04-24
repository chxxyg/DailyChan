package com.kh.admin.adminPayment.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminPayment.model.service.AdPaymentService;
import com.kh.orderDelivery.model.vo.OrderDelivery;

/**
 * Servlet implementation class AdPaymentListServlet
 */
@WebServlet("/paymentList.ad")
public class AdPaymentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdPaymentListServlet() {
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
		listCount = new AdPaymentService().adPaymentListCount();
				
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
		
			
				
		ArrayList<OrderDelivery> list = new AdPaymentService().adPaymentSelectList(pi);
		int count = new AdPaymentService().adPaymentListCount();
		
		
		// adminPaymentList페이지에 보내줌
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("count", count);
				
		RequestDispatcher view = request.getRequestDispatcher("views/admin/adminPayment/adminPaymentList.jsp");
		view.forward(request, response);
				
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
