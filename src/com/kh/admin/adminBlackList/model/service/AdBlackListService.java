package com.kh.admin.adminBlackList.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminBlackList.model.dao.AdBlackListDao;
import com.kh.admin.adminBlackList.model.vo.BlackList;

import static com.kh.common.JDBCTemplate.*;

public class AdBlackListService {

	/*
	 * 총 블랙리스트 조회용 서비스
	 */
	public ArrayList<BlackList> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<BlackList> list = new AdBlackListDao().selectList(conn);
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

}
