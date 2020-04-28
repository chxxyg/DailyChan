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

/**
 * Servlet implementation class ProductToCartServlet
 */
@WebServlet("/detailToCart.pro")
public class ProductToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		String proCode = request.getParameter("proCode");
		int qty = Integer.parseInt(request.getParameter("qty"));
		int proPrice = Integer.parseInt(request.getParameter("proPrice"));
		
		System.out.println(memberId);
		System.out.println(proCode);
		System.out.println(qty);
		System.out.println(proPrice);
		
		int result = 0;
		int msg = 0;
		
		int exist = new CartService().searchCart(memberId, proCode);
		
		if(exist == 0) { // 상품이 장바구니에 없으니 장바구니에 담기
			result = new CartService().insertIntoCart(memberId, proCode, proPrice, qty);
			
			if(result > 0) { // 장바구니에 담기 성공
				msg=1;
			}else { // 장바구니에 담기 실패 -> 에러페이지로
				request.setAttribute("message", "장바구니 담기 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
						
		}else { // 상품이 장바구니에 이미 존재함
			msg=0;
		}
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(msg);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
