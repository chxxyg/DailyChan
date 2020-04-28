package com.kh.inquiry.model.vo;

import java.sql.Date;

public class Attachment {

	private String attachmentNo;			// 첨부파일 번호
	private int attachmentCategory;			// 10:공지사항  20:리뷰  30:1:1문의  40:이벤트
	private int boardNo;					// 첨부파일 게시글 번호
	private String changeName;				// 첨부파일 수정명
	private String filePath;				// 첨부파일 저장경로
	private Date uploadDate;				// 첨부파일 업로드 날짜
	private int fileMaxsize;				// 첨부파일 크기
	
	public Attachment() {
		
	}

	public Attachment(String attachmentNo, int attachmentCategory, int boardNo, String changeName, String filePath,
			Date uploadDate, int fileMaxsize) {
		super();
		this.attachmentNo = attachmentNo;
		this.attachmentCategory = attachmentCategory;
		this.boardNo = boardNo;
		this.changeName = changeName;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.fileMaxsize = fileMaxsize;
	}

	public String getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(String attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public int getAttachmentCategory() {
		return attachmentCategory;
	}

	public void setAttachmentCategory(int attachmentCategory) {
		this.attachmentCategory = attachmentCategory;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public int getFileMaxsize() {
		return fileMaxsize;
	}

	public void setFileMaxsize(int fileMaxsize) {
		this.fileMaxsize = fileMaxsize;
	}

	@Override
	public String toString() {
		return "Attachment [attachmentNo=" + attachmentNo + ", attachmentCategory=" + attachmentCategory + ", boardNo="
				+ boardNo + ", changeName=" + changeName + ", filePath=" + filePath + ", uploadDate=" + uploadDate
				+ ", fileMaxsize=" + fileMaxsize + "]";
	}

	
}
