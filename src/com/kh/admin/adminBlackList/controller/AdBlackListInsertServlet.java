package com.kh.admin.adminBlackList.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminBlackList.model.service.AdBlackListService;
import com.kh.admin.adminBlackList.model.vo.BlackList;
import com.kh.admin.adminMember.model.service.adMemberService;

/**
 * Servlet implementation class AdBlackListInsertServlet
 */
@WebServlet("/blackListInsert.ad")
public class AdBlackListInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdBlackListInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memberId = request.getParameter("memberId");
		String penaltyCuase = request.getParameter("penaltyCuase");
		//int bno = Integer.parseInt(request.getParameter("bno"));
		//String date = request.getParameter("date");
		//String yn = request.getParameter("yn");
		
		

		BlackList b = new BlackList();
		//b.setBlackNo(bno);
		b.setMemberId(memberId);
		b.setPenaltyCuase(penaltyCuase);
		//b.setPenaltyDateString(date);
		//b.setNonblockYn(yn);
		
		
		int result = new AdBlackListService().insertBlackList(b);
		
		int result2 = new adMemberService().insertBlackList(memberId);
		
		request.setAttribute("b", b);
		if(result > 0 && result2 > 0) {	
			response.sendRedirect("blackList.ad");
		}else {						
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.println("<script>alert('이미 블랙리스트이거나 없는회원입니다.');history.back();</script>");
			
			out.flush();
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


