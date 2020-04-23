package com.kh.admin.adminBlackList.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminBlackList.model.service.AdBlackListService;
import com.kh.admin.adminBlackList.model.vo.BlackList;

/**
 * Servlet implementation class AdBlackListSearchServlet
 */
@WebServlet("/blackListSearch.ad")
public class AdBlackListSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdBlackListSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memberId = request.getParameter("memberId");		
		
		ArrayList<BlackList> list = new AdBlackListService().searchOneBlackList(memberId);
		
		
		request.setAttribute("list", list);
		if(list.isEmpty()) {	
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('조회된 결과가 없습니다');history.back();</script>");
			
			out.flush();
		}else {	
			request.getRequestDispatcher("views/admin/adminBlackList/adminBlackList.jsp").forward(request, response);		
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

