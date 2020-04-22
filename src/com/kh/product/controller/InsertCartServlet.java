package com.kh.product.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.product.model.service.CartService;
import com.kh.product.model.vo.ShoppingCart;

/**
 * Servlet implementation class InsertCartServlet
 */
@WebServlet("/toCart.pro")
public class InsertCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		String pCode = request.getParameter("proCode");
		int pPrice = Integer.parseInt(request.getParameter("proPrice"));
		
		int result = 0;
		
		ShoppingCart cart = new CartService().searchCart();
		
		if(cart != null) {
			if(cart.getMemberId().equals(userId) && cart.getProCode().equals(pCode)) {
				System.out.println("상품이 이미 장바구니에 존재합니다.");
			}else {
				result = new CartService().insertCart(userId, pCode, pPrice);
			}
		}else {
			result = new CartService().insertCart(userId, pCode, pPrice);
		}
		
		if(result > 0) {
			System.out.println("상품이 장바구니에 담겼습니다.");
		}
		
		
		
		/*
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print();*/
		
		/*if(memberId != null) {	// 회원 로그인한 경우
		}
		else {	// 비회원(로그인 안한) 경우
			int result = new ProductService().insertCart(비회원 session값, proCode, proPrice);
		}*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
