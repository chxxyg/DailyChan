package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.product.model.service.CartService;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.AttachmentProduct;

/**
 * Servlet implementation class ToOrderFormServlet
 */
@WebServlet("/orderForm.pro")
public class ToOrderFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToOrderFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		
		String codeList = request.getParameter("proCode");
		String nameList = request.getParameter("proName");
		String priceList = request.getParameter("proPrice");
		String quantityList = request.getParameter("quantity");
		int delivery = Integer.parseInt(request.getParameter("delivery"));
		int payAmount = Integer.parseInt(request.getParameter("payAmount"));
		
		String[] proCode = null;
		if(codeList != null ){
			proCode = codeList.split(",");
	    }
		
		/* ORDER_PRODUCT 테이블에 값 추가 */
		int ranNo = (int)(Math.random() * 1000000 + 1);
		String ranStr = "-" + String.valueOf(ranNo);
		
		int insert = new CartService().insertOrderProduct(memberId, ranStr);
		
		/* 장바구니 - 주문 후 order_no 추가 */
		int update = 0;
		int result = 1;
		for(int i=0; i<proCode.length; i++) {
			update = new CartService().updateOrdNoCart(memberId, proCode[i], ranStr);
			result *= update;
		}
		
		/* 주문서 form 으로 값 넘기기*/
		request.setAttribute("codeList", codeList);
		request.setAttribute("nameList", nameList);
		request.setAttribute("priceList", priceList);
		request.setAttribute("quantityList", quantityList);
		request.setAttribute("delivery", delivery);
		request.setAttribute("payAmount", payAmount);
		
		request.getRequestDispatcher("views/product/orderPage.jsp").forward(request, response);;
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
