package com.kh.member.model.vo;

import java.util.Date;

public class Coupon
{
    private String couponCode;      // 쿠폰코드
    private String couponName;      // 쿠폰이름
    private int couponCondition;    // 사용조건        
    private int couponExpDate;      // 유효기간
    private int couponPrice;        // 쿠폰금액
    private Date couponIssueDate;   // 쿠폰 발급일
    private String couponStatus;    // 쿠폰 사용 유무
    private Date couponUseDate;     // 쿠폰 사용 일시
    private String couponUseNo;     // 쿠폰 사용한 주문번호
    
    public Coupon() {}

    public Coupon(String couponCode, String couponName, int couponCondition,
            int couponExpDate, int couponPrice, Date couponIssueDate,
            String couponStatus, Date couponUseDate, String couponUseNo)
    {
        super();
        this.couponCode = couponCode;
        this.couponName = couponName;
        this.couponCondition = couponCondition;
        this.couponExpDate = couponExpDate;
        this.couponPrice = couponPrice;
        this.couponIssueDate = couponIssueDate;
        this.couponStatus = couponStatus;
        this.couponUseDate = couponUseDate;
        this.couponUseNo = couponUseNo;
    }
    
    
    // 주문시 쿠폰 조회
    public Coupon(String couponCode, String couponName, int couponCondition,
            int couponPrice)
    {
        super();
        this.couponCode = couponCode;
        this.couponName = couponName;
        this.couponCondition = couponCondition;
        this.couponPrice = couponPrice;
    }

    public String getCouponCode()
    {
        return couponCode;
    }

    public void setCouponCode(String couponCode)
    {
        this.couponCode = couponCode;
    }

    public String getCouponName()
    {
        return couponName;
    }

    public void setCouponName(String couponName)
    {
        this.couponName = couponName;
    }

    public int getCouponCondition()
    {
        return couponCondition;
    }

    public void setCouponCondition(int couponCondition)
    {
        this.couponCondition = couponCondition;
    }

    public int getCouponExpDate()
    {
        return couponExpDate;
    }

    public void setCouponExpDate(int couponExpDate)
    {
        this.couponExpDate = couponExpDate;
    }

    public int getCouponPrice()
    {
        return couponPrice;
    }

    public void setCouponPrice(int couponPrice)
    {
        this.couponPrice = couponPrice;
    }

    public Date getCouponIssueDate()
    {
        return couponIssueDate;
    }

    public void setCouponIssueDate(Date couponIssueDate)
    {
        this.couponIssueDate = couponIssueDate;
    }

    public String getCouponStatus()
    {
        return couponStatus;
    }

    public void setCouponStatus(String couponStatus)
    {
        this.couponStatus = couponStatus;
    }

    public Date getCouponUseDate()
    {
        return couponUseDate;
    }

    public void setCouponUseDate(Date couponUseDate)
    {
        this.couponUseDate = couponUseDate;
    }

    public String getCouponUseNo()
    {
        return couponUseNo;
    }

    public void setCouponUseNo(String couponUseNo)
    {
        this.couponUseNo = couponUseNo;
    }

    @Override
    public String toString()
    {
        return "Coupon [couponCode=" + couponCode + ", couponName=" + couponName
                + ", couponCondition=" + couponCondition + ", couponExpDate="
                + couponExpDate + ", couponPrice=" + couponPrice
                + ", couponIssueDate=" + couponIssueDate + ", couponStatus="
                + couponStatus + ", couponUseDate=" + couponUseDate
                + ", couponUseNo=" + couponUseNo + "]";
    }
    
    
}
