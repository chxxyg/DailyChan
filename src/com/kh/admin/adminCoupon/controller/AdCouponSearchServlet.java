package com.kh.admin.adminCoupon.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminCoupon.model.service.AdCouponService;
import com.kh.admin.adminCoupon.model.vo.AdCoupon;

/**
 * Servlet implementation class AdCouponSearchServlet
 */
@WebServlet("/couponSearch.ad")
public class AdCouponSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdCouponSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String couponCode = request.getParameter("couponCode");
		
		ArrayList<AdCoupon> list = new AdCouponService().searchCoupon(couponCode);
		
		request.setAttribute("list", list);
		if(list.isEmpty()) {	
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('조회된 결과가 없습니다');history.back();</script>");
			
			out.flush();
		}else {	
			request.getRequestDispatcher("views/admin/adminCoupon/adminCouponList.jsp").forward(request, response);		
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
