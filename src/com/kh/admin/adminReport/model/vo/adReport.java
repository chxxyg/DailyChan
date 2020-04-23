package com.kh.admin.adminReport.model.vo;

import java.sql.Date;

public class adReport {
	
	private int reportNo;				// 신고번호
	private int reviewBoardNo;			// 리뷰게시글번호
	private String memberId;			// 피신고인
	private String memberId2;			// 신고인
	private Date reportDate;			// 신고날짜
	private String reportContent;		// 신고내용
	
	
	public adReport(int reportNo, int reviewBoardNo, String memberId, String memberId2, Date reportDate,
			String reportContent) {
		super();
		this.reportNo = reportNo;
		this.reviewBoardNo = reviewBoardNo;
		this.memberId = memberId;
		this.memberId2 = memberId2;
		this.reportDate = reportDate;
		this.reportContent = reportContent;
	}


	public int getReportNo() {
		return reportNo;
	}


	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}


	public int getReviewBoardNo() {
		return reviewBoardNo;
	}


	public void setReviewBoardNo(int reviewBoardNo) {
		this.reviewBoardNo = reviewBoardNo;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getMemberId2() {
		return memberId2;
	}


	public void setMemberId2(String memberId2) {
		this.memberId2 = memberId2;
	}


	public Date getReportDate() {
		return reportDate;
	}


	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}


	public String getReportContent() {
		return reportContent;
	}


	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}


	@Override
	public String toString() {
		return "adReport [reportNo=" + reportNo + ", reviewBoardNo=" + reviewBoardNo + ", memberId=" + memberId
				+ ", memberId2=" + memberId2 + ", reportDate=" + reportDate + ", reportContent=" + reportContent + "]";
	}
	
	
	
	
	

}
