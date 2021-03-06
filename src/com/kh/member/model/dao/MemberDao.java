package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.Member;


public class MemberDao {

	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String filePath = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public Member loginMember(Connection conn, String userId, String userPwd) {
		
		Member loginUser = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member(
									    rset.getString("member_id"),
									    rset.getString("member_name"),
									    rset.getString("gender"),
										rset.getString("birth"),
										rset.getString("email"),
										rset.getString("phone"),
										rset.getDate("enroll_Date"),
										rset.getString("del_Member_Yn"),
										rset.getDate("del_date"),
										rset.getString("password"),
										rset.getDate("modify_Date"),
										rset.getString("blackList_Yn"),
										rset.getInt("point_Sum"),
										rset.getInt("reported_Num"),
										rset.getString("ref_Member_Id"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}
	
	/**
	 * @author Taek
	 */
	public int idCheck(Connection conn, String userId)
	{
	    int count = 0;
	    PreparedStatement pstmt = null;
	    ResultSet rset = null;
	    String sql = prop.getProperty("idCheck");
	    
	    try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            
            rset = pstmt.executeQuery();
            
            if(rset.next())
            {
                count = rset.getInt(1);
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	    finally
	    {
	        close(rset);
	        close(pstmt);
	    }
	    return count;
	}
	
	
	public int phoneCheck(Connection conn, String phone)
	{
		int count = 0;
	    PreparedStatement pstmt = null;
	    ResultSet rset = null;
	    String sql = prop.getProperty("phoneCheck");
	    
	    try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, phone);
            
            rset = pstmt.executeQuery();
            if(rset.next())
            {
                count = rset.getInt(1);
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	    finally
	    {
	        close(rset);
	        close(pstmt);
	    }
	    return count;
	}
	
	public int emailCheck(Connection conn,String email)
	{
		int count = 0;
	    PreparedStatement pstmt = null;
	    ResultSet rset = null;
	    String sql = prop.getProperty("emailCheck");
	    try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            
            rset = pstmt.executeQuery();
            
            if(rset.next())
            {
                count = rset.getInt(1);
            }
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	    finally
	    {
	        close(rset);
	        close(pstmt);
	    }
	    return count;
	}
	
	public int insertMember(Connection conn, Member m)
	{
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try 
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemberId());
			pstmt.setString(2, m.getMemberName());
			pstmt.setString(3, m.getEmail());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getPassword());
			pstmt.setString(6, m.getRefMemberId());
			
			result = pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
		    close(pstmt);
		}
		
		return result;
	}
	

	/**
	 *  아이디 찾기
	 * @param conn
	 * @param memberName
	 * @param email
	 * @return
	 * 
	 */
	public String searchId(Connection conn, String id_name, String id_email) {
						
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String memberId = null;
		
		
		String sql = prop.getProperty("searchId");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id_name);
			pstmt.setString(2, id_email);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				memberId=rset.getString("MEMBER_ID");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return memberId;
		
	}
	
	/**
	 * 비밀번호 찾기
	 * @param pw_id
	 * @param pw_name
	 * @return
	 */
	public String searchPwd(Connection conn, String pw_id, String pw_name) {
				
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String memberPwd = null;
		
		String sql = prop.getProperty("searchPwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw_id);
			pstmt.setString(2, pw_name);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				memberPwd=rset.getString("PASSWORD");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return memberPwd;
		
	}

	
}