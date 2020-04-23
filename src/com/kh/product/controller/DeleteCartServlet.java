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
		
		System.out.println(pList[0]);
		
		String[] pCodeArr = null;
		
		if(pList != null ){
			pCodeArr = pList[0].split(",");
		}
		
		
		int result = 0;
		for(int i=0; i<pCodeArr.length; i++) {
			
			System.out.println(pCodeArr[i]);
			result = new CartService().deleteCart(memberId, pCodeArr[i]);
			if(result <= 0) {
				break;
			}
		}
		
		String msg = "";
		if(result > 0) { // 성공
			msg = "성공";
		}else { // 실패
			msg="실패";//에러페이지
		}
		
		//response.setCharacterEncoding("utf-8");
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
