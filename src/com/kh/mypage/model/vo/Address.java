package com.kh.mypage.model.vo;

public class Address
{
    private int addressNo;          // 배송지 번호
    private String memberId;        // 회원아이디
    private String zipCode;         // 우편번호
    private String address;         // 배송지 주소
    private String addressDetail;   // 배송지 상세주소
    private String phone;           // 전화번호
    private String addressDefault;  // 기본 배송지 유무
    
    public Address() {}

    public Address(int addressNo, String memberId, String zipCode,
            String address, String addressDetail, String phone,
            String addressDefault)
    {
        super();
        this.addressNo = addressNo;
        this.memberId = memberId;
        this.zipCode = zipCode;
        this.address = address;
        this.addressDetail = addressDetail;
        this.phone = phone;
        this.addressDefault = addressDefault;
    }

    public int getAddressNo()
    {
        return addressNo;
    }

    public void setAddressNo(int addressNo)
    {
        this.addressNo = addressNo;
    }

    public String getMemberId()
    {
        return memberId;
    }

    public void setMemberId(String memberId)
    {
        this.memberId = memberId;
    }

    public String getZipCode()
    {
        return zipCode;
    }

    public void setZipCode(String zipCode)
    {
        this.zipCode = zipCode;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getaddressDetail()
    {
        return addressDetail;
    }

    public void setaddressDetail(String addressDetail)
    {
        this.addressDetail = addressDetail;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getAddressDefault()
    {
        return addressDefault;
    }

    public void setAddressDefault(String addressDefault)
    {
        this.addressDefault = addressDefault;
    }

    @Override
    public String toString()
    {
        return "Address [addressNo=" + addressNo + ", memberId=" + memberId
                + ", zipCode=" + zipCode + ", address=" + address
                + ", addressDetail=" + addressDetail + ", phone=" + phone
                + ", addressDefault=" + addressDefault + "]";
    }
    
    
}
