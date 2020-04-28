package com.kh.admin.adminPayment.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminPayment.model.dao.AdPaymentDao;
import com.kh.orderDelivery.model.vo.OrderDelivery;

public class AdPaymentService {

	/**
	 * 총 주문 수에 대한 서비스
	 */
	public int adPaymentListCount() {
		Connection conn = getConnection();
		
		int countProduct = new AdPaymentDao().adPaymentListCount(conn);
		
		close(conn);
		return countProduct;
	}
	
	public ArrayList<OrderDelivery> adPaymentSelectList(AdPageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<OrderDelivery> list = new AdPaymentDao().adPaymentSelectList(conn, pi);
		
		close(conn);
		
		return list;
		
	}
	
	public int adPaymentUpdate(String payNo, int payCategory) {
		
		Connection conn = getConnection();
		
		int result = new AdPaymentDao().adPaymentUpdate(conn, payNo, payCategory);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	}
	
	/**
	 * 결제페이지 조회를 위한 서비스
	 * @param pi
	 * @param payName
	 * @return
	 */
	public ArrayList<OrderDelivery> searchPay(AdPageInfo pi, String payName){
		
		Connection conn = getConnection();
		
		ArrayList<OrderDelivery> list = new AdPaymentDao().searchPay(conn, pi, payName);
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 조회시 나오는 결제 갯수를 위한 서비스
	 * @param payName
	 * @return
	 */
	public int adPayCount(String payName) {
		
		Connection conn = getConnection();
		
		int countPay = new AdPaymentDao().adPayCount(conn, payName);
		
		close(conn);
		return countPay;
		
	}
	
	
	
	
}
