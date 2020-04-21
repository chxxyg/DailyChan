package com.kh.mypage.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;
import static com.kh.common.JDBCTemplate.*;

public class MypageDao
{
    private Properties prop = new Properties();
    
    public MypageDao()
    {
        String filePath = MemberDao.class.getResource("/sql/myPage/myPage-query.properties").getPath();
        
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
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        String sql = prop.getProperty("pwdCheck");
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, m.getMemberId());
            pstmt.setString(2, m.getPassword());
            
            rset = pstmt.executeQuery();
            
            if(rset.next())
            {
                result = rset.getInt(1);
            }
        }
        catch (SQLException e )
        {
            e.printStackTrace();
        }
        finally
        {
            close(rset);
            close(pstmt);
        }
        
        
        return result;
    }
    
    public int deleteMember(Connection conn, String userId)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("deleteMember");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            
            result = pstmt.executeUpdate();
        }
        catch (SQLException e )
        {
            e.printStackTrace();
        }
        finally
        {
            close(pstmt);
        }
        
        return result;
    }
}
