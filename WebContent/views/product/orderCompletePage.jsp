<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String orderNo = request.getParameter("orderNo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/orderCompletePage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="ocWrap">
        <tr>
            <td style="text-align: right; font-size: 25px; font-weight: 550; color: gray; padding-bottom: 40px;">
                <span>01 장바구니</span>
                <span> > </span>
                <span>02 주문하기</span>
                <span> > </span>
                <span style="color: orange;">03 결제완료</span>
            </td>
        </tr>
        <tr>
            <td style="font-size: 50px; font-weight: 600; text-align: center; padding-bottom: 50px;">결제완료</td>
        </tr>
        <tr>
            <td>
                <div id="ocInfo">
                    <span style="font-size: 30px;">주문 / 결제가 정상적으로 완료되었습니다.</span><br><br>
                    <span style="font-size: 20px;"><a>주문번호 <%=orderNo %></a></span><br><br><br>
                    <div id="ocInner">
                        <span style="font-size: 20px;">
                        	<span style="color: orange; font-weight: 550; font-size: 22px;"><%=loginUser.getMemberName() %></span>님 배송지정일 
                        	<span id="delivery_date" style="color: orange; font-weight: 550; font-size: 22px;"></span>에 상품이 배송될 예정입니다.
                       	</span>
                       	
                       	<br>
                        
                        <span style="font-size: 16px;">데일리찬을 이용해주셔서 감사합니다.</span><br><br>
                        <span style="font-size: 16px; font-weight: bold;">휴대전화</span>&nbsp;&nbsp;&nbsp;
                        <%
                        	String prePhone = loginUser.getPhone();
                        	String phone = "";
                        	if(prePhone.length() == 11)
                        	{
                        	    phone = prePhone.substring(0, 3) + "-";
                        	    phone += prePhone.substring(3, 7) + "-";
                        	    phone += prePhone.substring(7);
                        	}
                        	else if(prePhone.length() == 10)
                        	{
                        	    phone = prePhone.substring(0, 3) + "-";
                        	    phone += prePhone.substring(3, 6) + "-";
                        	    phone += prePhone.substring(6);
                        	}
                        %>
                        <span id="phone" style="font-size: 16px;"><%=phone %></span><br>
                        <span style="font-size: 16px; font-weight: bold;">주소</span>&nbsp;&nbsp;&nbsp;
                        <span id="address" style="font-size: 16px;"></span>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <button type="button" id="ocMainBtn" onclick="location.href='<%=contextPath%>'">계속 쇼핑하기</button>
                <button type="button" id="ocOrderBtn" onclick="location.href='<%=contextPath%>/orderList.my'">주문 내역 보기</button>
            </td>
        </tr>
    </table>
    
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
    <script>
		$("document").ready(function(){
			
		    $.ajax({
				url: "<%=contextPath%>/orderDeliveryList.od",
				type: "POST",
				data: {orderNo :"<%=orderNo %>", userId : "<%=loginUser.getMemberId()%>"},
				success: function(obj) 
				{
					console.log(obj);
					$("#address").html(obj.address);

					var prePhone = obj.emergency_contact;
					$("phone").html(phone);
					
					var date = "";
					var date1 = obj.delivery_date;
					date = date1.substring(5,7) + "월" ;
					date += date1.substring(8) + "일" ;
					$("#delivery_date").html(date);
					
				},
				error: function(e)
				{
					console.log("ajax통신실패");
				}
			});
		});
    
    </script>
</body>
</html>