package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.CartDao;
import com.kh.product.model.vo.ShoppingCart;

public class CartService {

	/**1_1. 상품 장바구니 담기 전, 장바구니에 이미 담긴 상품인지 확인하는 메소드
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public ShoppingCart searchCart() {
		Connection conn = getConnection();
		ShoppingCart cart = new CartDao().searchCart(conn);
		close(conn);
		return cart;
	}
	
	/** 1_2. 상품 장바구니에 넣는 메소드
	 * @param memberId	--> 장바구니를 클릭한 회원 Id
	 * @param proCode	--> 장바구니에 넣으려는 상품 코드
	 * @param proPrice	--> 장바구니에 넣으려는 상품의 가격
	 * @return
	 */
	public int insertCart(String userId, String pCode, int pPrice) {
		
		Connection conn = getConnection();
		int result = new CartDao().insertCart(conn, userId, pCode, pPrice);
		close(conn);
		return result;
	}
	
	/** 2. 장바구니에 담긴 값들 조회해오는 메소드
	 * @param memberId
	 * @return
	 */
	public ArrayList<ShoppingCart> selectCart(String memberId) {
		
		Connection conn = getConnection();
		ArrayList<ShoppingCart> clist = new CartDao().selectCart(conn, memberId);
		close(conn);
		return clist;
		
	}
	
	
	
}
