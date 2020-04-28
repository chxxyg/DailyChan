package com.kh.admin.adminCoupon.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminBlackList.model.service.AdBlackListService;
import com.kh.admin.adminCoupon.model.service.AdCouponService;
import com.kh.admin.adminCoupon.model.vo.AdCoupon;

/**
 * Servlet implementation class AdCouponInsertServlet
 */
@WebServlet("/couponInsert.ad")
public class AdCouponInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdCouponInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String couponCode = request.getParameter("couponCode");
		String couponName = request.getParameter("couponName");
		String condition = request.getParameter("condition");
		int date = Integer.parseInt(request.getParameter("date"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		AdCoupon c = new AdCoupon();
		c.setCouponCode(couponCode);
		c.setCouponName(couponName);
		c.setCouponCondition(condition);
		c.setCouponExpDate(date);
		c.setCouponPrice(price);
		
		int result = new AdCouponService().insertCoupon(c);
		
		request.setAttribute("c", c);
		if(result > 0) {	
			response.sendRedirect("couponList.ad");
		}else {						
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('실패!!');history.back();</script>");
			
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
