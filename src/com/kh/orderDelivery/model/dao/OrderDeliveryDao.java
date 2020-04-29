package com.kh.orderDelivery.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Coupon;
import com.kh.orderDelivery.model.vo.InsertOrder;
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
    
    public int insertOrder(Connection conn, InsertOrder io)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("insertOrder");
        
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, io.getOdOrderNo());
            pstmt.setString(2, io.getOdMemberId());
            pstmt.setString(3, io.getOdMemberName());
            pstmt.setString(4, io.getOdPhone());
            pstmt.setString(5, io.getOdEmail());
            pstmt.setString(6, io.getOdRecipient());
            pstmt.setString(7, io.getOdEmergencyContact());
            pstmt.setString(8, io.getOdAddress());
            pstmt.setString(9, io.getOdDeliveryRequest());
            pstmt.setInt(10, Integer.parseInt(io.getOdUseCoupon()));
            pstmt.setInt(11, Integer.parseInt(io.getOdUsePoint()));
            pstmt.setInt(12, Integer.parseInt(io.getOdPaymentAmount()));
            pstmt.setInt(13, Integer.parseInt(io.getDeliveryCharge()));
            
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
    
    public ArrayList<Coupon> couponList(Connection conn, String userId)
    {
        ArrayList<Coupon> list = new ArrayList<>();
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        String sql = prop.getProperty("couponList");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            
            rset = pstmt.executeQuery();
            
            while(rset.next())
            {
                list.add(new Coupon(rset.getString("COUPON_CODE"),
                                    rset.getString("COUPON_NAME"),
                                    Integer.parseInt(rset.getString("COUPON_CONDITION")),
                                    rset.getInt("COUPON_PRICE")
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
            close(rset);
            close(pstmt);
        }
        
        return list;
                
    }
}
