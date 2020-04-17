package com.kh.admin.adminMember.model.service;

import java.sql.Connection;

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

}
