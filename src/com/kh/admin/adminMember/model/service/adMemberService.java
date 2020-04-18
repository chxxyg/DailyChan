package com.kh.admin.adminMember.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.dao.adMemberDao;
import com.kh.admin.adminMember.model.vo.adMember;
import static com.kh.common.JDBCTemplate.*;

public class adMemberService {
	
	public adMember searchMember(String userId) {
		
		Connection conn = getConnection();
		
		adMember searchMember = new adMemberDao().searchMember(conn, userId);
		
		close(conn);
		
		return searchMember;
	}

	public ArrayList<adMember> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<adMember> list = new adMemberDao().selectList(conn);
		close(conn);
		return list;
		
	}

}
