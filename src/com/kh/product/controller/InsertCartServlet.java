package com.kh.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;
import com.kh.product.model.service.CartService;

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
		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		String proCode = request.getParameter("proCode");
		int proPrice = Integer.parseInt(request.getParameter("proPrice"));
		
		int result = new CartService().insertCart(memberId, proCode, proPrice);
		
		/*if(memberId != null) {	// 회원 로그인한 경우
		}
		else {	// 비회원(로그인 안한) 경우
			int result = new ProductService().insertCart(비회원 session값, proCode, proPrice);
		}*/
		
		if(result > 0) {
			request.setAttribute("msg", "장바구니에 상품이 담겼습니다.");
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
