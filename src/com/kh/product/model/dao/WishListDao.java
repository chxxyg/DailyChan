package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.dto.WishListDto;
import com.kh.product.model.vo.WishList;

public class WishListDao
{
    private Properties prop = new Properties();
    
    public WishListDao()
    {
        String filePath = ProductDao.class.getResource("/sql/product/wishList-query.properties").getPath();
        try
        {
            prop.load(new FileReader(filePath));
        }
        catch (IOException e )
        {
            e.printStackTrace();
        }
    }
    
    public int countWishList(Connection conn, String memberId, String proCode)
    {
        int count = 0;
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        String sql = prop.getProperty("countWishList");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberId);
            pstmt.setString(2, proCode);
            
            rset = pstmt.executeQuery();
            if(rset.next())
            {
                count = rset.getInt(1);
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
        return count;
    }
    
    public int insertWishList(Connection conn, String memberId, String proCode)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("insertWishList");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberId);
            pstmt.setString(2, proCode);
            
            result = pstmt.executeUpdate();
        }
        catch (SQLException e )
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally 
        {
            close(pstmt);
        }
        
        return result;
    }
    
    public int deleteWishList(Connection conn, String procode, String memberId)
    {
        int result = 0;
        PreparedStatement pstmt = null;
        String sql = prop.getProperty("deleteWishList");
        
        try
        {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberId);
            pstmt.setString(2, procode);
            
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
    
    public ArrayList<WishListDto> selectWishList(Connection conn, String memberId)
    {
    	ArrayList<WishListDto> list = new ArrayList<>();
    	PreparedStatement pstmt = null;
    	ResultSet rset = null;
    	String sql = prop.getProperty("selectWishList");
    	
    	try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				list.add(new WishListDto(
											rset.getString("PRODUCT_CODE"),
											rset.getString("PRODUCT_NAME"),
											rset.getInt("PRODUCT_PRICE"),
											rset.getInt("PRODUCT_STANDARD"),
											rset.getString("FILE_NAME")
									    )
						);
			}
		} catch (SQLException e) {
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
