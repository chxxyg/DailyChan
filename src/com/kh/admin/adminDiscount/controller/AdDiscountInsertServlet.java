package com.kh.admin.adminDiscount.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminBlackList.model.service.AdBlackListService;
import com.kh.admin.adminDiscount.model.service.AdDiscountService;
import com.kh.admin.adminDiscount.model.vo.AdDiscount;
import com.kh.product.model.service.ProductService;

/**
 * Servlet implementation class AdDiscountInsertServlet
 */
@WebServlet("/discountInsert.ad")
public class AdDiscountInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdDiscountInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String productCode = request.getParameter("productCode");
		String dst = request.getParameter("dst");
		String det = request.getParameter("det");
		Double discountRate =  Double.parseDouble(request.getParameter("discountRate"));
		
		AdDiscount d = new AdDiscount();
		d.setProductCode(productCode);
		d.setDiscountStartDateString(dst);
		d.setDiscountEndDateString(det);
		d.setDiscountRate(discountRate);
		
		
		int result = new AdDiscountService().insertDiscount(d);
		
		int result2 = new ProductService().insertAd(productCode);
		
		request.setAttribute("d", d);
		if(result > 0 && result2 > 0) {	
			response.sendRedirect("discountList.ad");
		}else {						
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('없는상품이거나 이미 할인중인상품입니다.');history.back();</script>");
			
			out.flush();
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

