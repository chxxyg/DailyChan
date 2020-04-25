package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.dao.MypageDao;
import com.kh.mypage.model.vo.Address;
public class MypageService
{
    /**
     * 1. 마이페이지 개인정보 및 회원탈퇴 시 비밀번호 확인
     * @author Taek
     * @param m     -> 회원 아이디, 비밀번호
     * @return      -> 조회한 결과 갯수
     */
    public int pwdCheck(Member m)
    {
        Connection conn = getConnection();
        int result = new MypageDao().pwdCheck(conn, m);
        close(conn);
        return result;
    }
    
    /**
     * 2. 회원 탈퇴
     * @author Taek
     * @param userId    --> 현재 접속중인 회원 아이디
     * @return          --> 회원상태 컬럼 변경 여부
     */
    public int deleteMember(String userId)
    {
        Connection conn = getConnection();
        
        int result = new MypageDao().deleteMember(conn, userId);
        
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
     * 3. 회원정보 수정
     * @author Taek 
     * @param m     --> 회원이 입력한 데이터
     * @return      --> 회원 수정 결과 리턴
     */
    public int updateMember(Member m)
    {
        Connection conn = getConnection();
        
        int result = new MypageDao().updateMember(conn, m);
        
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
     * 4_1. 배송지관리 - 추가
     * @author Taek
     * @param a     --> 배송지 테이블에  데이터 담을 객체
     * @return      --> 추가 성공 여부
     */
    public int insertAddress(Address a)
    {
        Connection conn = getConnection();
        
        int result = new MypageDao().insertAddress(conn, a);
        
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
     * 4_2. 배송지 리스트 조회
     * @author Taek
     * @param userId    --> 접속한 회원 아이디
     * @return          --> 주소 리스트
     */
    public ArrayList<Address> listAddress(String userId)
    {
        Connection conn = getConnection();
        
        ArrayList<Address> list = new MypageDao().listAddress(conn, userId);
                
        close(conn);
        
        return list;
    }
    
    
    /**
     * 4_3. 배송지 삭제
     * @author Taek
     * @param userId    --> 사용자 아이디
     * @return          --> 삭제 여부 리턴
     */
    public int deleteAddress(String userId)
    {
        Connection conn = getConnection();
        
        int result = new MypageDao().deleteAddress(conn, userId);
        
        close(conn);
        
        return result;
    }
    
    /**
     * 4_4. 기본배송지 변경
     * 
     * @param userId    --> 사용자 아이디
     * @return          --> 기본 배송지 변경 여부
     */
    public int defaultAddress(String userId)
    {
        Connection conn = getConnection();
        
        int result = new MypageDao().defaultAddress(conn, userId);
        
        close(conn);
        
        return result;
    }
    
}
