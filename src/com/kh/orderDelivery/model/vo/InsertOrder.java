package com.kh.orderDelivery.model.vo;

import java.sql.Date;


public class InsertOrder {
	
	private String odOrderNo;			// 주문번호
	private String odMemberId;			// 회원아이디
	private String odMemberName;		// 주문자
	private String odPhone;				// 휴대전화
	private String odEmail;				// 이메일
	private String odRecipient;			// 받는사람
	private String odEmergencyContact;	// 비상연락망
	private String odAddress;			// 주소
	private Date odDeliveryDate;		// 배송일
	private String odDeliveryRequest;	// 배송요청사항	
	private String odUseCoupon;			// 주문시쿠폰사용여부
	private String odUsePoint;				// 주문시적립금사용여부
	private String odPaymentAmount;		// 주문총가격
	private Date odOrderDate;			// 주문날짜
	private String odPaymentType;		// 결제방식
	private String odDeliveryCoNo;		// 택배 업체 사업자 번호
	private String odStatus;				// 입금/배송상태
	private String deliveryCharge; 

	public InsertOrder() {}

    public InsertOrder(String odOrderNo, String odMemberId, String odMemberName,
            String odPhone, String odEmail, String odRecipient,
            String odEmergencyContact, String odAddress, Date odDeliveryDate,
            String odDeliveryRequest, String odUseCoupon, String odUsePoint,
            String odPaymentAmount, Date odOrderDate, String odPaymentType,
            String odDeliveryCoNo, String odStatus, String deliveryCharge)
    {
        super();
        this.odOrderNo = odOrderNo;
        this.odMemberId = odMemberId;
        this.odMemberName = odMemberName;
        this.odPhone = odPhone;
        this.odEmail = odEmail;
        this.odRecipient = odRecipient;
        this.odEmergencyContact = odEmergencyContact;
        this.odAddress = odAddress;
        this.odDeliveryDate = odDeliveryDate;
        this.odDeliveryRequest = odDeliveryRequest;
        this.odUseCoupon = odUseCoupon;
        this.odUsePoint = odUsePoint;
        this.odPaymentAmount = odPaymentAmount;
        this.odOrderDate = odOrderDate;
        this.odPaymentType = odPaymentType;
        this.odDeliveryCoNo = odDeliveryCoNo;
        this.odStatus = odStatus;
        this.deliveryCharge = deliveryCharge;
    }

    public String getOdOrderNo()
    {
        return odOrderNo;
    }

    public void setOdOrderNo(String odOrderNo)
    {
        this.odOrderNo = odOrderNo;
    }

    public String getOdMemberId()
    {
        return odMemberId;
    }

    public void setOdMemberId(String odMemberId)
    {
        this.odMemberId = odMemberId;
    }

    public String getOdMemberName()
    {
        return odMemberName;
    }

    public void setOdMemberName(String odMemberName)
    {
        this.odMemberName = odMemberName;
    }

    public String getOdPhone()
    {
        return odPhone;
    }

    public void setOdPhone(String odPhone)
    {
        this.odPhone = odPhone;
    }

    public String getOdEmail()
    {
        return odEmail;
    }

    public void setOdEmail(String odEmail)
    {
        this.odEmail = odEmail;
    }

    public String getOdRecipient()
    {
        return odRecipient;
    }

    public void setOdRecipient(String odRecipient)
    {
        this.odRecipient = odRecipient;
    }

    public String getOdEmergencyContact()
    {
        return odEmergencyContact;
    }

    public void setOdEmergencyContact(String odEmergencyContact)
    {
        this.odEmergencyContact = odEmergencyContact;
    }

    public String getOdAddress()
    {
        return odAddress;
    }

    public void setOdAddress(String odAddress)
    {
        this.odAddress = odAddress;
    }

    public Date getOdDeliveryDate()
    {
        return odDeliveryDate;
    }

    public void setOdDeliveryDate(Date odDeliveryDate)
    {
        this.odDeliveryDate = odDeliveryDate;
    }

    public String getOdDeliveryRequest()
    {
        return odDeliveryRequest;
    }

    public void setOdDeliveryRequest(String odDeliveryRequest)
    {
        this.odDeliveryRequest = odDeliveryRequest;
    }

    public String getOdUseCoupon()
    {
        return odUseCoupon;
    }

    public void setOdUseCoupon(String odUseCoupon)
    {
        this.odUseCoupon = odUseCoupon;
    }

    public String getOdUsePoint()
    {
        return odUsePoint;
    }

    public void setOdUsePoint(String odUsePoint)
    {
        this.odUsePoint = odUsePoint;
    }

    public String getOdPaymentAmount()
    {
        return odPaymentAmount;
    }

    public void setOdPaymentAmount(String odPaymentAmount)
    {
        this.odPaymentAmount = odPaymentAmount;
    }

    public Date getOdOrderDate()
    {
        return odOrderDate;
    }

    public void setOdOrderDate(Date odOrderDate)
    {
        this.odOrderDate = odOrderDate;
    }

    public String getOdPaymentType()
    {
        return odPaymentType;
    }

    public void setOdPaymentType(String odPaymentType)
    {
        this.odPaymentType = odPaymentType;
    }

    public String getOdDeliveryCoNo()
    {
        return odDeliveryCoNo;
    }

    public void setOdDeliveryCoNo(String odDeliveryCoNo)
    {
        this.odDeliveryCoNo = odDeliveryCoNo;
    }

    public String getOdStatus()
    {
        return odStatus;
    }

    public void setOdStatus(String odStatus)
    {
        this.odStatus = odStatus;
    }

    public String getDeliveryCharge()
    {
        return deliveryCharge;
    }

    public void setDeliveryCharge(String deliveryCharge)
    {
        this.deliveryCharge = deliveryCharge;
    }

    @Override
    public String toString()
    {
        return "InsertOrder [odOrderNo=" + odOrderNo + ", odMemberId="
                + odMemberId + ", odMemberName=" + odMemberName + ", odPhone="
                + odPhone + ", odEmail=" + odEmail + ", odRecipient="
                + odRecipient + ", odEmergencyContact=" + odEmergencyContact
                + ", odAddress=" + odAddress + ", odDeliveryDate="
                + odDeliveryDate + ", odDeliveryRequest=" + odDeliveryRequest
                + ", odUseCoupon=" + odUseCoupon + ", odUsePoint=" + odUsePoint
                + ", odPaymentAmount=" + odPaymentAmount + ", odOrderDate="
                + odOrderDate + ", odPaymentType=" + odPaymentType
                + ", odDeliveryCoNo=" + odDeliveryCoNo + ", odStatus="
                + odStatus + ", deliveryCharge=" + deliveryCharge + "]";
    }

	
	
	
}
