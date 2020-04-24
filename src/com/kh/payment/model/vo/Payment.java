package com.kh.payment.model.vo;

import java.sql.Date;

/**
 * @author 도현
 *
 */
public class Payment {

	private String payNo;			// 결제 식별번호
	private String payorderNo;		// 주문 번호
	private Date payDate;			// 결제 일시
	private String payType;			// 결제 방식
	private int payAmount;			// 결제 금액
	private int payRefundYN;		// 환불 여부
	private Date payRefundDate;		// 환불 날짜
	


	public Payment() {}



	/**
	 * 전체 매개변수
	 */
	public Payment(String payNo, String payorderNo, Date payDate, String payType, int payAmount, int payRefundYN,
			Date payRefundDate) {
		super();
		this.payNo = payNo;
		this.payorderNo = payorderNo;
		this.payDate = payDate;
		this.payType = payType;
		this.payAmount = payAmount;
		this.payRefundYN = payRefundYN;
		this.payRefundDate = payRefundDate;
	}



	public String getPayNo() {
		return payNo;
	}



	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}



	public String getPayorderNo() {
		return payorderNo;
	}



	public void setPayorderNo(String payorderNo) {
		this.payorderNo = payorderNo;
	}



	public Date getPayDate() {
		return payDate;
	}



	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}



	public String getPayType() {
		return payType;
	}



	public void setPayType(String payType) {
		this.payType = payType;
	}



	public int getPayAmount() {
		return payAmount;
	}



	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}



	public int getPayRefundYN() {
		return payRefundYN;
	}



	public void setPayRefundYN(int payRefundYN) {
		this.payRefundYN = payRefundYN;
	}



	public Date getPayRefundDate() {
		return payRefundDate;
	}



	public void setPayRefundDate(Date payRefundDate) {
		this.payRefundDate = payRefundDate;
	}



	@Override
	public String toString() {
		return "Payment [payNo=" + payNo + ", payorderNo=" + payorderNo + ", payDate=" + payDate + ", payType="
				+ payType + ", payAmount=" + payAmount + ", payRefundYN=" + payRefundYN + ", payRefundDate="
				+ payRefundDate + "]";
	}

	

}

