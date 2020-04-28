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
 * Servlet implementation class ModifyOrderServlet
 */
@WebServlet("/modifyOrder.od")
public class ModifyOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String orderNo = request.getParameter("orderNo");
	    String userId = request.getParameter("userId");
	    int result1 = new OrderDeliveryService().modifyStatus(orderNo, userId);
	    int result2 = new OrderDeliveryService().deleteOrder(orderNo, userId);
	    
	    int result = result1 * result2;
	    
	    response.setCharacterEncoding("utf8");
        PrintWriter out = response.getWriter();
        if(result > 0)
        {
            out.println("데이터 정리 완료");
        }
        else
        {
            out.println("데이터 정리 실패");
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
