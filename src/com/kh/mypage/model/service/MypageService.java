package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.dao.MypageDao;
public class MypageService
{
    /**
     * @author Taek
     * 1. 마이페이지 개인정보 및 회원탈퇴 시 비밀번호 확인
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
}
