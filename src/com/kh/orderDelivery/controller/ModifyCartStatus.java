package com.kh.orderDelivery.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.orderDelivery.model.service.OrderDeliveryService;

/**
 * Servlet implementation class ModifyCartStatus
 */
@WebServlet("/modifyCartStatus.od")
public class ModifyCartStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyCartStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String orderNo = request.getParameter("orderNo");
        String userId = request.getParameter("userId");
        int result = new OrderDeliveryService().modifyCartStatus(orderNo, userId);
        
        response.setCharacterEncoding("utf8");
        PrintWriter out = response.getWriter();
        if(result > 0)
        {
            out.println("장바구니 상태 변경 완료");
        }
        else
        {
            out.println("장바구니 상태 변경 실패");
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
