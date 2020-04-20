package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.member.model.vo.Member;
import com.kh.mypage.model.dao.MypageDao;
public class MypageService
{
    public int pwdCheck(Member m)
    {
        Connection conn = getConnection();
        int result = new MypageDao().pwdCheck(conn, m);
        
        close(conn);
        return result;
    }
}
