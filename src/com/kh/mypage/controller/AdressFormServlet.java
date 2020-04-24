package com.kh.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mypage.model.service.MypageService;
import com.kh.mypage.model.vo.Address;

/**
 * Servlet implementation class AdressFormServlet
 */
@WebServlet("/addressForm.my")
public class AdressFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdressFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String userId = request.getParameter("userId");
	    
	    ArrayList<Address> list = new MypageService().listAddress(userId);
	    
	    if(!list.isEmpty())
	    {
	        request.setAttribute("list", list);
	    }
	    else
	    {
	        request.setAttribute("msg", "등록된 배송지가 없습니다.");
	    }

	    request.getRequestDispatcher("views/mypage/addressForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
