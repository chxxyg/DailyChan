package com.kh.member.controller.idPwdFindBox;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class IdFindServlet
 */
@WebServlet("/idFind.me")
public class IdFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id_name = request.getParameter("id_name");
		String id_email = request.getParameter("id_email");
		 
		String memberId  = new MemberService().searchId(id_name, id_email);
		
		
		// 처리 결과를 통해 사용자가 보게될 뷰 요청
		/*
		 * if(memberId != null) { // --> 아이디 찾기 성공했을 경우
		 * 
		 * 
		 * }else {// --> 실패했을 경우
		 * 
		 * }
		 */
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(memberId);
		
		
		
		
		
		//HttpSession session = request.getSession();
		//session.setAttribute("memberId", memberId);
	
		//response.sendRedirect("views/member/findBox.jsp");
		
		//request.getRequestDispatcher("views/member/findBox.jsp").forward(request, response);
		

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
