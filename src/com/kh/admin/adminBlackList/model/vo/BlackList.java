package com.kh.admin.adminBlackList.model.vo;

import java.sql.Date;

public class BlackList {
	
	private int blackNo;			// 블랙리스트번호
	private String memberId;		// 블랙리스트 아이디
	private String penaltyCuase;	// 블랙리스트 사유
	private Date penaltyDate;		// 제제일자
	private String nonblockYn;		// 해제여부
	
	public BlackList() {
		
	}

	public BlackList(int blackNo, String memberId, String penaltyCuase, Date penaltyDate, String nonblockYn) {
		super();
		this.blackNo = blackNo;
		this.memberId = memberId;
		this.penaltyCuase = penaltyCuase;
		this.penaltyDate = penaltyDate;
		this.nonblockYn = nonblockYn;
	}
	/*
	 * 상세조회용
	 */
	public BlackList(String memberId, String penaltyCuase, Date penaltyDate, String nonblockYn) {
		super();
		this.memberId = memberId;
		this.penaltyCuase = penaltyCuase;
		this.penaltyDate = penaltyDate;
		this.nonblockYn = nonblockYn;
	}

	public int getBlackNo() {
		return blackNo;
	}

	public void setBlackNo(int blackNo) {
		this.blackNo = blackNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPenaltyCuase() {
		return penaltyCuase;
	}

	public void setPenaltyCuase(String penaltyCuase) {
		this.penaltyCuase = penaltyCuase;
	}

	public Date getPenaltyDate() {
		return penaltyDate;
	}

	public void setPenaltyDate(Date penaltyDate) {
		this.penaltyDate = penaltyDate;
	}

	public String getNonblockYn() {
		return nonblockYn;
	}

	public void setNonblockYn(String nonblockYn) {
		this.nonblockYn = nonblockYn;
	}

	@Override
	public String toString() {
		return "BlackList [blackNo=" + blackNo + ", memberId=" + memberId + ", penaltyCuase=" + penaltyCuase
				+ ", penaltyDate=" + penaltyDate + ", nonblockYn=" + nonblockYn + "]";
	}
	
	
	
	

}

