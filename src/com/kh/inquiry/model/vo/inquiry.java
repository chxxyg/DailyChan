package com.kh.inquiry.model.vo;

import java.sql.Date;

public class inquiry {
	
	private int INQUIRY_BOARD_NO;
	private String MEMBER_ID;
	private String INQUIRY_TYPE;
	private String INQUIRY_TITLE;
	private String INQUIRY_CONTENT;
	private String INQUIRY_RESPONSE_YN;
	private String INQUIRY_RESPONSE;
	private String INQUIRE_FILE_YN;
	private Date INQUIRE_CREATE_DATE;
	
	public inquiry() {
		
	}

	public inquiry(int iNQUIRY_BOARD_NO, String mEMBER_ID, String iNQUIRY_TYPE, String iNQUIRY_TITLE,
			String iNQUIRY_CONTENT, String iNQUIRY_RESPONSE_YN, String iNQUIRY_RESPONSE, String iNQUIRE_FILE_YN,
			Date iNQUIRE_CREATE_DATE) {
		super();
		INQUIRY_BOARD_NO = iNQUIRY_BOARD_NO;
		MEMBER_ID = mEMBER_ID;
		INQUIRY_TYPE = iNQUIRY_TYPE;
		INQUIRY_TITLE = iNQUIRY_TITLE;
		INQUIRY_CONTENT = iNQUIRY_CONTENT;
		INQUIRY_RESPONSE_YN = iNQUIRY_RESPONSE_YN;
		INQUIRY_RESPONSE = iNQUIRY_RESPONSE;
		INQUIRE_FILE_YN = iNQUIRE_FILE_YN;
		INQUIRE_CREATE_DATE = iNQUIRE_CREATE_DATE;
	}

	public int getINQUIRY_BOARD_NO() {
		return INQUIRY_BOARD_NO;
	}

	public void setINQUIRY_BOARD_NO(int iNQUIRY_BOARD_NO) {
		INQUIRY_BOARD_NO = iNQUIRY_BOARD_NO;
	}

	public String getMEMBER_ID() {
		return MEMBER_ID;
	}

	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}

	public String getINQUIRY_TYPE() {
		return INQUIRY_TYPE;
	}

	public void setINQUIRY_TYPE(String iNQUIRY_TYPE) {
		INQUIRY_TYPE = iNQUIRY_TYPE;
	}

	public String getINQUIRY_TITLE() {
		return INQUIRY_TITLE;
	}

	public void setINQUIRY_TITLE(String iNQUIRY_TITLE) {
		INQUIRY_TITLE = iNQUIRY_TITLE;
	}

	public String getINQUIRY_CONTENT() {
		return INQUIRY_CONTENT;
	}

	public void setINQUIRY_CONTENT(String iNQUIRY_CONTENT) {
		INQUIRY_CONTENT = iNQUIRY_CONTENT;
	}

	public String getINQUIRY_RESPONSE_YN() {
		return INQUIRY_RESPONSE_YN;
	}

	public void setINQUIRY_RESPONSE_YN(String iNQUIRY_RESPONSE_YN) {
		INQUIRY_RESPONSE_YN = iNQUIRY_RESPONSE_YN;
	}

	public String getINQUIRY_RESPONSE() {
		return INQUIRY_RESPONSE;
	}

	public void setINQUIRY_RESPONSE(String iNQUIRY_RESPONSE) {
		INQUIRY_RESPONSE = iNQUIRY_RESPONSE;
	}

	public String getINQUIRE_FILE_YN() {
		return INQUIRE_FILE_YN;
	}

	public void setINQUIRE_FILE_YN(String iNQUIRE_FILE_YN) {
		INQUIRE_FILE_YN = iNQUIRE_FILE_YN;
	}

	public Date getINQUIRE_CREATE_DATE() {
		return INQUIRE_CREATE_DATE;
	}

	public void setINQUIRE_CREATE_DATE(Date iNQUIRE_CREATE_DATE) {
		INQUIRE_CREATE_DATE = iNQUIRE_CREATE_DATE;
	}

	@Override
	public String toString() {
		return "inquiry [INQUIRY_BOARD_NO=" + INQUIRY_BOARD_NO + ", MEMBER_ID=" + MEMBER_ID + ", INQUIRY_TYPE="
				+ INQUIRY_TYPE + ", INQUIRY_TITLE=" + INQUIRY_TITLE + ", INQUIRY_CONTENT=" + INQUIRY_CONTENT
				+ ", INQUIRY_RESPONSE_YN=" + INQUIRY_RESPONSE_YN + ", INQUIRY_RESPONSE=" + INQUIRY_RESPONSE
				+ ", INQUIRE_FILE_YN=" + INQUIRE_FILE_YN + ", INQUIRE_CREATE_DATE=" + INQUIRE_CREATE_DATE + "]";
	}
	
	

}
