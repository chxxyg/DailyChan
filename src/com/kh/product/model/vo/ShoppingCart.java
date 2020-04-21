package com.kh.product.model.vo;

public class ShoppingCart {

	private String shoppingcartNo;
	private String memberId;
	private String proCode;
	private String nonMemSession;
	private int price;
	private String shoppingcartStatus;
	private String proName;
	private int quantity;
	
	private String rFileName;
	
	public ShoppingCart() { }
	

	public ShoppingCart(String shoppingcartNo, String memberId, String proCode, String nonMemSession, int price,
			String shoppingcartStatus) {
		super();
		this.shoppingcartNo = shoppingcartNo;
		this.memberId = memberId;
		this.proCode = proCode;
		this.nonMemSession = nonMemSession;
		this.price = price;
		this.shoppingcartStatus = shoppingcartStatus;
	}

	//장바구니 조회용
	public ShoppingCart(String proName, String proCode, int quantity, int price, String rFileName) {
		super();
		this.proName = proName;
		this.proCode = proCode;
		this.quantity = quantity;
		this.price = price;
		this.rFileName = rFileName;
	}

	public String getShoppingcartNo() {
		return shoppingcartNo;
	}


	public void setShoppingcartNo(String shoppingcartNo) {
		this.shoppingcartNo = shoppingcartNo;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getProCode() {
		return proCode;
	}


	public void setProCode(String proCode) {
		this.proCode = proCode;
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


	public String getShoppingcartStatus() {
		return shoppingcartStatus;
	}


	public void setShoppingcartStatus(String shoppingcartStatus) {
		this.shoppingcartStatus = shoppingcartStatus;
	}


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getrFileName() {
		return rFileName;
	}


	public void setrFileName(String rFileName) {
		this.rFileName = rFileName;
	}


	@Override
	public String toString() {
		return "ShoppingCart [shoppingcartNo=" + shoppingcartNo + ", memberId=" + memberId + ", proCode=" + proCode
				+ ", nonMemSession=" + nonMemSession + ", price=" + price + ", shoppingcartStatus=" + shoppingcartStatus
				+ "]";
	}
	
}
