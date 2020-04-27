package com.kh.admin.adminDiscount.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminDiscount.model.service.AdDiscountService;
import com.kh.admin.adminDiscount.model.vo.AdDiscount;

/**
 * Servlet implementation class AdDiscountDeleteServlet
 */
@WebServlet("/discountDelete.ad")
public class AdDiscountDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdDiscountDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int dc = Integer.parseInt(request.getParameter("dc"));
		
		int result = new AdDiscountService().deleteDiscount(dc);
		
		if(result > 0) {
			response.sendRedirect("discountList.ad");
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
