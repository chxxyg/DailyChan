package com.kh.product.model.vo;

public class OrderProduct
{
    private String orderNo;
    private String memberId;
    private String orderStatus;
    
    public OrderProduct() {}

    public OrderProduct(String orderNo, String memberId, String orderStatus)
    {
        super();
        this.orderNo = orderNo;
        this.memberId = memberId;
        this.orderStatus = orderStatus;
    }

    public String getOrderNo()
    {
        return orderNo;
    }

    public void setOrderNo(String orderNo)
    {
        this.orderNo = orderNo;
    }

    public String getMemberId()
    {
        return memberId;
    }

    public void setMemberId(String memberId)
    {
        this.memberId = memberId;
    }

    public String getOrderStatus()
    {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus)
    {
        this.orderStatus = orderStatus;
    }

    @Override
    public String toString()
    {
        return "OrderProduct [orderNo=" + orderNo + ", memberId=" + memberId
                + ", orderStatus=" + orderStatus + "]";
    }
    
    
}
