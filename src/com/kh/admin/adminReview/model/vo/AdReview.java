package com.kh.admin.adminReview.model.vo;

import java.sql.Date;

public class AdReview {

	private int reviewBoardNo;			// 리뷰게시글번호
	private String orderNo;				// 주문번호
	private String memberId;			// 회원아이디
	private String reviewTitle;			// 리뷰제목
	private String reviewContent;		// 리뷰내용
	private int reviewRating;			// 리뷰별점
	private int reviewLike;				// 리뷰좋아요
	private Date reviewCreateDate;		// 리뷰작성일시
	private String reviewResponseYn;	// 리뷰관리자답변유무
	private String reviewResponse;		// 리뷰관리자답변
	private String reviewAttachmentYn;	// 리뷰첨부파일유무
	private Date reviewModifyDate;		// 리뷰수정일시
	private String reviewDelStatus;		// 리뷰삭제유무
	
	public AdReview() {
		
	}

	public AdReview(int reviewBoardNo, String orderNo, String memberId, String reviewTitle, String reviewContent,
			int reviewRating, int reviewLike, Date reviewCreateDate, String reviewResponseYn, String reviewResponse,
			String reviewAttachmentYn, Date reviewModifyDate, String reviewDelStatus) {
		super();
		this.reviewBoardNo = reviewBoardNo;
		this.orderNo = orderNo;
		this.memberId = memberId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewRating = reviewRating;
		this.reviewLike = reviewLike;
		this.reviewCreateDate = reviewCreateDate;
		this.reviewResponseYn = reviewResponseYn;
		this.reviewResponse = reviewResponse;
		this.reviewAttachmentYn = reviewAttachmentYn;
		this.reviewModifyDate = reviewModifyDate;
		this.reviewDelStatus = reviewDelStatus;
	}	
	/*
	 * 리뷰리스트 조회용
	 */
	public AdReview(int reviewBoardNo, Date reviewCreateDate, String orderNo, String memberId, 
			String reviewTitle, String reviewContent, String reviewAttachmentYn, 
			String reviewResponseYn) {
			
			super();
			this.reviewBoardNo = reviewBoardNo;
			this.reviewCreateDate = reviewCreateDate;
			this.orderNo = orderNo;
			this.memberId = memberId;
			this.reviewTitle = reviewTitle;
			this.reviewContent = reviewContent;
			this.reviewAttachmentYn = reviewAttachmentYn;
			this.reviewResponseYn = reviewResponseYn;
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
		return "AdReview [reviewBoardNo=" + reviewBoardNo + ", orderNo=" + orderNo + ", memberId=" + memberId
				+ ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", reviewRating=" + reviewRating
				+ ", reviewLike=" + reviewLike + ", reviewCreateDate=" + reviewCreateDate + ", reviewResponseYn="
				+ reviewResponseYn + ", reviewResponse=" + reviewResponse + ", reviewAttachmentYn=" + reviewAttachmentYn
				+ ", reviewModifyDate=" + reviewModifyDate + ", reviewDelStatus=" + reviewDelStatus + "]";
	}
	
	
	
	
}
