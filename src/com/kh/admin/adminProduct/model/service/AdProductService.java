package com.kh.admin.adminProduct.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminProduct.model.dao.AdProductDao;
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;

public class AdProductService {
	
	public int adProductInsert(Product p, ArrayList<AttachmentProduct> list) {
		
		Connection conn =  getConnection();
		
		int result1 = new AdProductDao().adProductInsert(conn, p);   
		int result2 = new AdProductDao().adProductAttachment(conn, list, p);
		
		if(result1 > 0 && result2 >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1*result2;
		
	}
	
	public ArrayList<Product> adProductselectList(AdPageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new AdProductDao().adProductselectList(conn, pi);
		close(conn);
		return list;
		
	}
	
	public int adProductListCount() {
		
		Connection conn = getConnection();
		
		int countProduct = new AdProductDao().adProductListCount(conn);
		
		close(conn);
		return countProduct;
		
	}
	
	

}
