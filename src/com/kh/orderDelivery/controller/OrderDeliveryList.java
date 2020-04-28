package com.kh.orderDelivery.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.kh.orderDelivery.model.service.OrderDeliveryService;
import com.kh.orderDelivery.model.vo.OrderDelivery;

/**
 * Servlet implementation class OrderDeliveryList
 */
@WebServlet("/orderDeliveryList.od")
public class OrderDeliveryList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderDeliveryList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String orderNo = request.getParameter("orderNo");
	    String userId = request.getParameter("userId");
	    
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    
	    OrderDelivery od = new OrderDeliveryService().orderList(orderNo, userId);
	    JSONObject jsonObj = new JSONObject();
        jsonObj.put("recipient", od.getOdRecipient());
        jsonObj.put("emergency_contact", od.getOdEmergencyContact());
        jsonObj.put("delivery_date", sdf.format(od.getOdDeliveryDate()));
        jsonObj.put("address", od.getOdAddress());
        
        response.setContentType("application/json; charset=utf-8"); 
        PrintWriter out = response.getWriter();
        out.println(jsonObj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
