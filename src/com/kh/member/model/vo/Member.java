package com.kh.member.model.vo;

import java.sql.Date;

public class Member {

	private String memberId;		// 회원 아이디
	private String memberName;		// 회원 이름
	private String gender;			// 성별
	private String birth;			// 생년월일
	private String email;			// 이메일
	private String phone;			// 휴대번호
	private Date enrollDate;		// 회원가입일
	private String delMemberYn;		// 회원탈퇴여부
	private Date delDate;			// 회원탈퇴일
	private String password;		// 비밀번호
	private Date modifyDate;		// 회원정보 수정일
	private String blackListYn;		// 블랙리스트 여부
	private int pointSum;			// 적립금 합계
	private int	reportedNum;		//누적 신고횟수
	private String refMemberId;		 //추천인아이디
	
	public Member() {
		
	}
	
	

	/*
	 * 회원리스트
	 */
	public Member(String memberId, String memberName, String email, String phone, Date enrollDate,  Date modifyDate, String delMemberYn,
			int pointSum) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.modifyDate =  modifyDate;
		this.delMemberYn = delMemberYn;
		this.pointSum = pointSum;
	}
	/*
	 * 회원상세조회리스트
	 */
	public Member(String memberId, String memberName, String email, String phone, Date enrollDate, Date modifyDate) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
	}



	public Member(String memberId, String memberName, String gender, String birth, String email, String phone,
			Date enrollDate, String delMemberYn, Date delDate, String password, Date modifyDate, String blackListYn,
			int pointSum, int reportedNum, String refMemberId) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.delMemberYn = delMemberYn;
		this.delDate = delDate;
		this.password = password;
		this.modifyDate = modifyDate;
		this.blackListYn = blackListYn;
		this.pointSum = pointSum;
		this.reportedNum = reportedNum;
		this.refMemberId = refMemberId;
	}
	
	

	/**
	 * @author Taek
	 * 회원가입 시 필수 입력 정보
	 */
	public Member(String memberId, String password, String memberName, String phone, String email, String refMemberId) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.memberName = memberName;
		this.phone = phone;
		this.email = email;
		this.refMemberId = refMemberId;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getDelMemberYn() {
		return delMemberYn;
	}

	public void setDelMemberYn(String delMemberYn) {
		this.delMemberYn = delMemberYn;
	}

	public Date getDelDate() {
		return delDate;
	}

	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getBlackListYn() {
		return blackListYn;
	}

	public void setBlackListYn(String blackListYn) {
		this.blackListYn = blackListYn;
	}

	public int getPointSum() {
		return pointSum;
	}

	public void setPointSum(int pointSum) {
		this.pointSum = pointSum;
	}

	public int getReportedNum() {
		return reportedNum;
	}

	public void setReportedNum(int reportedNum) {
		this.reportedNum = reportedNum;
	}

	public String getRefMemberId() {
		return refMemberId;
	}

	public void setRefMemberId(String refMemberId) {
		this.refMemberId = refMemberId;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberName=" + memberName + ", gender=" + gender + ", birth=" + birth
				+ ", email=" + email + ", phone=" + phone + ", enrollDate=" + enrollDate + ", delMemberYn="
				+ delMemberYn + ", delDate=" + delDate + ", password=" + password + ", modifyDate=" + modifyDate
				+ ", blackListYn=" + blackListYn + ", pointSum=" + pointSum + ", reportedNum=" + reportedNum
				+ ", refMemberId=" + refMemberId + "]";
	}

	
}
