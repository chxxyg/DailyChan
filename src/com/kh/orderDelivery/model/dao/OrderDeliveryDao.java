package com.kh.orderDelivery.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.orderDelivery.model.vo.OrderDelivery;

public class OrderDeliveryDao
{
    private Properties prop = new Properties();
    
    public OrderDeliveryDao()
    {
        String filePath = MemberDao.class.getResource("/sql/orderDelivery/orderDelivery.properties").getPath();
        
        try {
            prop.load(new FileReader(filePath));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public int insertOrder(Connection conn, OrderDelivery od)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("insertOrder");
        
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, od.getOdOrderNo());
            pstmt.setString(2, od.getOdMemberId());
            pstmt.setString(3, od.getOdMemberName());
            pstmt.setString(4, od.getOdPhone());
            pstmt.setString(5, od.getOdEmail());
            pstmt.setString(6, od.getOdRecipient());
            pstmt.setString(7, od.getOdEmergencyContact());
            pstmt.setString(8, od.getOdAddress());
            pstmt.setString(9, od.getOdDeliveryRequest());
            pstmt.setInt(10, od.getOdUseCoupon());
            pstmt.setInt(11, od.getOdUsePoint());
            pstmt.setInt(12, od.getOdPaymentAmount());
            
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
    
    public int modifyStatus(Connection conn, String orderNo, String userId)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("modifyStatus");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, orderNo);
            
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
    
    public int deleteOrder(Connection conn, String orderNo, String userId)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("deleteOrder");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, orderNo);
            
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
    
    public int modifyCartStatus(Connection conn, String orderNo, String userId)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("modifyCartStatus");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, orderNo);
            
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
    
    public OrderDelivery orderList(Connection conn, String orderNo, String userId)
    {
        OrderDelivery od = new OrderDelivery();
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        String sql = prop.getProperty("orderList");
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, orderNo);
            
            rset = pstmt.executeQuery();
            
            if(rset.next())
            {
                od.setOdRecipient(rset.getString("RECIPIENT"));
                od.setOdEmergencyContact(rset.getString("EMERGENCY_CONTACT"));
                od.setOdDeliveryDate(rset.getDate("DELIVERY_DATE"));
                od.setOdAddress(rset.getString("ADDRESS"));
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
        return od;
    }
}
