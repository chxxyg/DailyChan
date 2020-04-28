package com.kh.admin.adminDiscount.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminDiscount.model.service.AdDiscountService;
import com.kh.admin.adminDiscount.model.vo.AdDiscount;

/**
 * Servlet implementation class AdDiscountListServlet
 */
@WebServlet("/discountList.ad")
public class AdDiscountListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdDiscountListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<AdDiscount> list = new AdDiscountService().selectList();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/adminDiscount/adminDiscountList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
