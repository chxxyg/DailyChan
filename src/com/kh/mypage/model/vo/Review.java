package com.kh.mypage.model.vo;

import java.util.Date;

public class Review {

	private int reviewBoardNo;
	private String orderNo;
	private String productCode;
	private String memberId;
	private String reviewTitle;
	private String reviewContent;
	private int reviewRating;
	private Date reviewCreateDate;
	private String reviewDelStatus;
	
	
	public Review() {}
	



	public Review(String productCode, String memberId, String reviewTitle, String reviewContent, int reviewRating) {
		super();
		this.productCode = productCode;
		this.memberId = memberId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
	}




	public Review(int reviewBoardNo, String orderNo, String productCode, String memberId, String reviewTitle,
			String reviewContent, int reviewRating, Date reviewCreateDate, String reviewDelStatus) {
		super();
		this.reviewBoardNo = reviewBoardNo;
		this.orderNo = orderNo;
		this.productCode = productCode;
		this.memberId = memberId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewCreateDate = reviewCreateDate;
		this.reviewDelStatus = reviewDelStatus;
	}


	public int getReviewBoardNo() {
		return reviewBoardNo;
	}


	public void setReviewBoardNo(int reviewBoardNo) {
		this.reviewBoardNo = reviewBoardNo;
	}


	public String getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}


	public String getProductCode() {
		return productCode;
	}


	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getReviewTitle() {
		return reviewTitle;
	}


	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public int getReviewRating() {
		return reviewRating;
	}


	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}


	public Date getReviewCreateDate() {
		return reviewCreateDate;
	}


	public void setReviewCreateDate(Date reviewCreateDate) {
		this.reviewCreateDate = reviewCreateDate;
	}


	public String getReviewDelStatus() {
		return reviewDelStatus;
	}


	public void setReviewDelStatus(String reviewDelStatus) {
		this.reviewDelStatus = reviewDelStatus;
	}


	@Override
	public String toString() {
		return "Review [reviewBoardNo=" + reviewBoardNo + ", orderNo=" + orderNo + ", productCode=" + productCode
				+ ", memberId=" + memberId + ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent
				+ ", reviewRating=" + reviewRating + ", reviewCreateDate=" + reviewCreateDate + ", reviewDelStatus="
				+ reviewDelStatus + "]";
	}

	
	
}
