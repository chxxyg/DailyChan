package com.kh.admin.adminCoupon.model.vo;

public class AdCoupon {
	
	private String couponCode;			// 쿠폰코드
	private String couponName;			// 쿠폰이름
	private String couponCondition;		// 사용조건
	private int couponExpDate;			// 유효기간
	private int couponPrice;			// 쿠폰금액
	
	
	public AdCoupon(String couponCode, String couponName, String couponCondition, int couponExpDate, int couponPrice) {
		super();
		this.couponCode = couponCode;
		this.couponName = couponName;
		this.couponCondition = couponCondition;
		this.couponExpDate = couponExpDate;
		this.couponPrice = couponPrice;
	}


	public String getCouponCode() {
		return couponCode;
	}


	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
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
		return "AdCoupon [couponCode=" + couponCode + ", couponName=" + couponName + ", couponCondition="
				+ couponCondition + ", couponExpDate=" + couponExpDate + ", couponPrice=" + couponPrice + "]";
	}
	
	

}
