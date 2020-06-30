package com.kh.product.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.product.model.service.WishListService;

/**
 * Servlet implementation class InsertWishListServlet
 */
@WebServlet("/toWishList.pro")
public class InsertWishListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertWishListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    response.setCharacterEncoding("utf-8");
	    PrintWriter out = response.getWriter();
	    
	    
	    String memberId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
	    String proCode = request.getParameter("proCode");
	    
	    // wishList 등록 확인
	    int count = new WishListService().countWishList(memberId, proCode);
	    System.out.println(count);
	    
	    if(count == 0)
	    {
	        int result = new WishListService().insertWishList(memberId, proCode);
	        
	        if(result > 0)
	        {
	            out.print(count);
	        }
	        else
	        {
	            out.print("error");
	        }
	    }
	    else
	    {
	        out.print(count);
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
