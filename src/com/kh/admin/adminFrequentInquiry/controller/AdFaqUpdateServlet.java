package com.kh.admin.adminFrequentInquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminFrequentInquiry.model.service.AdFaqService;
import com.kh.frequentInquiry.model.vo.FrequentInquiry;

/**
 * Servlet implementation class AdFaqUpdateServlet
 */
@WebServlet("/updateFaq.ad")
public class AdFaqUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdFaqUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mid = request.getParameter("mid");
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		FrequentInquiry f = new FrequentInquiry();
		f.setFaqTitle(faqTitle);
		f.setFaqContent(faqContent);
		
		int result = new AdFaqService().adFaqUpdate(f,mid);
		
		if(result > 0) { // 성공
			
			request.getSession().setAttribute("msg", "게시글 수정 성공");
			response.sendRedirect("faqDetail.ad?mid="+mid);
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
