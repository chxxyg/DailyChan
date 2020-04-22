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
	
	/**
	 * servlet에서 받아온 페이징 처리 객체를 dao에 보내주기 위한 서비스
	 */
	public ArrayList<Product> adProductselectList(AdPageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new AdProductDao().adProductselectList(conn, pi);
		close(conn);
		return list;
		
	}
	
	/**
	 * 상품리스트 페이지에 보여줄 총게시글수를 dao에 보내주기위한 service 
	 */
	public int adProductListCount() {
		
		Connection conn = getConnection();
		
		int countProduct = new AdProductDao().adProductListCount(conn);
		
		close(conn);
		return countProduct;
		
	}
	
	/**
	 * 상품 세부조회용 서비스
	 */
	public Product adProductDetail(String mid){
		
		Connection conn = getConnection();
		
		Product p = new AdProductDao().adProductDetail(conn, mid);
		
		close(conn);
		
		return p;
		
	}
	
	/**
	 * 상품 세부조회용 파일 서비스
	 */
	public ArrayList<AttachmentProduct> adAttachmentDetail(String mid){
		
		Connection conn = getConnection();
		
		ArrayList<AttachmentProduct> ap = new AdProductDao().adAttachmentDetail(conn, mid);
		
		close(conn);
		
		return ap;
		
	}
	
	public int deleteProduct(String mid) {
		
		Connection conn = getConnection();

		int result1 = new AdProductDao().deleteAttachment(conn, mid);
		int result2 = new AdProductDao().deleteProduct(conn, mid);
		
		result = result1*result2;
		
		close(conn);
		
		return result;
		
	}
	
	

}
