package com.kh.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mypage.model.service.MypageService;

/**
 * Servlet implementation class AddressDefaultServlet
 */
@WebServlet("/defaultAddress.my")
public class AddressDefaultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressDefaultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String userId = request.getParameter("mbr_dlvp_seq");
        String updateAddr = request.getParameter("updateAddr"); // 수정할 주소
        int index = (updateAddr.equals("0000000") ? 1: 2);
        
	    int result1 = new MypageService().defaultAddressY(userId, index);
	    int result2 = new MypageService().defaultAddressN(userId, index);
	    int result = result1 * result2;
	    response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        out.print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
