package com.kh.product.model.vo;

import java.sql.Date;

public class AttachmentProduct {
	
	private String AtNo;    		// 첨부파일 번호
	private int AtCategory; 		// 첨부파일 카테고리
	private int AtBoardNo;  		// 첨부파일 게시글번호
	private String AtChangeName; 	// 첨부파일 수정명
	private String AtFilePath; 		// 첨부파일 저장경로
	private Date AtUploadDate; 		// 첨부파일 업로드 날짜
	private int AtFileMaxSize; 		// 첨부파일 크기
	
	public AttachmentProduct() {
		
	}

	public AttachmentProduct(String atNo, int atCategory, int atBoardNo, String atChangeName, String atFilePath,
			Date atUploadDate, int atFileMaxSize) {
		super();
		AtNo = atNo;
		AtCategory = atCategory;
		AtBoardNo = atBoardNo;
		AtChangeName = atChangeName;
		AtFilePath = atFilePath;
		AtUploadDate = atUploadDate;
		AtFileMaxSize = atFileMaxSize;
	}

	public String getAtNo() {
		return AtNo;
	}

	public void setAtNo(String atNo) {
		AtNo = atNo;
	}

	public int getAtCategory() {
		return AtCategory;
	}

	public void setAtCategory(int atCategory) {
		AtCategory = atCategory;
	}

	public int getAtBoardNo() {
		return AtBoardNo;
	}

	public void setAtBoardNo(int atBoardNo) {
		AtBoardNo = atBoardNo;
	}

	public String getAtChangeName() {
		return AtChangeName;
	}

	public void setAtChangeName(String atChangeName) {
		AtChangeName = atChangeName;
	}

	public String getAtFilePath() {
		return AtFilePath;
	}

	public void setAtFilePath(String atFilePath) {
		AtFilePath = atFilePath;
	}

	public Date getAtUploadDate() {
		return AtUploadDate;
	}

	public void setAtUploadDate(Date atUploadDate) {
		AtUploadDate = atUploadDate;
	}

	public int getAtFileMaxSize() {
		return AtFileMaxSize;
	}

	public void setAtFileMaxSize(int atFileMaxSize) {
		AtFileMaxSize = atFileMaxSize;
	}

	@Override
	public String toString() {
		return "AttachmentProduct [AtNo=" + AtNo + ", AtCategory=" + AtCategory + ", AtBoardNo=" + AtBoardNo
				+ ", AtChangeName=" + AtChangeName + ", AtFilePath=" + AtFilePath + ", AtUploadDate=" + AtUploadDate
				+ ", AtFileMaxSize=" + AtFileMaxSize + "]";
	}
	
}
