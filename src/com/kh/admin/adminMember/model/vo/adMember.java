package com.kh.admin.adminMember.model.vo;

import java.sql.Date;

public class adMember {

	private String memberId;      // 회원아이디
	private String memberName;    // 회원이름
	private String phone;         // 전화번호
	private String email;         // 이메일
	private Date enrollDate;      // 가입일
	private String blacklist; 	  // 블랙리스트 여부
	private String address;		  // 배송지 주소	
	private String addressDetail; // 배송지 상세주소
	
	public adMember() {
		
	}

	public adMember(String memberId, String memberName, String phone, String email, Date enrollDate, String address,
			String addressDetail) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.phone = phone;
		this.email = email;
		this.enrollDate = enrollDate;
		this.address = address;
		this.addressDetail = addressDetail;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getBlacklist() {
		return blacklist;
	}

	public void setBlacklist(String blacklist) {
		this.blacklist = blacklist;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	@Override
	public String toString() {
		return "adMember [memberId=" + memberId + ", memberName=" + memberName + ", phone=" + phone + ", email=" + email
				+ ", enrollDate=" + enrollDate + ", blacklist=" + blacklist + ", address=" + address
				+ ", addressDetail=" + addressDetail + "]";
	}
	
	
	
}
