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
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class AdProductUpdateServlet
 */
@WebServlet("/updateProduct.ad")
public class AdProductUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdProductUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String mid = request.getParameter("mid");
		
		if(ServletFileUpload.isMultipartContent(request)) {

			int maxSize = 10 * 1024 * 1024;
			
				
			String resources = request.getSession().getServletContext().getRealPath("/resources"); // 웹컨테이너 경로 안의 resources 폴더까지의 경로 추출
			
			String savePath = resources + "\\attachment_product\\"; // 파일저장 경로
			
			MultipartRequest multiRequest
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());  // 파일 크기와 저장경로 파일이름 설정
			
			
		 	
			String pdTitle = multiRequest.getParameter("pdTitle");				 	// 상품명
			int pdPrise = Integer.parseInt(multiRequest.getParameter("pdPrice"));	// 상품가격
			int pdStock = Integer.parseInt(multiRequest.getParameter("pdStock"));	// 상품수량
			
			Product p = new Product();
			p.setProName(pdTitle);
			p.setProPrice(pdPrise);
			p.setProStock(pdStock);
			
			ArrayList<AttachmentProduct> list = new ArrayList<>();
			// 반복문을돌려서 각 네임들을 String 자료형에 넣어줌
			for(int i=1; i<=3; i++) {
				String name = "pdUpfile" +i;
				
				if(multiRequest.getOriginalFileName(name) != null) {
					
					AttachmentProduct at = new AttachmentProduct();
					at.setAtFilePath(savePath);											// 저장경로
					at.setAtFileName(multiRequest.getOriginalFileName(name));			// 파일이름
					at.setAtFileLevel(i);												// 레벨
					at.setAtFileMaxSize((int)multiRequest.getFile(name).length());		// 파일사이즈
					list.add(at); 			// 모든 attachment들 list에 더해서 넣어줌
				}
				
			}
		
			
			int result = new AdProductService().adProductUpdate(p, list, mid);
			
			request.setAttribute("list", list);
			request.setAttribute("p", p);
			
			if(result > 0) { // 성공
				
				request.getSession().setAttribute("msg", "게시글 수정 성공");
				response.sendRedirect("productDetail.ad?mid="+mid);
				
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
