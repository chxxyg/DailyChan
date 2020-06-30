package com.kh.product.model.vo;

public class WishList
{
    private String memberId;
    private String proCode;
    
    public WishList() {}

    public WishList(String memberId, String proCode)
    {
        super();
        this.memberId = memberId;
        this.proCode = proCode;
    }

    public String getMemberId()
    {
        return memberId;
    }

    public void setMemberId(String memberId)
    {
        this.memberId = memberId;
    }

    public String getProCode()
    {
        return proCode;
    }

    public void setProCode(String proCode)
    {
        this.proCode = proCode;
    }

    @Override
    public String toString()
    {
        return "WishList [memberId=" + memberId + ", proCode=" + proCode + "]";
    }
    
    
}
