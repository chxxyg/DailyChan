package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/insert.me")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("login_id");
		String userPwd = request.getParameter("pwd");
		String userName = request.getParameter("mbr_nm");
		String phone1 = request.getParameter("cell_no1");
		String phone2 = request.getParameter("cell_no2");
		String email = request.getParameter("email");
		String recommender = request.getParameter("recomm_remark");
		String phone = phone1 + phone2;
		
		Member m = new Member(userId, userPwd, userName, phone, email, recommender);
		
		int result = new MemberService().insertMember(m);
	
		if(result > 0) 
		{
          
            request.getRequestDispatcher("views/member/memEnrollSuccess.jsp").forward(request, response);
        }
		else 
		{
            
            request.setAttribute("msg", "회원가입 실패!!");
            RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
            view.forward(request, response);
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
