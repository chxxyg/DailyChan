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
 * Servlet implementation class UpdateCartServlet
 */
@WebServlet("/updateQty.pro")
public class UpdateCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		String proCode = request.getParameter("pCode");
		int qty = Integer.parseInt(request.getParameter("qty"));
	
		int result = new CartService().updateQtyCart(memberId, proCode, qty);
		
		String msg = null;
		if(result>0) { //수량변경 성공
			msg="수량변경 성공";
		}else { //수량변경 실패
			msg="수량변경 실패";
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
