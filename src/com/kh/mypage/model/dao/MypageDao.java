package com.kh.mypage.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MypageDao
{
    private Properties prop = new Properties();
    
    public MypageDao()
    {
        String filePath = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
        
        try {
            prop.load(new FileReader(filePath));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public int pwdCheck(Connection conn, Member m)
    {
        int result = 0;
        
        
        return result;
    }
}
