package com.kh.admin.adminOneInquiry.model.vo;

import java.sql.Date;

public class AdOneInquiry {
	
	private int inquiryBoardNo;			// 문의번호
	private String memberId;			// 회원아이디
	private String inquiryType;			// 상담유형
	private String inquiryTitle;		// 제목
	private String inquiryContent;		// 내용
	private String inquiryResponseYn;	// 답변유무
	private String inquiryResponse;		// 답변내용
	private String fineYn;				// 첨부파일유무
	private Date inquiryCreateDate;		// 문의일시
	
	public AdOneInquiry() {
		
	}

	public AdOneInquiry(int inquiryBoardNo, String memberId, String inquiryType, String inquiryTitle,
			String inquiryContent, String inquiryResponseYn, String inquiryResponse, String fineYn,
			Date inquiryCreateDate) {
		super();
		this.inquiryBoardNo = inquiryBoardNo;
		this.memberId = memberId;
		this.inquiryType = inquiryType;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryResponseYn = inquiryResponseYn;
		this.inquiryResponse = inquiryResponse;
		this.fineYn = fineYn;
		this.inquiryCreateDate = inquiryCreateDate;
	}
	
	/*
	 * 리스트조회용
	 */
	public  AdOneInquiry(int inquiryBoardNo, Date inquiryCreateDate, String memberId, String inquiryTitle,
			String inquiryContent, String inquiryResponseYn, String inquiryResponse) {
		
		super();
		this.inquiryBoardNo = inquiryBoardNo;
		this.inquiryCreateDate = inquiryCreateDate;
		this.memberId = memberId;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryResponseYn = inquiryResponseYn;
		this.inquiryResponse = inquiryResponse;
	}
	
	public  AdOneInquiry(int inquiryBoardNo, Date inquiryCreateDate, String memberId, String inquiryTitle,
			String inquiryContent, String inquiryResponseYn) {
		
		super();
		this.inquiryBoardNo = inquiryBoardNo;
		this.inquiryCreateDate = inquiryCreateDate;
		this.memberId = memberId;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryResponseYn = inquiryResponseYn;
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

	public String getFineYn() {
		return fineYn;
	}

	public void setFineYn(String fineYn) {
		this.fineYn = fineYn;
	}

	public Date getInquiryCreateDate() {
		return inquiryCreateDate;
	}

	public void setInquiryCreateDate(Date inquiryCreateDate) {
		this.inquiryCreateDate = inquiryCreateDate;
	}

	@Override
	public String toString() {
		return "AdOneInquiry [inquiryBoardNo=" + inquiryBoardNo + ", memberId=" + memberId + ", inquiryType="
				+ inquiryType + ", inquiryTitle=" + inquiryTitle + ", inquiryContent=" + inquiryContent
				+ ", inquiryResponseYn=" + inquiryResponseYn + ", inquiryResponse=" + inquiryResponse + ", fineYn="
				+ fineYn + ", inquiryCreateDate=" + inquiryCreateDate + "]";
	}
	
	

}
