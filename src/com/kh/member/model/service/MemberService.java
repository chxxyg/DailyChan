package com.kh.member.model.service;

import java.sql.Connection;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

public class MemberService {

	/**
	 * 1. 로그인용 서비스
	 * @param userId		--> 사용자가 입력한 아이디
	 * @param userPwd		--> 사용자가 입력한 비밀번호
	 * @return				조회된 회원정보가 담겨있는 member 객체
	 */
	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, userId, userPwd);
			
			close(conn);
			
			return loginUser;

		
		}
		
}
	

