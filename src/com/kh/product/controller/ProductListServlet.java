package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class CategoryListServlet
 */
@WebServlet("/pList.pro")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		// ------------ 페이징 처리 ------------
		int listCount;		// 총 게시글 갯수
		int currentPage;	// 현재 페이지 (즉, 요청한 페이지)
		int startPage;		// 현재 페이지 하단에 보여지는 페이징바의 시작 수
		int endPage;		// 현재 페이지 하단에 보여지는 페이징바의 끝 수
		int maxPage;		// 전체 페이지에서의 가장 마지막 페이지
		
		int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대 갯수
		int boardLimit;		// 한 페이지에 보여질 게시글 최대 갯수
	
		// * listCount : 총 게시글 갯수
		listCount = new ProductService().getListCount(request.getParameter("category"));
		
		// * currentPage : 현재 페이지 (즉, 요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		// * pageLimit : 한 페이지 하단에 보여질 페이지 최대 갯수
		pageLimit = 5;
		
		// * boardLimit : 한 페이지에 보여질 게시글 최대 갯수
		boardLimit = 12;
		
		// * maxPage : 총 페이지 수 
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		// * startPage : 현재 페이지에 보여질 페이징바의 시작 수
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		// * endPage : 한 페이지 하단에 보여질 페이징바의 끝 수
		endPage = startPage + pageLimit - 1;
		
		// 단, maxPage가 고작 13까지 밖에 안되면?
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, startPage, endPage, maxPage, pageLimit, boardLimit);
		
		String category = request.getParameter("category");	
		String title = "";

		switch(category) {
		case "KO" : title = "한식"; break;
		case "KOA" : title = "한식"; break;
		case "KOB" : title = "한식"; break;
		case "KOC" : title = "한식"; break;
		case "KOD" : title = "한식"; break;
		case "IT" : title = "양식"; break;
		case "ITA" : title = "양식"; break;
		case "ITB" : title = "양식"; break;
		case "ITC" : title = "양식"; break;
		case "ITD" : title = "양식"; break;
		case "AS" : title = "아시안"; break;
		case "ASA" : title = "아시안"; break;
		case "ASB" : title = "아시안"; break;
		case "ASC" : title = "아시안"; break;
		case "ASD" : title = "아시안"; break;
		case "new" : title = "NEW"; break;
		case "best" : title = "BEST"; break;
		case "sale" : title = "SALE"; break;
		}
		
		ArrayList<Product> list = new ProductService().selectProList(category, pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("category", category);
		request.setAttribute("title", title);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/product/productListPage.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
