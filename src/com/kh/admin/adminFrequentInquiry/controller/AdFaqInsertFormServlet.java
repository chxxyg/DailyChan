package com.kh.admin.adminFrequentInquiry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminFrequentInquiry.model.service.AdFaqService;
import com.kh.frequentInquiry.model.vo.FrequentInquiry;

/**
 * Servlet implementation class AdFaqInsertFormServlet
 */
@WebServlet("/faqInsert.ad")
public class AdFaqInsertFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdFaqInsertFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int faqCategoryList = Integer.parseInt(request.getParameter("faqCategoryList"));
		String faqTitle = request.getParameter("faqTitle");
		String faqContent = request.getParameter("faqContent");
		
		FrequentInquiry f = new FrequentInquiry();
		f.setFaqCategory(faqCategoryList);
		f.setFaqTitle(faqTitle);
		f.setFaqContent(faqContent);
		
		int result = new AdFaqService().adFaqInsert(f);
		
		if(result >0) {
			
			request.getSession().setAttribute("msg", "FAQ 등록 성공");
			response.sendRedirect("faqList.ad?currentPage=1");
		}else {
			request.setAttribute("msg", "FAQ 등록 실패");
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
