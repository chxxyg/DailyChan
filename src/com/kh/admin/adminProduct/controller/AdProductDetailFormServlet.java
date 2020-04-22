package com.kh.admin.adminProduct.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.admin.adminProduct.model.service.AdProductService;
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class AdProductDetailFormServlet  
 */
@WebServlet("/productDetail.ad")
public class AdProductDetailFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdProductDetailFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String mid = request.getParameter("mid");
		
		Product p = new AdProductService().adProductDetail(mid);
		ArrayList<AttachmentProduct> ap = new AdProductService().adAttachmentDetail(mid);
		
		request.setAttribute("p", p);
		request.setAttribute("ap", ap);
		
		RequestDispatcher view = request.getRequestDispatcher("views/admin/adminProduct/adminProductDetailForm.jsp");
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
