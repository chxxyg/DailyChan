package com.kh.orderDelivery.model.service;

import com.kh.orderDelivery.model.dao.OrderDeliveryDao;
import com.kh.orderDelivery.model.vo.OrderDelivery;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

public class OrderDeliveryService
{
    /**
     * 1. 주문 배송조회 입력
     * @param od    --> 주문 정보 데이터
     * @return      --> 디비 입력 결과
     */
    public int insertOrder(OrderDelivery od)
    {
        Connection conn = getConnection();
        
        int result = new OrderDeliveryDao().insertOrder(conn, od);
        
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
