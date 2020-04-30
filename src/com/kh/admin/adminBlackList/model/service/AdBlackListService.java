package com.kh.admin.adminBlackList.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminBlackList.model.dao.AdBlackListDao;
import com.kh.admin.adminBlackList.model.vo.BlackList;
import com.kh.admin.adminCoupon.model.dao.AdCouponDao;
import com.kh.admin.adminMember.model.vo.AdPageInfo;

public class AdBlackListService {

	/*
	 * 총 블랙리스트 조회용 서비스
	 */
	public ArrayList<BlackList> selectList(AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<BlackList> list = new AdBlackListDao().selectList(conn, pi);
		close(conn);
		
		return list;
	}
	/*
	 * 블랙리스트 상세조회용 서비스
	 */
	public BlackList searchBlackList(int bno) {
		
		Connection conn = getConnection();
		
		BlackList b = new AdBlackListDao().searchBlackList(conn, bno);
		
		close(conn);
		
		return b;
	}
	/*
	 * 블랙리스트 해제용 서비스
	 */
	public int deleteBlackList(int bno) {
		
		Connection conn = getConnection();
		int result = new AdBlackListDao().deleteBlackList(conn, bno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}		
		return result;
	}
	/*
	 * 조회버튼클릭
	 */
	public ArrayList<BlackList> searchOneBlackList(AdPageInfo pi, String memberId) {
		
		Connection conn = getConnection();
		
		ArrayList<BlackList> list = new AdBlackListDao().searchOneBlackList(conn,pi, memberId);
		close(conn);
		return list;
		
	}
	/*
	 * 블랙리스트 추가
	 */
	public int insertBlackList(BlackList b) {
		
		Connection conn = getConnection();
		
		int result = new AdBlackListDao().insertBlackList(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	}
	
	public int adBlCount() {
		
		Connection conn = getConnection();
		
		int countBl = new AdBlackListDao().adBlCount(conn);
		
		close(conn);
		return countBl;
		
	}
	
	public int adBliCount(String memberId) {
		
		Connection conn = getConnection();
		
		int countBli = new AdBlackListDao().adBliCount(conn, memberId);
		
		close(conn);
		return countBli;
	}

}


