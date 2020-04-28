package com.kh.admin.adminDiscount.model.vo;

import java.sql.Date;

public class AdDiscount {
	
	private int discountCode;					// 할인코드
	private String productCode;					// 상품코드
	private Date discountStartDate;				// 할인시작일
	private Date discountEndDate;				// 할인종료일
	private double discountRate;					// 할인율
	
	private String discountStartDateString;		// 할인시작일 String
	private String discountEndDateString;		// 할인종료일 String
	
	
	public AdDiscount() {
		
	}

	public AdDiscount(int discountCode, String productCode, Date discountStartDate, Date discountEndDate,
			double discountRate) {
		super();
		this.discountCode = discountCode;
		this.productCode = productCode;
		this.discountStartDate = discountStartDate;
		this.discountEndDate = discountEndDate;
		this.discountRate = discountRate;
	}
	
	

	/*
	 * 할인추가용
	 */
	public AdDiscount(int discountCode, String productCode, String discountStartDateString,
			String discountEndDateString, double discountRate) {
		super();
		this.discountCode = discountCode;
		this.productCode = productCode;
		this.discountStartDateString = discountStartDateString;
		this.discountEndDateString = discountEndDateString;
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

	public double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}
	
	

	public String getDiscountStartDateString() {
		return discountStartDateString;
	}

	public void setDiscountStartDateString(String discountStartDateString) {
		this.discountStartDateString = discountStartDateString;
	}

	public String getDiscountEndDateString() {
		return discountEndDateString;
	}

	public void setDiscountEndDateString(String discountEndDateString) {
		this.discountEndDateString = discountEndDateString;
	}

	@Override
	public String toString() {
		return "AdDiscount [discountCode=" + discountCode + ", productCode=" + productCode + ", discountStartDate="
				+ discountStartDate + ", discountEndDate=" + discountEndDate + ", discountRate=" + discountRate
				+ ", discountStartDateString=" + discountStartDateString + ", discountEndDateString="
				+ discountEndDateString + "]";
	}

	
	}
	
	
	
	
	
	

