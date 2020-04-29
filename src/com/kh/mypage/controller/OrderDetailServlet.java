package com.kh.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.service.MyOrderService;
import com.kh.mypage.model.vo.Mypage;

/**
 * Servlet implementation class OrderDetailServlet
 */
@WebServlet("/orderDetail.my")
public class OrderDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		
		String orderNo = request.getParameter("orderNo");
		String orderDate = request.getParameter("orderDate");
		
		ArrayList<Mypage> detailList = new MyOrderService().ordDetailList(memberId, orderNo);
		
		request.setAttribute("detailList", detailList);
		request.setAttribute("orderNo", orderNo);
		request.setAttribute("orderDate", orderDate);
		request.getRequestDispatcher("views/mypage/myOrderDetailView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
