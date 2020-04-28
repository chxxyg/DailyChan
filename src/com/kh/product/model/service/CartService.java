package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.CartDao;
import com.kh.product.model.vo.OrderProduct;
import com.kh.product.model.vo.ShoppingCart;

public class CartService {

	/**1_1. 상품 장바구니 담기 전, 장바구니에 이미 담긴 상품인지 확인하는 메소드
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public int searchCart(String memberId, String proCode) {
		Connection conn = getConnection();
		int exist = new CartDao().searchCart(conn, memberId, proCode);
		close(conn);
		return exist;
	}
	
	/** 1_2. 상품 장바구니에 넣는 메소드
	 * @param memberId	--> 장바구니를 클릭한 회원 Id
	 * @param proCode	--> 장바구니에 넣으려는 상품 코드
	 * @param proPrice	--> 장바구니에 넣으려는 상품의 가격
	 * @return
	 */
	public int insertCart(String memberId, String proCode, int proPrice) {
		
		Connection conn = getConnection();
		int result = new CartDao().insertCart(conn, memberId, proCode, proPrice);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
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
	
	/** 3. 장바구니에 담긴 상품 수량 변경하는 메소드
	 * @param memberId
	 * @param proCode
	 * @param qty
	 * @return
	 */
	public int updateQtyCart(String memberId, String proCode, int qty) {
		Connection conn = getConnection();
		int result = new CartDao().updateQtyCart(conn, memberId, proCode, qty);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/** 4. 장바구니에서 선택된 상품 삭제
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public int deleteCart(String memberId, String proCode) {
		Connection conn = getConnection();
		int del = new CartDao().deleteCart(conn, memberId, proCode);
		if(del > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return del;
	}
	
	/** 5_1. ORDER_PRODUCT 테이블에 값 추가
	 * @param memberId
	 * @return
	 */
	public int insertOrderProduct(String memberId, String ranStr) {
		Connection conn = getConnection();
		int insert = new CartDao().insertOrderProduct(conn, memberId, ranStr);
		if(insert > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return insert;
	}
	
	/** 5_2. 장바구니에 orderNo 추가
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public int updateOrdNoCart(String memberId, String proCode, String ranStr) {
		Connection conn = getConnection();
		int update = new CartDao().updateOrdNoCart(conn, memberId, proCode, ranStr);
		if(update > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return update;
	}
	
	/** 6. 주석달아주세요
	 * @param userId
	 * @return
	 */
	public OrderProduct orderNo(String userId)
	{
	    Connection conn = getConnection();
	    OrderProduct op = new CartDao().orderNo(conn, userId);
	    
	    close(conn);
	    return op;
	    
	}
	
	/** 7. 상품 상세페이지에서 장바구니 추가
	 * @param memberId
	 * @param proCode
	 * @param proPrice
	 * @param qyt
	 * @return
	 */
	public int insertIntoCart(String memberId, String proCode, int proPrice, int qty) {
		Connection conn = getConnection();
		int result = new CartDao().insertIntoCart(conn, memberId, proCode, proPrice, qty);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
