package com.kh.admin.adminCoupon.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminCoupon.model.service.AdCouponService;
import com.kh.admin.adminCoupon.model.vo.AdCoupon;

/**
 * Servlet implementation class AdCouponDetailServlet
 */
@WebServlet("/datailCoupon.ad")
public class AdCouponDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdCouponDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cc = request.getParameter("cc");
		
		AdCoupon c = new AdCouponService().detailCoupon(cc);
		
		request.setAttribute("c", c);
		request.getRequestDispatcher("views/admin/adminCoupon/adminCouponDetail.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
