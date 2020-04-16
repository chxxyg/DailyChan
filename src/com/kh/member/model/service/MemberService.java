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
	
	/**
	 * 2_1. 회원가입 시 아이디 중복 체크
	 * @param userId	--> 중복확인하고자 하는 사용자가 입력한 아이디값
	 * @return			--> 해당 아이디와 일치하는 갯수
	 */
	public int idCheck(String userId)
	{
	    Connection conn = getConnection();
	    
	    int count = new MemberDao().idCheck(conn, userId);
	    
	    close(conn);
	    
	    return count;
	}
	
	/**
	 * 2_2. 회원가입 시 이메일 중복 체크
	 * @param email
	 * @return
	 */
	public int emailCheck(String email)
	{
		Connection conn = getConnection();
		
		int count = new MemberDao().emailCheck(conn, email);
		
		close(conn);
		
		return count;
	}
		
}
	

