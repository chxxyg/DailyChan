package com.kh.frequentInquiry.model.vo;

import java.sql.Date;

public class FrequentInquiry {

	private int faqBoardNo;			// 자주하는 질문 번호
	private int faqCategory;		// 자주하는 질문 카테고리
	private String faqTitle;		// 자주하는 질문 제목
	private String faqContent;		// 자주하는 질문 내용
	private Date faqDate;			// 자주하는 질문 작성일
	
	public FrequentInquiry() {}
	
	
	
	//전체 매개변수
	public FrequentInquiry(int faqBoardNo, int faqCategory, String faqTitle, String faqContent, Date faqDate) {
		super();
		this.faqBoardNo = faqBoardNo;
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqDate = faqDate;
	}

	
	
	/**
	 * 관리자페이지 faq 등록 매개 변수
	 */
	public FrequentInquiry(int faqCategory, String faqTitle, String faqContent) {
		super();
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
	}



	/**
	 * 관리자페이지 faq 리스트 매개변수
	 */
	public FrequentInquiry(int faqBoardNo, int faqCategory, String faqTitle) {
		super();
		this.faqBoardNo = faqBoardNo;
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
	}



	/**
	 * 관리자페이지 faq 수정용 매개변수
	 */
	public FrequentInquiry(String faqTitle, String faqContent) {
		super();
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
	}



	public int getFaqBoardNo() {
		return faqBoardNo;
	}

	public void setFaqBoardNo(int faqBoardNo) {
		this.faqBoardNo = faqBoardNo;
	}

	public int getFaqCategory() {
		return faqCategory;
	}

	public void setFaqCategory(int faqCategory) {
		this.faqCategory = faqCategory;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public Date getFaqDate() {
		return faqDate;
	}

	public void setFaqDate(Date faqDate) {
		this.faqDate = faqDate;
	}

	@Override
	public String toString() {
		return "FrequentInquiry [faqBoardNo=" + faqBoardNo + ", faqCategory=" + faqCategory + ", faqTitle=" + faqTitle
				+ ", faqContent=" + faqContent + ", faqDate=" + faqDate + "]";
	}
	
	
	
	
}
