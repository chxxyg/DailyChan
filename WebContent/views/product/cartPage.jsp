<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.ShoppingCart"%>
<%
	ArrayList<ShoppingCart> clist = (ArrayList<ShoppingCart>)request.getAttribute("clist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/cartPage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <div id="cartWrap">
        <div style="text-align: right; font-size: 25px; font-weight: 550; color: gray; padding-bottom: 40px;">
            <span style="color: orange;">01 장바구니</span>
            <span> > </span>
            <span>02 주문하기</span>
            <span> > </span>
            <span>03 결제완료</span>
        </div>
      	<br>
        <h1 style="font-size: 50px; font-weight: 600; text-align: center; padding-bottom: 50px;">장바구니</h1>
        
        <table id="cartProductWrap">
            <tr style="background: lightgray; height: 50px; font-size: 20px;">
                <th colspan="3">상품정보</th>
                <th>판매금액</th>
                <th>수량</th>
                <th>구매금액</th>
            </tr>
            <% if(clist.isEmpty()) { %>
	            <tr>
	                <td colspan="6">
	                    <table id="emptyWrap">
	                        <tr>
	                            <td style="text-align: center;"><img src="<%= request.getContextPath() %>/resources/img/warninglogo.png" id="emptyWarningImg"></td>
	                        </tr>
	                        <tr>
	                            <td style="font-size: 25px; font-weight: 500; text-align: center;">장바구니에 담긴 상품이 없습니다.</td>
	                        </tr>
	                        <tr style="text-align: center;">
	                            <td><button type="button" id="cartMainBtn" onclick="location.href='<%=contextPath%>'">메인으로</button></td>
	                        </tr>
	                    </table>
	                </td>
	            </tr>
            <% }else { %>
	             <% for(ShoppingCart c : clist){ %>
		            
		            <tr height="170">
		                <td width="20"><input type="checkbox" class="cartProductCheck"></td>
		                <td width="160"><a href=""><img class="cartProductImg" src="<%=contextPath%>/resources/attachment_product/<%=c.getrFileName()%>"></a></td>
		                <td width="270"><a href=""><div class="cartProductName"><%=c.getProName() %></div></a></td>
		                <td width="130"><div class="cartProductPrice"><%=c.getPrice() %>원</div></td>
		                <td width="125">
		                    <div class="cartProductAmountWrap">
								<button class="minus" name="change_qty_button" data-role="-" data-cart-seq="0" type="button" title="수량감소">-</button>
								<input name="cart_qty" class="input" id="qty_0" data-cart-seq="0" type="text" maxlength="3" value="<%=c.getQuantity() %>" title="옵션수량입력">
								<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="0" type="button" title="수량증가">+</button>
		                    </div>
		                    <button class="qty_edit" type="button" name="save_qty_button" data-cart-seq="2" title="수량수정">수정</button>
		                </td>
		                <td width="150">
		                    <div class="cartProductTotalPrice">720,000 원</div>
		                </td>
		            </tr>
	            <% } %>
            <% } %>
        </table>
                <table id="cartTotalCheckWrap">
                    <tr>
                        <td><input type="checkbox" id="cartTotalCheck"><label for="cartTotalCheck" id="cartTotalCheckLabel">전체 선택</label></td>
                        <td><button type="button" id="cartDeleteBtn">선택 상품 삭제</button></td>
                        <td><div id="cartDeliveryInfo">30,000원 이상 무료 배송</div></td>
                    </tr>
                </table>
                <table id="cartTotalPriceWrap">
                    <tr style="height: 50px; font-size: 20px;">
                        <th colspan="2" style="width: 300px;">총 상품 금액</th>
                        <th style="width: 300px;">배송비</th>
                        <th colspan="2" style="width: 400px;">총 결제 예정 금액</th>
                    </tr>
                    <tr style="height: 100px; text-align: center;">
                        <td style="width: 280px; font-size: 30px;">
                            <div id="cartProductTotalPrice">720,000원</div>
                        </td>
                        <td style="font-size: 30px;">+</td>
                        <td style="width: 280px; font-size: 30px;">
                            <div id="cartDeliveryPrice">3,000 원</div>
                        </td>
                        <td style="font-size: 30px;">=</td>
                        <td style="width: 400px; font-size: 35px; font-weight: 550;">
                            <div id="cartProductTotalPrice">723,000원</div>
                        </td>
                    </tr>
                </table>
            <td style="text-align: right;">
                <button type="button" id="cartSelectedOrder">선택 상품 주문</button>
                <button type="button" id="cartAllOrder">전체 상품 주문</button>
            </td>
    </div>
    
    <script>
    	$(function(){
    		$(".minus").click(function(){
    			var q = Number($(this).next().val());
    			var new = q - 1;
    			
    			$(this).next().val(new);
    			
    		});
    		
    		
    	});
    
    </script>
    

<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>