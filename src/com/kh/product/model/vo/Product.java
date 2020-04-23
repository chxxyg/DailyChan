package com.kh.product.model.vo;

import java.sql.Date;

/**
 * @author 채영
 *
 */
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
	private Date proDate;				// 상품 등록일
	private int proSum;					// 상품 총 판매량
	private String proSaleYn;			// 상품 세일 여부
	
    private String proSupplyName;       // 납품업체명
    
	private String atFileName;			// 상품 대표 첨부파일
	
	private double discountRate;		// 할인율
	
	private String atDetailFileName;	// 상품 상세 첨부파일
	private String atInfoFileName;		// 상품 정보 첨부파일
	
	
	public Product() {
		
	}
	
	
	

	/**
	 * new, best, 한식, 양식, 아시안 productList 조회용 매개변수 
	 */
	public Product(String proCode, String proName, int proPrice, int proStandard, String atFileName, String proSaleYn) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proStandard = proStandard;
		this.atFileName = atFileName;
		this.proSaleYn = proSaleYn;
	}


	/**
	 * sale productList 조회용 매개변수 
	 */
	public Product(String proCode, String proName, int proPrice, int proStandard, String atFileName, double discountRate, String proSaleYn) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proStandard = proStandard;
		this.atFileName = atFileName;
		this.discountRate = discountRate;
		this.proSaleYn = proSaleYn;
	}


	
	
	/**
	 * productDetail
	 */
	public Product(String proCode, String proName, int proPrice, int proReviewSum, int proReviewCount, String proSaleYn,
			String atFileName, double discountRate, String atDetailFileName, String atInfoFileName) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proReviewSum = proReviewSum;
		this.proReviewCount = proReviewCount;
		this.proSaleYn = proSaleYn;
		this.atFileName = atFileName;
		this.discountRate = discountRate;
		this.atDetailFileName = atDetailFileName;
		this.atInfoFileName = atInfoFileName;
	}


	
	
	
	
	
	


	/**
	 * 관리자페이지 상품 등록 매개변수
	 */
	public Product(String proCategory, String proName, String proCode, int proSupplyCoNo, int proPrice, int proStock) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proCategory = proCategory;
		this.proStock = proStock;
		this.proSupplyCoNo = proSupplyCoNo;
	}

	
	/**
	 * 관리자페이지 상품 리스트페이지
	 */
	public Product(String proCode , String proSupplyName, String proName, int proPrice, int proStock) {
		super();
		this.proCode = proCode;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proStock = proStock;
		this.proSupplyName = proSupplyName;
	}

	/**
	 * 관리자페이지 수정 상품 리스트페이지
	 */
	public Product(String proName, int proPrice, int proStock) {
		super();
		this.proName = proName;
		this.proPrice = proPrice;
		this.proStock = proStock;
	}

	


	// 전체 매개변수 생성자, setter/getter, toString 

	public Product(String proCode, String proName, int proPrice, String proCategory, int proStock, int proSupplyCoNo,
			int proReviewSum, int proReviewCount, int proStandard, Date proDate, int proSum,
			String proSaleYn, String proSupplyName, String atFileName, double discountRate, String atDetailFileName,
			String atInfoFileName) {
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
		this.proDate = proDate;
		this.proSum = proSum;
		this.proSaleYn = proSaleYn;
		this.proSupplyName = proSupplyName;
		this.atFileName = atFileName;
		this.discountRate = discountRate;
		this.atDetailFileName = atDetailFileName;
		this.atInfoFileName = atInfoFileName;
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




	public Date getProDate() {
		return proDate;
	}




	public void setProDate(Date proDate) {
		this.proDate = proDate;
	}




	public int getProSum() {
		return proSum;
	}




	public void setProSum(int proSum) {
		this.proSum = proSum;
	}




	public String getProSaleYn() {
		return proSaleYn;
	}




	public void setProSaleYn(String proSaleYn) {
		this.proSaleYn = proSaleYn;
	}




	public String getProSupplyName() {
		return proSupplyName;
	}




	public void setProSupplyName(String proSupplyName) {
		this.proSupplyName = proSupplyName;
	}




	public String getAtFileName() {
		return atFileName;
	}




	public void setAtFileName(String atFileName) {
		this.atFileName = atFileName;
	}




	public double getDiscountRate() {
		return discountRate;
	}




	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}




	public String getAtDetailFileName() {
		return atDetailFileName;
	}




	public void setAtDetailFileName(String atDetailFileName) {
		this.atDetailFileName = atDetailFileName;
	}




	public String getAtInfoFileName() {
		return atInfoFileName;
	}




	public void setAtInfoFileName(String atInfoFileName) {
		this.atInfoFileName = atInfoFileName;
	}




	@Override
	public String toString() {
		return "Product [proCode=" + proCode + ", proName=" + proName + ", proPrice=" + proPrice + ", proCategory="
				+ proCategory + ", proStock=" + proStock + ", proSupplyCoNo=" + proSupplyCoNo + ", proReviewSum="
				+ proReviewSum + ", proReviewCount=" + proReviewCount + ", proStandard=" + proStandard + ", proDate="
				+ proDate + ", proSum=" + proSum + ", proSaleYn=" + proSaleYn
				+ ", proSupplyName=" + proSupplyName + ", atFileName=" + atFileName + ", discountRate=" + discountRate
				+ ", atDetailFileName=" + atDetailFileName + ", atInfoFileName=" + atInfoFileName + "]";
	}


	
}
