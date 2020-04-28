package com.kh.admin.adminNotice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.admin.adminNotice.model.service.AdNoticeService;
import com.kh.inquiry.model.vo.Attachment;
import com.kh.notice.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class AdNoticeInsertServlet
 */
@WebServlet("/noticeInsert.ad")
public class AdNoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdNoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		if(ServletFileUpload.isMultipartContent(request)) {

			int maxSize = 10 * 1024 * 1024;
			
				
			String resources = request.getSession().getServletContext().getRealPath("/resources"); // 웹컨테이너 경로 안의 resources 폴더까지의 경로 추출
			
			String savePath = resources + "\\attachment_notice\\"; // 파일저장 경로
			
			MultipartRequest multiRequest
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());  // 파일 크기와 저장경로 파일이름 설정
			
			
			String ntTitle = multiRequest.getParameter("ntTitle"); 		// 공지사항제목
			String ntContent = multiRequest.getParameter("ntContent");	// 공지사항내용
			
			
			
			// 상품등록창에 입력된 내용들을 담아주는 객체 생성
			Notice n = new Notice();
			n.setNoticeTitle(ntTitle);
			n.setNoticeContent(ntContent);
			
			
			
			Attachment at = null;
			
			if(multiRequest.getOriginalFileName("ntUpfile") != null) {
				at = new Attachment();
				at.setFilePath(savePath);												// 저장경로
				at.setChangeName(multiRequest.getOriginalFileName("ntUpfile"));			// 파일이름
				at.setAttachmentCategory(10);											// 카테고리번호
				at.setFileMaxsize((int)multiRequest.getFile("ntUpfile").length());		// 파일사이즈
			}
		
			
			int result = new AdNoticeService().adNoticeInsert(n, at);
			
			request.setAttribute("n", n);
			request.setAttribute("at", at);
			
			if(result > 0) { // 성공
				
				request.getSession().setAttribute("msg", "게시글 등록 성공");
				response.sendRedirect("noticeList.ad?currentPage=1");
				
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
