package com.kh.admin.adminProduct.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdProductInsertForm
 */
@WebServlet("/pdInsertForm.ad")
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
		
		request.setCharacterEncoding("utf-8");

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
			String category = multiRequest.getParameter("category"); // "10"
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			
			int userNo = ((Member)request.getSession().getAttribute("loginUser")).getUserNo();
			
			Board b = new Board();
			b.setCategory(category);
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setBoardWriter(String.valueOf(userNo)); // 1 --> "1"
			
			// 3_2. Attachment테이블에 insert할 원본명, 수정명, 폴더경로 Attachment 객체에 담기
			
			Attachment at = null;
			
			// 첨부파일이 넘어왔을 경우 at 객체 생성
			if(multiRequest.getOriginalFileName("upfile") != null) {
				at = new Attachment();
				
				// 원본명 : getOriginFileName("키");
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				// 수정명 : getFilesystemName("키");
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				
				at.setFilePath(savePath);
			}
			
			// 4. 게시판 작성용 서비스 요청(b, at)
			int result = new BoardService().insertBoard(b, at);
			
			if(result > 0) { // 성공
				
				request.getSession().setAttribute("msg", "게시글 등록 성공");
				response.sendRedirect("list.bo?currentPage=1");
				
			}else {	// 실패
				
				// 서버에 업로드된 파일 찾아서 삭제
				if(at != null) {
					// 삭제할 File객체 생성
					File deleteFile = new File(savePath + at.getChangeName());
					deleteFile.delete();
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
