package com.kh.mypage.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;
import com.kh.mypage.model.vo.Address;

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
    
    public int updateMember(Connection conn, Member m)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("updateMember");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, m.getMemberName());
            pstmt.setString(2, m.getGender());
            pstmt.setString(3, m.getBirth());
            pstmt.setString(4, m.getEmail());
            pstmt.setString(5, m.getPhone());
            pstmt.setString(6, m.getPassword());
            pstmt.setString(7, m.getMemberId());
            
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
    
    public int insertAddress(Connection conn, Address a)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("insertAddress");
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, a.getMemberId());
            pstmt.setString(2, a.getAddressName());
            pstmt.setString(3, a.getZipCode());
            pstmt.setString(4, a.getAddress());
            pstmt.setString(5, a.getAddressDetail());
            pstmt.setString(6, a.getPhone());
            pstmt.setString(7, a.getAddressDefault());
            
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
    
    public ArrayList<Address> listAddress(Connection conn, String userId)
    {
        ArrayList<Address> list = new ArrayList<>();
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        String sql = prop.getProperty("listAddress");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            
            rset = pstmt.executeQuery();
            
            while(rset.next())
            {
                list.add(new Address(rset.getInt("ADDRESS_NO"),
                                     rset.getString("MEMBER_ID"),
                                     rset.getString("ADDRESS_NAME"),
                                     rset.getString("ZIPCODE"),
                                     rset.getString("ADDRESS"),
                                     rset.getString("ADDRESS_DETAIL"),
                                     rset.getString("PHONE"),
                                     rset.getString("ADDRESS_DEFAULT")
                                    )
                        );
            }
            
        }
        catch (SQLException e )
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally
        {
            close(pstmt);
            close(rset);
        }
        
        
        return list;
    }
    
    public int deleteAddress(Connection conn, String userId)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("deleteAddress");
        
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
    
    
    public int defaultAddressY(Connection conn, String userId, int index)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("defaultAddressY");
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setInt(2, index);
            
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
    
    public int defaultAddressN(Connection conn, String userId, int index)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("defaultAddressN");
        System.out.println(index);
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setInt(2, index);
            
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
    
    public int updateAddress(Connection conn, Address a, int index)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("updateAddress");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, a.getAddressName());
            pstmt.setString(2, a.getZipCode());
            pstmt.setString(3, a.getAddress());
            pstmt.setString(4, a.getAddressDetail());
            pstmt.setString(5, a.getPhone());
            pstmt.setString(6, a.getAddressDefault());
            pstmt.setString(7, a.getMemberId());
            pstmt.setString(8, a.getMemberId());
            pstmt.setInt(9, index);
            
            
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
