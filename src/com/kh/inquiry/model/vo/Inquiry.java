package com.kh.inquiry.model.vo;

import java.sql.Date;

public class Inquiry {

	private int inquiryBoardNo; // 1:1문의번호
	private String memberId; // 1:1문의 회원아이디
	private String inquiryType; // 1:1문의 상담유형
	private String inquiryTitle; // 1:1문의 제목
	private String inquiryContent; // 1:1문의 내용
	private String inquiryResponseYn; // 1:1문의 답변여부
	private String inquiryResponse; // 1:1문의 답변내용
	private String inquiryFileYn; // 1:1문의 첨부파일 유무
	private Date inquiryCreateDate; // 1:1문의 문의일시

	public Inquiry() {

	}
	
	

	public Inquiry(int inquiryBoardNo, String memberId, String inquiryType, String inquiryTitle, String inquiryContent,
			Date inquiryCreateDate) {
		super();
		this.inquiryBoardNo = inquiryBoardNo;
		this.memberId = memberId;
		this.inquiryType = inquiryType;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryCreateDate = inquiryCreateDate;
	}



	public Inquiry(String inquiryType, String inquiryContent, Date inquiryCreateDate, String inquiryResponseYn) {
		super();
		this.inquiryType = inquiryType;
		this.inquiryContent = inquiryContent;

		this.inquiryCreateDate = inquiryCreateDate;
		this.inquiryResponseYn = inquiryResponseYn;
	}



	public Inquiry(String memberId, String inquiryType, String inquiryTitle, String inquiryContent,
			String inquiryFileYn) {
		super();
		this.memberId = memberId;
		this.inquiryType = inquiryType;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
	}

	public Inquiry(int inquiryBoardNo, String memberId, String inquiryType, String inquiryTitle, String inquiryContent,
			String inquiryResponseYn, String inquiryResponse, String inquiryFileYn, Date inquiryCreateDate) {
		super();
		this.inquiryBoardNo = inquiryBoardNo;
		this.memberId = memberId;
		this.inquiryType = inquiryType;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryResponseYn = inquiryResponseYn;
		this.inquiryResponse = inquiryResponse;
		this.inquiryFileYn = inquiryFileYn;
		this.inquiryCreateDate = inquiryCreateDate;
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

	public String getInquiryFileYn() {
		return inquiryFileYn;
	}

	public void setInquiryFileYn(String inquiryFileYn) {
		this.inquiryFileYn = inquiryFileYn;
	}

	public Date getInquiryCreateDate() {
		return inquiryCreateDate;
	}

	public void setInquiryCreateDate(Date inquiryCreateDate) {
		this.inquiryCreateDate = inquiryCreateDate;
	}

	@Override
	public String toString() {
		return "inquiry [inquiryBoardNo=" + inquiryBoardNo + ", memberId=" + memberId + ", inquiryType=" + inquiryType
				+ ", inquiryTitle=" + inquiryTitle + ", inquiryContent=" + inquiryContent + ", inquiryResponseYn="
				+ inquiryResponseYn + ", inquiryResponse=" + inquiryResponse + ", inquiryFileYn=" + inquiryFileYn
				+ ", inquiryCreateDate=" + inquiryCreateDate + "]";
	}

}
