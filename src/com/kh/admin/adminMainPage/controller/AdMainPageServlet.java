package com.kh.admin.adminMainPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminMainPage.model.service.AdMainService;
import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;
import com.kh.orderDelivery.model.vo.OrderDelivery;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class AdMainPageServlet
 */
@WebServlet("/mainPage.ad")
public class AdMainPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdMainPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				
		ArrayList<Product> list = new AdMainService().adMainProList();
		ArrayList<OrderDelivery> list1 = new AdMainService().adMainPayList();
		ArrayList<AdOneInquiry> list2 = new AdMainService().adMainQuiryList();

		request.setAttribute("list", list);
		request.setAttribute("list1", list1);	
		request.setAttribute("list2", list2);
		RequestDispatcher view = request.getRequestDispatcher("views/admin/adminCommon/adminMainBody.jsp");
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
