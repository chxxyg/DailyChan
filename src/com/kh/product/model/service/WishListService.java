package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.WishListDao;
import com.kh.product.model.dto.WishListDto;


public class WishListService
{
    public int countWishList(String memberId, String proCode)
    {
        Connection conn = getConnection();
        int count = new WishListDao().countWishList(conn, memberId, proCode);
        close(conn);
        
        return count;
    }
    public int insertWishList(String memberId, String proCode)
    {
        Connection conn = getConnection();
        int result = new WishListDao().insertWishList(conn, memberId, proCode);
        
        if(result > 0)
        {
            commit(conn);
        }
        else
        {
            rollback(conn);
        }
        
        close(conn);
        
        return result;
    }
    
    public int deleteWishList(String proCode, String memberId)
    {
        Connection conn = getConnection();
        int result = new WishListDao().deleteWishList(conn, proCode, memberId);
        
        if(result > 0)
        {
            commit(conn);
        }
        else
        {
            rollback(conn);
        }
        close(conn);
        return result;
    }
    
    public ArrayList<WishListDto> selectWishList(String memberId)
    {
    	Connection conn = getConnection();
    	
    	ArrayList<WishListDto> list = new WishListDao().selectWishList(conn, memberId);
    	
    	close(conn);
    	
    	return list;
    }
}
