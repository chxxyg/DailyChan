package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

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
	 * 2_2. 회원가입 시 전화번호 중복 체크
	 * @param phone
	 * @return
	 */
	public int phoneCheck(String phone)
	{
		Connection conn = getConnection();
		int count = new MemberDao().phoneCheck(conn, phone);
		
		close(conn);
		
		return count;
	}
	
	/**
	 * 2_3. 회원가입 시 이메일 중복 체크
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
	
	public int insertMember(Member m)
	{
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0)
		{
			commit(conn);
		}
		else
		{
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	/**
	 * 아이디 찾기
	 * @param memberName	--> 입력받은 회원 이름
	 * @param email			--> 입력받은 회원 이메일
	 * @return
	 */
	public String searchId(String id_name, String id_email) {
		
		Connection conn = getConnection();
		
		String memberId = new MemberDao().searchId(conn, id_name, id_email);
		
		close(conn);
		
		return memberId;
		
		
	}
	
	/**
	 * 	비밀번호 찾기
	 * @param pw_id		--> 입력받은 아이디
	 * @param pw_name	--> 입력받은 이름
	 * @return
	 */
	public String searchPwd(String pw_id, String pw_name) {
		Connection conn = getConnection();
		
		String memberPwd = new MemberDao().searchPwd(conn, pw_id, pw_name);
		
		close(conn);
		
		return memberPwd;
		
	}
	
		
}
	

