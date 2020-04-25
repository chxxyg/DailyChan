package com.kh.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mypage.model.service.MypageService;
import com.kh.mypage.model.vo.Address;

/**
 * Servlet implementation class AddressUpdateServlet
 */
@WebServlet("/updateAddress.my")
public class AddressUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String defaultAddr = request.getParameter("base_yn");
        String userId = request.getParameter("userId");
        
        Address a = new Address();
        a.setMemberId(request.getParameter("userId"));
        a.setAddressName(request.getParameter("recvr_nm"));
        a.setZipCode(request.getParameter("zonecode"));
        a.setAddress(request.getParameter("roadAddress") + request.getParameter("extraRoadAddr"));
        a.setAddressDetail(request.getParameter("dtl_addr"));
        a.setPhone(request.getParameter("cell_no"));
        a.setAddressDefault(defaultAddr);
        
        int result1 = new MypageService().updateAddress(a);
        
        int result2 =1;
        if(defaultAddr.equals("Y"))
        {
            result2 = new MypageService().defaultAddress(userId);
        }
        
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
