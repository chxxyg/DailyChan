package com.kh.admin.adminDiscount.model.vo;

import java.sql.Date;

public class AdDiscount {
	
	private int discountCode;			// 할인코드
	private String productCode;			// 상품코드
	private Date discountStartDate;		// 할인시작일
	private Date discountEndDate;		// 할인종료일
	private int discountRate;			// 할인율
	
	
	public AdDiscount(int discountCode, String productCode, Date discountStartDate, Date discountEndDate,
			int discountRate) {
		super();
		this.discountCode = discountCode;
		this.productCode = productCode;
		this.discountStartDate = discountStartDate;
		this.discountEndDate = discountEndDate;
		this.discountRate = discountRate;
	}
	public int getDiscountCode() {
		return discountCode;
	}
	public void setDiscountCode(int discountCode) {
		this.discountCode = discountCode;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public Date getDiscountStartDate() {
		return discountStartDate;
	}
	public void setDiscountStartDate(Date discountStartDate) {
		this.discountStartDate = discountStartDate;
	}
	public Date getDiscountEndDate() {
		return discountEndDate;
	}
	public void setDiscountEndDate(Date discountEndDate) {
		this.discountEndDate = discountEndDate;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	@Override
	public String toString() {
		return "AdDiscount [discountCode=" + discountCode + ", productCode=" + productCode + ", discountStartDate="
				+ discountStartDate + ", discountEndDate=" + discountEndDate + ", discountRate=" + discountRate + "]";
	}
	
	
}
