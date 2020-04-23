package com.kh.member.controller.idPwdFindBox;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class PwdFindServlet
 */
@WebServlet("/pwdFind.me")
public class PwdFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwdFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String pw_id = request.getParameter("pw_id");
	String pw_name = request.getParameter("pw_name");
	
	String memberPwd = new MemberService().searchPwd(pw_id, pw_name);
	
	if(memberPwd != null) {
		
		HttpSession session = request.getSession();
		session.setAttribute("memberPwd", memberPwd);

		request.getRequestDispatcher("views/member/idPwdFindSuccessPage.jsp").forward(request, response);
		
		}else {
			
			request.getRequestDispatcher("views/member/findBox.jsp").forward(request, response);
			
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
