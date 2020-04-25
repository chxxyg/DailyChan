package com.kh.admin.adminPayment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminPayment.model.service.AdPaymentService;

/**
 * Servlet implementation class AdPaymentCategory
 */
@WebServlet("/adpayCategory.ad")
public class AdPaymentCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdPaymentCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String payNo = request.getParameter("payNo");
		int payCategory = Integer.parseInt(request.getParameter("payCategory"));
		int result = new AdPaymentService().adPaymentUpdate(payNo, payCategory);
		
		if(result>0) {
			request.getSession().setAttribute("msg", "게시글 수정 성공");
			response.sendRedirect("paymentList.ad?currentPage=1");
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
