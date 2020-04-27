package com.kh.orderDelivery.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.orderDelivery.model.vo.OrderDelivery;
import static com.kh.common.JDBCTemplate.*;

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
}
