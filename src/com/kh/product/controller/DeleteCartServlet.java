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
import com.kh.product.model.vo.ShoppingCart;

/**
 * Servlet implementation class DeleteCartServlet
 */
@WebServlet("/deleteCart.pro")
public class DeleteCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		String[] pList = request.getParameterValues("pList");
		
		
		String[] codeList = null;
	    
		if(pList != null ){
	         codeList = pList[0].split(",");
	    }
	    
		int del=0;
		int result = 1;
		ArrayList<ShoppingCart> clist = new ArrayList<>();
		
		for(int i=0; i<codeList.length; i++) {
			del = new CartService().deleteCart(memberId, codeList[i]);
			result *= del;
		}
		
		if(result > 0) { //삭제 성공
			clist = new CartService().selectCart(memberId);
			request.setAttribute("clist", clist);
			request.getRequestDispatcher("views/product/cartPage.jsp").forward(request, response);
		}else { // 삭제실패
			request.setAttribute("msg", "상품 삭제 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
