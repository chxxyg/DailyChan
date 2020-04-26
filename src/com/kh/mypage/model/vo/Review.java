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
	private int reviewLike;
	private Date reviewCreateDate;
	private Date reviewResponseDate;
	private String reviewResponseYn;
	private String reviewResponse;
	private String reviewAttachmentYn;
	private Date reviewModifyDate;
	private String reviewDelStatus;
	
	public Review() {}

	public Review(int reviewBoardNo, String orderNo, String productCode, String memberId, String reviewTitle,
			String reviewContent, int reviewRating, int reviewLike, Date reviewCreateDate, Date reviewResponseDate,
			String reviewResponseYn, String reviewResponse, String reviewAttachmentYn, Date reviewModifyDate,
			String reviewDelStatus) {
		super();
		this.reviewBoardNo = reviewBoardNo;
		this.orderNo = orderNo;
		this.productCode = productCode;
		this.memberId = memberId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewLike = reviewLike;
		this.reviewCreateDate = reviewCreateDate;
		this.reviewResponseDate = reviewResponseDate;
		this.reviewResponseYn = reviewResponseYn;
		this.reviewResponse = reviewResponse;
		this.reviewAttachmentYn = reviewAttachmentYn;
		this.reviewModifyDate = reviewModifyDate;
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

	public int getReviewLike() {
		return reviewLike;
	}

	public void setReviewLike(int reviewLike) {
		this.reviewLike = reviewLike;
	}

	public Date getReviewCreateDate() {
		return reviewCreateDate;
	}

	public void setReviewCreateDate(Date reviewCreateDate) {
		this.reviewCreateDate = reviewCreateDate;
	}

	public Date getReviewResponseDate() {
		return reviewResponseDate;
	}

	public void setReviewResponseDate(Date reviewResponseDate) {
		this.reviewResponseDate = reviewResponseDate;
	}

	public String getReviewResponseYn() {
		return reviewResponseYn;
	}

	public void setReviewResponseYn(String reviewResponseYn) {
		this.reviewResponseYn = reviewResponseYn;
	}

	public String getReviewResponse() {
		return reviewResponse;
	}

	public void setReviewResponse(String reviewResponse) {
		this.reviewResponse = reviewResponse;
	}

	public String getReviewAttachmentYn() {
		return reviewAttachmentYn;
	}

	public void setReviewAttachmentYn(String reviewAttachmentYn) {
		this.reviewAttachmentYn = reviewAttachmentYn;
	}

	public Date getReviewModifyDate() {
		return reviewModifyDate;
	}

	public void setReviewModifyDate(Date reviewModifyDate) {
		this.reviewModifyDate = reviewModifyDate;
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
				+ ", reviewRating=" + reviewRating + ", reviewLike=" + reviewLike + ", reviewCreateDate="
				+ reviewCreateDate + ", reviewResponseDate=" + reviewResponseDate + ", reviewResponseYn="
				+ reviewResponseYn + ", reviewResponse=" + reviewResponse + ", reviewAttachmentYn=" + reviewAttachmentYn
				+ ", reviewModifyDate=" + reviewModifyDate + ", reviewDelStatus=" + reviewDelStatus + "]";
	}
	
	
}
