package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
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
	
	public ArrayList<Product> searchResult(String keyword){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().searchResult(conn, keyword);
		
		close(conn);
		
		return list;
	}



}
