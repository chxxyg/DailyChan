package com.kh.product.model.vo;

public class Product {

	private String proCode;				// 상품 코드
	private String proName;      		// 상품 이름
	private int proPrice;        		// 상품 가격
	private String proCategory;			// 상품 종류
	private int proStock;				// 상품 재고
	private int proSupplyCoNo;     		// 납품업체 사업자 번호
	private int proReviewSum;      		// 상품 평점 (리뷰 총합)
	private int proReviewCount;    		// 상품 리뷰 개수
	private int proStandard;			// 상품 내용량 
	
	private String atFileName;			// 상품에 해당하는 대표 첨부파일
	
	public Product() {
		
	}
	
	
	// selectProList
	public Product(String proCode, String proName, int proPrice, int proStock, int proStandard, String atFileName) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proStock = proStock;
		this.proStandard = proStandard;
		this.setAtFileName(atFileName);
	}



	public Product(String proCode, String proName, int proPrice, String proCategory, int proStock, int proSupplyCoNo,
			int proReviewSum, int proReviewCount, int proStandard) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proCategory = proCategory;
		this.proStock = proStock;
		this.proSupplyCoNo = proSupplyCoNo;
		this.proReviewSum = proReviewSum;
		this.proReviewCount = proReviewCount;
		this.proStandard = proStandard;
	}

	
	
	

	public Product(String proCategory, String proName, String proCode, int proSupplyCoNo, int proPrice, int proStock) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proCategory = proCategory;
		this.proStock = proStock;
		this.proSupplyCoNo = proSupplyCoNo;
	}

	public String getProCode() {
		return proCode;
	}

	public void setProCode(String proCode) {
		this.proCode = proCode;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getProPrice() {
		return proPrice;
	}

	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}

	public String getProCategory() {
		return proCategory;
	}

	public void setProCategory(String proCategory) {
		this.proCategory = proCategory;
	}

	public int getProStock() {
		return proStock;
	}

	public void setProStock(int proStock) {
		this.proStock = proStock;
	}

	public int getProSupplyCoNo() {
		return proSupplyCoNo;
	}

	public void setProSupplyCoNo(int proSupplyCoNo) {
		this.proSupplyCoNo = proSupplyCoNo;
	}

	public int getProReviewSum() {
		return proReviewSum;
	}

	public void setProReviewSum(int proReviewSum) {
		this.proReviewSum = proReviewSum;
	}

	public int getProReviewCount() {
		return proReviewCount;
	}

	public void setProReviewCount(int proReviewCount) {
		this.proReviewCount = proReviewCount;
	}

	public int getProStandard() {
		return proStandard;
	}

	public void setProStandard(int proStandard) {
		this.proStandard = proStandard;
	}

	@Override
	public String toString() {
		return "Product [proCode=" + proCode + ", proName=" + proName + ", proPrice=" + proPrice + ", proCategory="
				+ proCategory + ", proStock=" + proStock + ", proSupplyCoNo=" + proSupplyCoNo + ", proReviewSum="
				+ proReviewSum + ", proReviewCount=" + proReviewCount + ", proStandard=" + proStandard + "]";
	}



	public String getAtFileName() {
		return atFileName;
	}



	public void setAtFileName(String atFileName) {
		this.atFileName = atFileName;
	}
	
}
