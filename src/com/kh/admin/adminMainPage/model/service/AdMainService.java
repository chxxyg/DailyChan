package com.kh.admin.adminMainPage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMainPage.model.dao.AdMainDao;
import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;
import com.kh.orderDelivery.model.vo.OrderDelivery;
import com.kh.product.model.vo.Product;

public class AdMainService {
	
	public ArrayList<Product> adMainProList(){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new AdMainDao().adMainProList(conn);
		close(conn);
		return list;
		
	}
	
	public ArrayList<OrderDelivery> adMainPayList(){
		
		Connection conn = getConnection();
		
		ArrayList<OrderDelivery> list1 = new AdMainDao().adMainPayList(conn);
		close(conn);
		return list1;
	}
	
	public ArrayList<AdOneInquiry> adMainQuiryList(){
		
		Connection conn = getConnection();
		
		ArrayList<AdOneInquiry> list2 = new AdMainDao().adMainQuiryList(conn);
		close(conn);
		return list2;
		
	}
	
	

}
