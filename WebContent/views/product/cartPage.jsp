<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/cartPage.css">
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
            <tr height="170">
                <td width="20"><input type="checkbox" class="cartProductCheck"></td>
                <td width="160"><a href=""><img class="cartProductImg" src=""></a></td>
                <td width="270"><a href=""><div class="cartProductName">데일리찬 상품명</div></a></td>
                <td width="130"><div class="cartProductPrice">12,000</div></td>
                <td width="125">
                    <div class="cartProductAmountWrap">
                        <button class="cartProductMinusBtn" type="button">-</button>
                        <span class="cartProductAmount">60</span>
                        <button class="cartProductPlusBtn" type="button">+</button>
                    </div>
                </td>
                <td width="150">
                    <div class="cartProductTotalPrice">720,000 원</div>
                </td>
            </tr>
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
                            <td><button type="button" id="cartMainBtn">메인으로</button></td>
                        </tr>
                    </table>
                </td>
            </tr>
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

<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>