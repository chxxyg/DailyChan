package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {

	private int noticeBoardNo;		// 공지사항 번호
	private String noticeTitle;		// 공지사항 제목
	private Date noticeDate;		// 공지사항 작성일
	private String noticeContent;	// 공지사항 내용
	private int noticeCount;		// 공지사항 조회수
	
	public Notice() {
		
	}

	public Notice(int noticeBoardNo, String noticeTitle, Date noticeDate, String noticeContent, int noticeCount) {
		super();
		this.noticeBoardNo = noticeBoardNo;
		this.noticeTitle = noticeTitle;
		this.noticeDate = noticeDate;
		this.noticeContent = noticeContent;
		this.noticeCount = noticeCount;
	}

	public int getNoticeBoardNo() {
		return noticeBoardNo;
	}

	public void setNoticeBoardNo(int noticeBoardNo) {
		this.noticeBoardNo = noticeBoardNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public int getNoticeCount() {
		return noticeCount;
	}

	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}

	@Override
	public String toString() {
		return "notice [noticeBoardNo=" + noticeBoardNo + ", noticeTitle=" + noticeTitle + ", noticeDate=" + noticeDate
				+ ", noticeContent=" + noticeContent + ", noticeCount=" + noticeCount + "]";
	}

	
	
}
