package com.kh.mypage.model.vo;

import java.sql.Date;

public class Mypage {

	private String orderNo;		//주문번호
	private Date orderDate; 	//주문일
	private String proCode; 	//상품코드
	private String fileName;	//상품대표이미지명
	private String proName; 	//상품명
	private int price;			//상품가격
	private int quantity;		//상품주문수량
	private int payAmount;		//주문총가격
	private int status;			//상태(0:결제완료, 1:결제취소, 2:상품준비중, 3:배송중, 4:배송완료, 5:반품완료)
	private String couponCode;  //쿠폰코드
	private int couponPrice;	//쿠폰금액
	private String payType;		//결제방식
	private Date payDate;		//결제일시
	private String recipient;	//배송받는사람
	private String phone;		//주문자휴대전화?배송받는사람휴대전화??
	private String address;		//주소
	private String delRequest;	//배송시요청사항
	private Date refundDate;	//반품일시
	private int countOrdNo;		//한 주문번호 안에 몇 개 상품 담겼나
	
	public Mypage() { }
	
	/* 주문배송조회 */
	public Mypage(String proCode, int price, int quantity, String orderNo, Date orderDate, int status, String proName, String fileName) {
		super();
		this.proCode = proCode;
		this.price = price;
		this.quantity = quantity;
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.status = status;
		this.proName = proName;
		this.fileName = fileName;
	}
	
	/* 한 주문코드에 담긴 상품들 개수 */
	public Mypage(int countOrdNo) {
		super();
		this.countOrdNo = countOrdNo;
	}
	
	public Mypage(String orderNo, Date orderDate, String proCode, String fileName, String proName, int price,
			int quantity, int payAmount, int status, String couponCode, int couponPrice, String payType, Date payDate,
			String recipient, String phone, String address, String delRequest, Date refundDate, int countOrdNo) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.proCode = proCode;
		this.fileName = fileName;
		this.proName = proName;
		this.price = price;
		this.quantity = quantity;
		this.payAmount = payAmount;
		this.status = status;
		this.couponCode = couponCode;
		this.couponPrice = couponPrice;
		this.payType = payType;
		this.payDate = payDate;
		this.recipient = recipient;
		this.phone = phone;
		this.address = address;
		this.delRequest = delRequest;
		this.refundDate = refundDate;
		this.countOrdNo = countOrdNo;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getProCode() {
		return proCode;
	}

	public void setProCode(String proCode) {
		this.proCode = proCode;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}

	public int getCouponPrice() {
		return couponPrice;
	}

	public void setCouponPrice(int couponPrice) {
		this.couponPrice = couponPrice;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDelRequest() {
		return delRequest;
	}

	public void setDelRequest(String delRequest) {
		this.delRequest = delRequest;
	}

	public Date getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}

	public int getCountOrdNo() {
		return countOrdNo;
	}

	public void setCountOrdNo(int countOrdNo) {
		this.countOrdNo = countOrdNo;
	}

	@Override
	public String toString() {
		return "Mypage [orderNo=" + orderNo + ", orderDate=" + orderDate + ", proCode=" + proCode + ", fileName="
				+ fileName + ", proName=" + proName + ", price=" + price + ", quantity=" + quantity + ", payAmount="
				+ payAmount + ", status=" + status + ", couponCode=" + couponCode + ", couponPrice=" + couponPrice
				+ ", payType=" + payType + ", payDate=" + payDate + ", recipient=" + recipient + ", phone=" + phone
				+ ", address=" + address + ", delRequest=" + delRequest + ", refundDate=" + refundDate + ", countOrdNo="
				+ countOrdNo + "]";
	}

}
