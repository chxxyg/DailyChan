package com.kh.product.model.vo;

import java.sql.Date;

public class ShoppingCart {

	private String memberId;
	private String nonMemSession;
	private int price;
	private String proCode;
	private int quantity;
	private String shoppingcartStatus;
	private Date shoppingcartDate;
	private String proName;
	
	private String rFileName;
	
	public ShoppingCart() { }


	public ShoppingCart(String memberId, String nonMemSession, int price, String proCode, int quantity,
			String shoppingcartStatus, Date shoppingcartDate, String proName, String rFileName) {
		super();
		this.memberId = memberId;
		this.nonMemSession = nonMemSession;
		this.price = price;
		this.proCode = proCode;
		this.quantity = quantity;
		this.shoppingcartStatus = shoppingcartStatus;
		this.shoppingcartDate = shoppingcartDate;
		this.proName = proName;
		this.rFileName = rFileName;
	}

	//장바구니 추가용
	public ShoppingCart(String memberId, String proCode) {
		super();
		this.memberId = memberId;
		this.proCode = proCode;
	}
	
	//장바구니 조회용
	public ShoppingCart(String proName, int price, String proCode, int quantity, String rFileName) {
		super();
		this.proName = proName;
		this.price = price;
		this.proCode = proCode;
		this.quantity = quantity;
		this.rFileName = rFileName;
	}
	
	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getNonMemSession() {
		return nonMemSession;
	}


	public void setNonMemSession(String nonMemSession) {
		this.nonMemSession = nonMemSession;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getProCode() {
		return proCode;
	}


	public void setProCode(String proCode) {
		this.proCode = proCode;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getShoppingcartStatus() {
		return shoppingcartStatus;
	}


	public void setShoppingcartStatus(String shoppingcartStatus) {
		this.shoppingcartStatus = shoppingcartStatus;
	}


	public Date getShoppingcartDate() {
		return shoppingcartDate;
	}


	public void setShoppingcartDate(Date shoppingcartDate) {
		this.shoppingcartDate = shoppingcartDate;
	}


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public String getrFileName() {
		return rFileName;
	}


	public void setrFileName(String rFileName) {
		this.rFileName = rFileName;
	}


	@Override
	public String toString() {
		return "ShoppingCart [memberId=" + memberId + ", nonMemSession=" + nonMemSession + ", price=" + price
				+ ", proCode=" + proCode + ", quantity=" + quantity + ", shoppingcartStatus=" + shoppingcartStatus
				+ ", shoppingcartDate=" + shoppingcartDate + ", proName=" + proName + ", rFileName=" + rFileName + "]";
	}
	
}
