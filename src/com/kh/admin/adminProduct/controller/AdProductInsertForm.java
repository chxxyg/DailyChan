package com.kh.admin.adminProduct.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.admin.adminProduct.model.service.AdProductService;
import com.kh.common.MyFileRenamePolicy;
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdProductInsertForm
 */
@WebServlet("/pdinsert.ad")
public class AdProductInsertForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdProductInsertForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		if(ServletFileUpload.isMultipartContent(request)) {

			int maxSize = 10 * 1024 * 1024;
			
				
			String resources = request.getSession().getServletContext().getRealPath("/resources");
			
			String savePath = resources + "\\adProduct_img\\";
			
			MultipartRequest multiRequest
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			
			/*
			 * 3. DB에 저장할 데이터들 뽑아서 vo에 담기
			 * > 글제목, 글내용, 카테고리, 작성자회원번호는 Board테이블에 insert
			 * > 넘어온 첨부파일이 있을 경우 원본명, 수정명, 저장경로는 Attachment테이블에 insert
			 */
		
			// 3_1. Board 테이블에 insert할 값 뽑아서 Board 객체 담기
			String pdCategoryList = multiRequest.getParameter("pdCategoryList"); 	// 카테고리
			String pdTitle = multiRequest.getParameter("pdTitle");				 	// 상품명
			String pdCode = multiRequest.getParameter("pdCode");					// 상품코드
			int pdEnterPrise = Integer.parseInt(multiRequest.getParameter("pdEnterPrise"));		// 납품업체명
			int pdPrise = Integer.parseInt(multiRequest.getParameter("pdPrice"));	// 상품가격
			int pdStock = Integer.parseInt(multiRequest.getParameter("pdStock"));	// 상품수량
			
			
			
			Product p = new Product();
			p.setProCategory(pdCategoryList);
			p.setProName(pdTitle);
			p.setProCode(pdCode);
			p.setProSupplyCoNo(pdEnterPrise);
			p.setProPrice(pdPrise);
			p.setProStock(pdStock);
			
			
			// AttachmentProduct테이블에 insert할 원본명, 수정명, 폴더경로 Attachment 객체에 담기
			
			ArrayList<AttachmentProduct> list = new ArrayList<>();
			
			for(int i=1; i<=3; i++) {
				String name = "pdUpfile" +i;
				
				if(multiRequest.getOriginalFileName(name) != null) {
					
					System.out.println(multiRequest.getFile(name).length());
					
					AttachmentProduct at = new AttachmentProduct();
					at.setAtFilePath(savePath);
					at.setAtFileName(multiRequest.getOriginalFileName(name));
					at.setAtFileLevel(i);
					at.setAtFileMaxSize((int)multiRequest.getFile(name).length());
					list.add(at); 
				}
				
			}
			System.out.println(list);
			
			// 4. 게시판 작성용 서비스 요청(b, at)
			int result = new AdProductService().adProductInsert(p, list);
			
			if(result > 0) { // 성공
				
				request.getSession().setAttribute("msg", "게시글 등록 성공");
				response.sendRedirect("productList.ad?currentPage=1");
				
			}else {	// 실패
				
				// 서버에 업로드된 파일 찾아서 삭제
				if(list != null) {
					for(int i=0; i<list.size(); i++) {
					File deleteFile = new File(savePath + list.get(i).getAtFileName());
					deleteFile.delete();
					}
				}
				
				request.setAttribute("msg", "게시판 등록 실패");
				RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
				view.forward(request, response);
			}
		
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
