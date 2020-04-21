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
		
		ArrayList<Product> list = new ProductService().selectProList(category);
		
		request.setAttribute("category", category);
		request.setAttribute("title", title);
		request.setAttribute("list", list);
		
		RequestDispatcher view = request.getRequestDispatcher("views/product/productListPage.jsp");
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
