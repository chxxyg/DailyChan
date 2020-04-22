package com.kh.product.model.vo;

import java.sql.Date;

public class AttachmentProduct {
	
	private String atNo;    			// 첨부파일 번호
	private int atProductCode;  		// 상품코드
	private String atFileName; 			// 첨부파일명
	private String atFilePath; 			// 첨부파일 저장경로
	private Date atUploadDate; 			// 첨부파일 업로드 날짜
	private int atFileLevel; 			// 첨부파일 레벨 (1:대표이미지, 2:상세이미지, 3:정보이미지)
	private int atFileMaxSize; 			// 첨부파일 크기
	
	public AttachmentProduct() {
		
	}

	public AttachmentProduct(String atNo, int atProductCode, String atFileName, String atFilePath, Date atUploadDate,
			int atFileLevel, int atFileMaxSize) {
		super();
		this.atNo = atNo;
		this.atProductCode = atProductCode;
		this.atFileName = atFileName;
		this.atFilePath = atFilePath;
		this.atUploadDate = atUploadDate;
		this.atFileLevel = atFileLevel;
		this.atFileMaxSize = atFileMaxSize;
	}

	public AttachmentProduct(String atFileName) {
		super();
		this.atFileName = atFileName;
	}

	public String getAtNo() {
		return atNo;
	}

	public void setAtNo(String atNo) {
		this.atNo = atNo;
	}

	public int getAtProductCode() {
		return atProductCode;
	}

	public void setAtProductCode(int atProductCode) {
		this.atProductCode = atProductCode;
	}

	public String getAtFileName() {
		return atFileName;
	}

	public void setAtFileName(String atFileName) {
		this.atFileName = atFileName;
	}

	public String getAtFilePath() {
		return atFilePath;
	}

	public void setAtFilePath(String atFilePath) {
		this.atFilePath = atFilePath;
	}

	public Date getAtUploadDate() {
		return atUploadDate;
	}

	public void setAtUploadDate(Date atUploadDate) {
		this.atUploadDate = atUploadDate;
	}

	public int getAtFileLevel() {
		return atFileLevel;
	}

	public void setAtFileLevel(int atFileLevel) {
		this.atFileLevel = atFileLevel;
	}

	public int getAtFileMaxSize() {
		return atFileMaxSize;
	}

	public void setAtFileMaxSize(int atFileMaxSize) {
		this.atFileMaxSize = atFileMaxSize;
	}

	@Override
	public String toString() {
		return "AttachmentProduct [atNo=" + atNo + ", atProductCode=" + atProductCode + ", atFileName=" + atFileName
				+ ", atFilePath=" + atFilePath + ", atUploadDate=" + atUploadDate + ", atFileLevel=" + atFileLevel
				+ ", atFileMaxSize=" + atFileMaxSize + "]";
	}

}
