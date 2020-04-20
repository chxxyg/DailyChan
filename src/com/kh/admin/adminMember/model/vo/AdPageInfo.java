package com.kh.admin.adminMember.model.vo;

public class AdPageInfo {
	
	private int countMember;
	private int currentPage;
	private int startpage;
	private int endPage;
	private int maxPage;
	private int PageLimit;
	private int countLimit;
	public AdPageInfo(int countMember, int currentPage, int startpage, int endPage, int maxPage, int pageLimit,
			int countLimit) {
		super();
		this.countMember = countMember;
		this.currentPage = currentPage;
		this.startpage = startpage;
		this.endPage = endPage;
		this.maxPage = maxPage;
		PageLimit = pageLimit;
		this.countLimit = countLimit;
	}
	public int getCountMember() {
		return countMember;
	}
	public void setCountMember(int countMember) {
		this.countMember = countMember;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartpage() {
		return startpage;
	}
	public void setStartpage(int startpage) {
		this.startpage = startpage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getPageLimit() {
		return PageLimit;
	}
	public void setPageLimit(int pageLimit) {
		PageLimit = pageLimit;
	}
	public int getCountLimit() {
		return countLimit;
	}
	public void setCountLimit(int countLimit) {
		this.countLimit = countLimit;
	}
	@Override
	public String toString() {
		return "AdPageInfo [countMember=" + countMember + ", currentPage=" + currentPage + ", startpage=" + startpage
				+ ", endPage=" + endPage + ", maxPage=" + maxPage + ", PageLimit=" + PageLimit + ", countLimit="
				+ countLimit + "]";
	}
	
	

}
