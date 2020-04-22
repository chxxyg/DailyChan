package com.kh.admin.adminMember.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.dao.adMemberDao;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

public class adMemberService {
	
	
	/*
	 * 회원정보 상세조회용 서비스
	 */
	public Member searchMember(String userId) {
		
		Connection conn = getConnection();
		
		Member m = new adMemberDao().searchMember(conn, userId);
		
		close(conn);
				
		return m;
		
	}
	/*
	 * 총 회원 리스트 조회용 서비스
	 * @return	--> 회원리스트(필요한데이터)담겨있는 객체
	 */
	public ArrayList<Member> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<Member> list = new adMemberDao().selectList(conn);
		close(conn);
		return list;
		
	}	
	/*
	 * 페이징바 / 총회원수 조회용 서비스
	 * @return	--> 총 회원수
	 */
	public int getCountMember() {
		Connection conn = getConnection();
		
		int countMember = new adMemberDao().getCountMember(conn);
		
		close(conn);
		return countMember;
		
	}
	/*
	 * 회원삭제용 서비스
	 */
	public int deleteMember(String mid) {
		
		Connection conn = getConnection();
		int result = new adMemberDao().deleteMember(conn, mid);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	

	}
	/*
	 * 회원수정용 서비스
	 */
	
	public int updateMember(Member m) {
		
		Connection conn = getConnection();
		
		int result = new adMemberDao().updateMember(conn,m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	

	
	
	}
	
	
	
	
	


