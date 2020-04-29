package com.kh.admin.adminMember.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.dao.adMemberDao;
import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.member.model.vo.Member;

public class adMemberService {
	
	
	/*
	 * 회원정보 상세조회용 서비스
	 */
	public ArrayList<Member> searchMember(AdPageInfo pi,String memberId) {
		
		Connection conn = getConnection();
		
		ArrayList<Member> list = new adMemberDao().searchMember(conn,pi, memberId);
		
		close(conn);
				
		return list;
		
	}
	/*
	 * 총 회원 리스트 조회용 서비스
	 * @return	--> 회원리스트(필요한데이터)담겨있는 객체
	 */
	public ArrayList<Member> selectList(AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Member> list = new adMemberDao().selectList(conn, pi);
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
	public Member detailMember(String mid) {
		
		Connection conn = getConnection();
		
		Member m = new adMemberDao().detailMember(conn, mid);
		close(conn);
		
		return m;
	}
	
	public int listCountMember(String memberId) {
		
		Connection conn = getConnection();
		
		int listCountMember = new adMemberDao().listCountMember(conn, memberId);
		
		close(conn);
		return listCountMember;
	}
	
	public int deleteBlackList(String mid) {
		
		Connection conn = getConnection();
		
		int result2 = new adMemberDao().deleteBlackList(conn, mid);
		
		if(result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result2;
		
		
	}
	public int insertBlackList(String memberId) {
		
		Connection conn = getConnection();
		
		int result2 = new adMemberDao().insertBlackList(conn, memberId);
		
		if(result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result2;
	}

	

	
	
}
