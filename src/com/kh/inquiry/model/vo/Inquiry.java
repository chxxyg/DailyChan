package com.kh.inquiry.model.vo;

import java.sql.Date;

public class Inquiry {
	
	private int inquiryBoardNo;
	private String memberId;
	private String inquiryType;
	private String inquiryTitle;
	private String inquiryContent;
	private String inquiryResponseYn;
	private String inquiryResponse;
	private String inquireFileYn;
	private Date inquireCreateDate;
	
	public Inquiry() {
		
	}

	public Inquiry(int inquiryBoardNo, String memberId, String inquiryType, String inquiryTitle, String inquiryContent,
			String inquiryResponseYn, String inquiryResponse, String inquireFileYn, Date inquireCreateDate) {
		super();
		this.inquiryBoardNo = inquiryBoardNo;
		this.memberId = memberId;
		this.inquiryType = inquiryType;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryResponseYn = inquiryResponseYn;
		this.inquiryResponse = inquiryResponse;
		this.inquireFileYn = inquireFileYn;
		this.inquireCreateDate = inquireCreateDate;
	}

	public int getInquiryBoardNo() {
		return inquiryBoardNo;
	}

	public void setInquiryBoardNo(int inquiryBoardNo) {
		this.inquiryBoardNo = inquiryBoardNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getInquiryType() {
		return inquiryType;
	}

	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	public String getInquiryResponseYn() {
		return inquiryResponseYn;
	}

	public void setInquiryResponseYn(String inquiryResponseYn) {
		this.inquiryResponseYn = inquiryResponseYn;
	}

	public String getInquiryResponse() {
		return inquiryResponse;
	}

	public void setInquiryResponse(String inquiryResponse) {
		this.inquiryResponse = inquiryResponse;
	}

	public String getInquireFileYn() {
		return inquireFileYn;
	}

	public void setInquireFileYn(String inquireFileYn) {
		this.inquireFileYn = inquireFileYn;
	}

	public Date getInquireCreateDate() {
		return inquireCreateDate;
	}

	public void setInquireCreateDate(Date inquireCreateDate) {
		this.inquireCreateDate = inquireCreateDate;
	}

	@Override
	public String toString() {
		return "inquiry [inquiryBoardNo=" + inquiryBoardNo + ", memberId=" + memberId + ", inquiryType=" + inquiryType
				+ ", inquiryTitle=" + inquiryTitle + ", inquiryContent=" + inquiryContent + ", inquiryResponseYn="
				+ inquiryResponseYn + ", inquiryResponse=" + inquiryResponse + ", inquireFileYn=" + inquireFileYn
				+ ", inquireCreateDate=" + inquireCreateDate + "]";
	}


	
	

}
