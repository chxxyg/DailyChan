package com.kh.product.model.dto;

public class WishListDto 
{
	private String productCode;
	private String productName;
	private int productPrice;
	private int productStandard;
	private String fileName;
	
	WishListDto(){}

	public WishListDto(String productCode, String productName, int productPrice, int productStandard, String fileName) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productStandard = productStandard;
		this.fileName = fileName;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductStandard() {
		return productStandard;
	}

	public void setProductStandard(int productStandard) {
		this.productStandard = productStandard;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "WishListDto [productCode=" + productCode + ", productName=" + productName + ", productPrice="
				+ productPrice + ", productStandard=" + productStandard + ", fileName=" + fileName + "]";
	}
	
	
}
