package com.kh.product.model.vo;

public class Product {

	private String pdCategory;	// 카테고리
	private String pdName;      // 상품명
	private String pdCode;		// 상품코드
	private int pdPrice;        // 판매가
	private int pdStock;		// 수량
	private int supplyCoNo;     // 납품업체사업자번호
	private int reviewSum;      // 상품평점(리뷰총합)
	private int reviewCount;    // 상품리뷰갯수
	private int productStandard;// 상품내용량
	
	public Product() {
		
	}
	
	public Product(String pdCategory, String pdName, String pdCode, int pdPrice, int pdStock, int supplyCoNo,
			int reviewSum, int reviewCount, int productStandard) {
		super();
		this.pdCategory = pdCategory;
		this.pdName = pdName;
		this.pdCode = pdCode;
		this.pdPrice = pdPrice;
		this.pdStock = pdStock;
		this.supplyCoNo = supplyCoNo;
		this.reviewSum = reviewSum;
		this.reviewCount = reviewCount;
		this.productStandard = productStandard;
	}

	public String getPdCategory() {
		return pdCategory;
	}

	public void setPdCategory(String pdCategory) {
		this.pdCategory = pdCategory;
	}

	public String getPdName() {
		return pdName;
	}

	public void setPdName(String pdName) {
		this.pdName = pdName;
	}

	public String getPdCode() {
		return pdCode;
	}

	public void setPdCode(String pdCode) {
		this.pdCode = pdCode;
	}

	public int getPdPrice() {
		return pdPrice;
	}

	public void setPdPrice(int pdPrice) {
		this.pdPrice = pdPrice;
	}

	public int getPdStock() {
		return pdStock;
	}

	public void setPdStock(int pdStock) {
		this.pdStock = pdStock;
	}

	public int getSupplyCoNo() {
		return supplyCoNo;
	}

	public void setSupplyCoNo(int supplyCoNo) {
		this.supplyCoNo = supplyCoNo;
	}

	public int getReviewSum() {
		return reviewSum;
	}

	public void setReviewSum(int reviewSum) {
		this.reviewSum = reviewSum;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	public int getProductStandard() {
		return productStandard;
	}

	public void setProductStandard(int productStandard) {
		this.productStandard = productStandard;
	}

	@Override
	public String toString() {
		return "Product [pdCategory=" + pdCategory + ", pdName=" + pdName + ", pdCode=" + pdCode + ", pdPrice="
				+ pdPrice + ", pdStock=" + pdStock + ", supplyCoNo=" + supplyCoNo + ", reviewSum=" + reviewSum
				+ ", reviewCount=" + reviewCount + ", productStandard=" + productStandard + "]";
	}
	
}
