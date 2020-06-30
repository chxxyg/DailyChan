package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.product.model.dao.WishListDao;


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
}
