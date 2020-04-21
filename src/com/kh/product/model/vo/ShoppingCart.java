package com.kh.product.model.vo;

public class ShoppingCart {

	private String shoppingcartNo;
	private String memberId;
	private String proCode;
	private String nonMemSession;
	private String shoppingcartStatus;
	
	public ShoppingCart() { }

	public ShoppingCart(String shoppingcartNo, String memberId, String proCode, String nonMemSession,
			String shoppingcartStatus) {
		super();
		this.shoppingcartNo = shoppingcartNo;
		this.memberId = memberId;
		this.proCode = proCode;
		this.nonMemSession = nonMemSession;
		this.shoppingcartStatus = shoppingcartStatus;
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

	public String getShoppingcartStatus() {
		return shoppingcartStatus;
	}

	public void setShoppingcartStatus(String shoppingcartStatus) {
		this.shoppingcartStatus = shoppingcartStatus;
	}

	@Override
	public String toString() {
		return "ShoppingCart [shoppingcartNo=" + shoppingcartNo + ", memberId=" + memberId + ", proCode=" + proCode
				+ ", nonMemSession=" + nonMemSession + ", shoppingcartStatus=" + shoppingcartStatus + "]";
	}
	
}
