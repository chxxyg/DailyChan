package com.kh.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;
import com.kh.notice.model.vo.PageInfo;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/noticeList.no")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int listCount;			// 총 게시글 개수
		int currentPage;		// 현재 페이지(즉, 요청한 페이지)
		int startPage;			// 현재 페이지 하단에 보여지는 페이징바의 시작 수
		int endPage;			// 현재 페이지 하단에 보여지는 페이징바의 끝 수
		int maxPage;			// 전체 페이지에서의 가장 마지막 페이지
		
		int pageLimit;			// 한 페이지 하단에 보여질 페이지 최대 개수
		int boardLimit;			// 한 페이지에 보여질 게시글 최대 개수
		
		// * listCount: 총 게시글 개수
		listCount = new NoticeService().getListCount();
		
		// * currentPage: 현재 페이지(즉, 요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		// * pageLimit: 한 페이지 하단에 보여질 페이지 최대 개수
		pageLimit = 10;
		
		// * boardLimit: 한 페이지에 보여질 게시글 최대 개수
		boardLimit = 10;
		
		// * maxPage: 총 페이지 수
		/*
		 * ex)boardLimit: 10이라는 가정 하에  
		 * 
		 * 총 개수/ boardLimit
		 * 100.0 / 10 = 10.0		--> 10페이지
		 * 101.0 / 10 = 10.1		--> 11페이지
		 * 105.0 / 10 = 10.5		--> 11페이지
		 * 109.0 / 10 = 10.9		--> 11페이지 
		 *
		 *(실수)총개수 / boardLimit의 결과값을 무조건 올림한 값!
		 */
		
		maxPage =(int) Math.ceil((double)listCount / boardLimit);
		
		// * startPage: 현재 페이지에 보여질 페이징바의 시작 수
		/*
		 * ex) pageLimit: 10이라는 가정하에
		 * 1, 11, 21, 31, ...		==> n * 10 + 1
		 * 
		 * currentPage = 1			==> 0 * 10 + 1 => 1
		 * currentPage = 5			==> 0 * 10 + 1 => 1
		 * currentPage = 10			==> 0 * 10 + 1 => 1
		 * 
		 * currentPage = 11			==> 1 * 10 + 1 => 11
		 * currentPage = 15			==> 1 * 10 + 1 => 11
		 * currentPage = 20 		==> 1 * 10 + 1 => 11
		 * 
		 * currentPage = 1 ~  10 	n = 0
		 * currentPage = 11 ~ 20	n = 1
		 * currentPage = 21 ~ 30	n = 2
		 * 
		 * 							n = (currentPage - 1)  / pageLimit
		 * 
		 * */
		startPage = (currentPage - 1)  / pageLimit * pageLimit + 1;
		
		// * endPage: 한 페이지 하단에 보여질 페이징바의 끝 수
		/*
		 * ex) pageLimit: 10이라는 가정하에
		 * 
		 * startPage: 1			=> endPage: 10
		 * startPage: 11		=> endPage: 20
		 * 
		 * */

		endPage = startPage + pageLimit - 1;
		
		// 단, maxPage가 고작 13까지밖에 안되면?
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, startPage, endPage, maxPage, pageLimit, boardLimit);	
		
			
		ArrayList<Notice> list = new NoticeService().selectListA(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
	
		RequestDispatcher view = request.getRequestDispatcher("views/notice/noticeListView.jsp");
		view.forward(request, response);

	}

	/* System.out.println(list); */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
