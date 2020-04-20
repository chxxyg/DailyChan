package com.kh.admin.adminMember.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.dao.adMemberDao;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

public class adMemberService {
	
	public Member searchMember(String userId) {
		
		Connection conn = getConnection();
		
		Member searchMember = new adMemberDao().searchMember(conn, userId);
		
		close(conn);
		
		return searchMember;
	}

	public ArrayList<Member> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<Member> list = new adMemberDao().selectList(conn);
		close(conn);
		return list;
		
	}

}
