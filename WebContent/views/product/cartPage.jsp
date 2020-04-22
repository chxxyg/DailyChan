<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.ShoppingCart"%>
<%
	ArrayList<ShoppingCart> clist = (ArrayList<ShoppingCart>)request.getAttribute("clist");
	int sum = 0;
	int delivery = 3000;
	for(ShoppingCart c : clist){
		sum += c.getPrice() * c.getQuantity();
	}
	if(sum>30000 || sum == 0){
		delivery = 0;
	}
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

    <div class="cartWrap">
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
                <th colspan="3" width="430">상품정보</th>
                <th width="150">판매금액</th>
                <th width="125">수량</th>
                <th width="150">구매금액</th>
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
	             	<input type="hidden" id="sum" value="<%=sum%>">
	             	<input type="hidden" id="delivery" value="<%=delivery%>">
		            <input type="hidden" value="<%=c.getProCode()%>">
		            <tr class="find" height="170">
		                <td width="20"><input type="checkbox" class="cartProductCheck"></td>
		                <td width="160"><a href=""><img class="cartProductImg" src="<%=contextPath%>/resources/attachment_product/<%=c.getrFileName()%>"></a></td>
		                <td width="250"><a href=""><div class="cartProductName"><%=c.getProName() %></div></a></td>
		                <td width="150"><span class="cartProductPrice"><%=c.getPrice() %></span> <span>원</span></td>
		                <td width="125">
		                    <div class="cartProductAmountWrap">
								<button class="minus" name="change_qty_button" data-role="-" data-cart-seq="0" type="button" title="수량감소">-</button>
								<input name="cart_qty" class="input" data-cart-seq="0" type="text" maxlength="3" value="<%=c.getQuantity() %>" title="옵션수량입력">
								<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="0" type="button" title="수량증가">+</button>
		                    	<button class="qty_edit" type="button" name="save_qty_button" data-cart-seq="2" title="수량수정">수정</button>
		                    </div>
		                </td>
		                <td width="150">
		                    <span class="productTotalPrice"><%= c.getPrice() * c.getQuantity() %></span> <span>원</span>
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
                    <span class="totalPrice"><%=sum%></span> <span>원</span>
                </td>
                <td style="font-size: 30px;">+</td>
                <td style="width: 280px; font-size: 30px;">
                    <span class="deliveryPrice"><%=delivery%></span> <span>원</span>
                </td>
                <td style="font-size: 30px;">=</td>
                <td style="width: 400px; font-size: 35px; font-weight: 550;">
                    <b><span class="cartTotalPrice"><%=sum+delivery%></span> <span>원</span></b>
                </td>
            </tr>
        </table>
        <div style="text-align: right;">
            <button type="button" id="cartSelectedOrder">선택 상품 주문</button>
            <button type="button" id="cartAllOrder">전체 상품 주문</button>
        </div>
    </div>
    
    <script>
    	$(function(){
    		$(".minus").click(function(){
    			var q = Number($(this).next().val());
    			$(this).next().val(q-1);
    			
    			if(Number($(this).next().val())<1){
    				alert("1개 이상일 경우 주문이 가능합니다.");
    				$(this).next().val(1);
    			}
    		});
    		
    		$(".plus").click(function(){
    			var q = Number($(this).prev().val());
    			$(this).prev().val(q+1);
    			
    			if(Number($(this).prev().val())>10){
    				alert("한 상품 당 10개 이하로 주문이 가능합니다.");
    				$(this).prev().val(10);
    			}
    		});
    		
    		$(".qty_edit").click(function(){
    			var proCode = $(this).parents(".find").prev().val();
    			var qty = $(this).siblings(".input").val();
    			var proPrice = $(this).parents(".find").find(".cartProductPrice").text();
    			
    			var qtyInput = $(this).siblings(".input");
    			var tpSpan = $(this).parents(".find").find(".productTotalPrice");
    			var subTotal = $(".totalPrice");
    			var del = $(".deliveryPrice");
    			var total = $(".cartTotalPrice");
    			
    			var sum = $("#sum").val();
    			var delivery = $("#delivery").val();
    			
    			$.ajax({
    				url:"updateQty.pro",
    				data:{proCode:proCode, qty:qty},
    				type:"post",
    				success:function(){
    					qtyInput.val(qty);
    					tpSpan.text(qty * proPrice);
    					subTotal.text(sum);
    					del.text(delivery);
    					total.text(sum+delivery);
    				}, error:function(){
    					//console.log("ajax통신실패");
    				}
    			});
    		});
    		
    		//안된다고!!!!!!!!!!!!!!!!!!!!!
    		$("#cartTotalCheck").change(function(){
    			if($(this).is(":cheked")){
    				$(".cartProductCheck").prop("checked", true);
    			}else{
    				$(".cartProductCheck").prop("checked", false);
    			}
    			
    		});
    		
    	});
    
    </script>
    

<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>