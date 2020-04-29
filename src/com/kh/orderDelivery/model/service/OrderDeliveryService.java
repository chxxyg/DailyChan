package com.kh.orderDelivery.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.member.model.vo.Coupon;
import com.kh.orderDelivery.model.dao.OrderDeliveryDao;
import com.kh.orderDelivery.model.vo.InsertOrder;
import com.kh.orderDelivery.model.vo.OrderDelivery;

public class OrderDeliveryService
{
    /**
     * 1. 주문 배송조회 입력
     * @param od    --> 주문 정보 데이터
     * @return      --> 디비 입력 결과
     */
    public int insertOrder(InsertOrder io)
    {
        Connection conn = getConnection();
        
        int result = new OrderDeliveryDao().insertOrder(conn, io);
        
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
    
    /**
     * 3. 결제 확인 정보 리스트
     * @param orderNo   --> 주문 번호
     * @param userId    --> 아이디
     * @return
     */
    public OrderDelivery orderList(String orderNo, String userId)
    {
        Connection conn = getConnection();

        OrderDelivery od = new OrderDeliveryDao().orderList(conn, orderNo, userId);
        
        close(conn);
        
        return od;

    }
    
    public ArrayList<Coupon> couponList(String userId)
    {
        Connection conn = getConnection();
        
        ArrayList<Coupon> list = new OrderDeliveryDao().couponList(conn, userId);
        
        close(conn);
        
        return list;
    }
}
