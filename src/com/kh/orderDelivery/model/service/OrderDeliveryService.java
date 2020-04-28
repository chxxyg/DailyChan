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
    
    /**
     * 2_1. 결제 성공 시 구매 상태 변경
     * @param orderNo   --> 결제 완료된 주문 번호
     * @param userId    --> 회원 아이디
     * @return          --> update 여부
     */
    public int modifyStatus(String orderNo, String userId)
    {
        Connection conn = getConnection();
        
        int result = new OrderDeliveryDao().modifyStatus(conn, orderNo, userId);
        
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
    
    /**
     * 2_2. 결제 성공 시 불필요한 데이터 제거
     * @param orderNo   --> 결제 완료된 주문 번호
     * @param userId    --> 회원 아이디
     * @return          --> update 여부
     */
    public int deleteOrder(String orderNo, String userId)
    {
        Connection conn = getConnection();
        
        int result = new OrderDeliveryDao().deleteOrder(conn, orderNo, userId);
        
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
    
    
    /**
     * 2_3. 결제 완료된 장바구니 상태 변경
     * @author Taek
     * @param orderNo   --> 결제 완료된 주문 번호
     * @param userId    --> 회원 아이디
     * @return          --> update 여부
     */
    public int modifyCartStatus(String orderNo, String userId)
    {
        Connection conn = getConnection();
        
        int result = new OrderDeliveryDao().modifyCartStatus(conn, orderNo, userId);
        
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
