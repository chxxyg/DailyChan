package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;

public class ProductService {
	
	public ArrayList<Product> selectProList(String category) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProList(conn, category);
		
		close(conn);
		
		return list;
	}
	
	/** 2. 상품 장바구니에 넣는 메소드
	 * @param memberId	--> 장바구니를 클릭한 회원 Id
	 * @param proCode	--> 장바구니에 넣으려는 상품 코드
	 * @param proPrice	--> 장바구니에 넣으려는 상품의 가격
	 * @return
	 */
	public int insertCart(String memberId, String proCode, String proPrice) {
		
		Connection conn = getConnection();
		
		int result = new ProductDao().insertCart(conn, memberId, proCode, proPrice);
		
		close(conn);
		
		return result;
	}
	

}
