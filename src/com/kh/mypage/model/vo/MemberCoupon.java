package com.kh.mypage.model.vo;

import java.util.Date;

public class MemberCoupon {
	
	private String memberId;
	private String couponCode;
	private Date couponIssueDate;
	private String couponStatus;
	private Date couponUseDate;
	private String couponUseNo;
	
	private String couponName;
	private String couponCondition;
	private int couponExpDate;
	private int couponPrice;
	
	public MemberCoupon() {}
	
	
	
	

	/**
	 * MemberCoupon List 조회
	 * @param couponIssueDate
	 * @param couponName
	 * @param couponCondition
	 * @param couponExpDate
	 * @param couponPrice
	 */
	public MemberCoupon(Date couponIssueDate, String couponName, String couponCondition, int couponExpDate,
			int couponPrice) {
		super();
		this.couponIssueDate = couponIssueDate;
		this.couponName = couponName;
		this.couponCondition = couponCondition;
		this.couponExpDate = couponExpDate;
		this.couponPrice = couponPrice;
	}





	public MemberCoupon(String memberId, String couponCode, Date couponIssueDate, String couponStatus,
			Date couponUseDate, String couponUseNo, String couponName, String couponCondition, int couponExpDate,
			int couponPrice) {
		super();
		this.memberId = memberId;
		this.couponCode = couponCode;
		this.couponIssueDate = couponIssueDate;
		this.couponStatus = couponStatus;
		this.couponUseDate = couponUseDate;
		this.couponUseNo = couponUseNo;
		this.couponName = couponName;
		this.couponCondition = couponCondition;
		this.couponExpDate = couponExpDate;
		this.couponPrice = couponPrice;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public Date getCouponIssueDate() {
		return couponIssueDate;
	}

	public void setCouponIssueDate(Date couponIssueDate) {
		this.couponIssueDate = couponIssueDate;
	}

	public String getCouponStatus() {
		return couponStatus;
	}

	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}

	public Date getCouponUseDate() {
		return couponUseDate;
	}

	public void setCouponUseDate(Date couponUseDate) {
		this.couponUseDate = couponUseDate;
	}

	public String getCouponUseNo() {
		return couponUseNo;
	}

	public void setCouponUseNo(String couponUseNo) {
		this.couponUseNo = couponUseNo;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public String getCouponCondition() {
		return couponCondition;
	}

	public void setCouponCondition(String couponCondition) {
		this.couponCondition = couponCondition;
	}

	public int getCouponExpDate() {
		return couponExpDate;
	}

	public void setCouponExpDate(int couponExpDate) {
		this.couponExpDate = couponExpDate;
	}

	public int getCouponPrice() {
		return couponPrice;
	}

	public void setCouponPrice(int couponPrice) {
		this.couponPrice = couponPrice;
	}

	@Override
	public String toString() {
		return "MemberCoupon [memberId=" + memberId + ", couponCode=" + couponCode + ", couponIssueDate="
				+ couponIssueDate + ", couponStatus=" + couponStatus + ", couponUseDate=" + couponUseDate
				+ ", couponUseNo=" + couponUseNo + ", couponName=" + couponName + ", couponCondition=" + couponCondition
				+ ", couponExpDate=" + couponExpDate + ", couponPrice=" + couponPrice + "]";
	}
	
	


}
