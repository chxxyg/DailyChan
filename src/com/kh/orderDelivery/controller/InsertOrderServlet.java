package com.kh.orderDelivery.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.kh.orderDelivery.model.service.OrderDeliveryService;
import com.kh.orderDelivery.model.vo.OrderDelivery;
/**
 * Servlet implementation class InsertOrderServlet
 */
@WebServlet("/insertOrder.od")
public class InsertOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String jsonData = request.getParameter("jsonData");
	    OrderDelivery od = new OrderDelivery();
	    try
	    {
	        
	        
	        JSONParser jsonParser = new JSONParser();
	        JSONObject jsonObject = (JSONObject)jsonParser.parse(jsonData);
	        
	        od.setOdMemberId((String)jsonObject.get("memberId"));                 // 아이디
	        od.setOdOrderNo((String)jsonObject.get("orderNo"));                    // 주문번호
	        od.setOdMemberName((String)jsonObject.get("memberName"));              // 회원이름
	        od.setOdPhone((String)jsonObject.get("phone"));                        // 전화번호
	        od.setOdEmail((String)jsonObject.get("email"));                        // 이메일
	        od.setOdRecipient((String)jsonObject.get("recipient"));                // 받는사람 이름
	        String prePhone = (String)jsonObject.get("emergencyConcat");
	        String phone = "";
	        if(prePhone.length() == 13)
	        {
	            phone = prePhone.substring(0,3);
	            phone += prePhone.substring(4, 8);
	            phone += prePhone.substring(9);
	        }
	        else
	        {
	            phone = prePhone.substring(0,3);
                phone += prePhone.substring(4, 7);
                phone += prePhone.substring(8);
	        }
	        
	        od.setOdEmergencyContact(phone);    // 비상연락망
	        od.setOdAddress((String)jsonObject.get("address"));                    // 배송지
	        String deliveryRequest = (String)jsonObject.get("deliveryRequest");    // 배송시 요청사항
	        if(deliveryRequest.equals(""))
	        {
	            od.setOdDeliveryRequest("없음");
	        }
	        else
	        {
	            od.setOdDeliveryRequest(deliveryRequest);
	        }
	        
	        String useCoupon = (String)jsonObject.get("useCoupon");                      // 사용 쿠폰 금액
	        if(useCoupon == "")
	        {
	            od.setOdUseCoupon(0);
	        }
	        else
	        {
	            od.setOdUseCoupon(Integer.parseInt(useCoupon));
	        }
	        String usePoint = (String)jsonObject.get("usePoint");                        // 사용 포인트
	        if(usePoint == "")
            {
                od.setOdUsePoint(0);
            }
            else
            {
                od.setOdUsePoint(Integer.parseInt(usePoint));
            }
	        int payAmount = (int)jsonObject.get("payAmount");                      // 총 가격
	        
	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }
	    
	    int result = new OrderDeliveryService().insertOrder(od);
	    
	    response.setCharacterEncoding("utf8");
	    PrintWriter out = response.getWriter();
	    if(result > 0)
	    {
	        out.println("주문조회 입력 성공");
	    }
	    else
	    {
	        out.println("주문조회 입력 실패");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
