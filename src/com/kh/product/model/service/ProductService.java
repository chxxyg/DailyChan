package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.PageInfo;
import com.kh.product.model.vo.Product;

public class ProductService {
	
	/**
	 * paging 처리를 위한 메소드
	 * @param category
	 * @return		--> 게시물 개수
	 */
	public int getListCount(String category) {
		Connection conn = getConnection();
		int listCount = new ProductDao().getListCount(conn, category);
		close(conn);
		return listCount;
	}
	
	/**
	 * ProductList 조회 (카테고리별로 상품 불러오는 메소드)
	 * @param category
	 * @param pi
	 * @return
	 */
	public ArrayList<Product> selectProList(String category, PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectProList(conn, category, pi);
		close(conn);
		return list;
	}
	
	/**
	 * SearchResult 조회 (키워드 검색 후 해당하는 상품 불러오는 메소드)
	 * @param keyword
	 * @return
	 */
	public ArrayList<Product> searchResult(String keyword){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().searchResult(conn, keyword);
		close(conn);
		return list;
	}
	
	/**
	 * ProductDetail 조회 (해당하는 상품 불러와 상세 페이지 채우는 메소드)
	 * @return
	 */
	public Product selectDetail(String proCode){
		Connection conn = getConnection();
		Product p = new ProductDao().selectDetail(conn, proCode);
		close(conn);
		return p;
	}
	
	public ArrayList<AttachmentProduct> selectAttachment(String proCode){
		Connection conn = getConnection();
		ArrayList<AttachmentProduct> atList = new ProductDao().selectAttachment(conn, proCode);
		close(conn);
		return atList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



}
