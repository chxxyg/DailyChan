package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mypage.model.service.ReviewService;
import com.kh.mypage.model.vo.Review;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/pDetail.pro")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String proCode = request.getParameter("proCode");
		
		Product p = new ProductService().selectDetail(proCode);
		
		ArrayList<AttachmentProduct> list = new ProductService().selectAttachment(proCode);
		
		ArrayList<Review> rList = new ReviewService().selectReviewList(proCode);

		
		request.setAttribute("p", p);
		request.setAttribute("list", list);
		
		request.setAttribute("rList", rList);
		
		request.getRequestDispatcher("views/product/productDetailPage.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
