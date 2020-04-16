<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <table id="cartWrap">
        <tr>
            <td style="text-align: right; font-size: 25px; font-weight: 550; color: gray; padding-bottom: 40px;">
                <span style="color: orange;">01 장바구니</span>
                <span> > </span>
                <span>02 주문하기</span>
                <span> > </span>
                <span>03 결제완료</span>
            </td>
        </tr>
        <tr>
            <td style="font-size: 50px; font-weight: 600; text-align: center; padding-bottom: 50px;">장바구니</td>
        </tr>
        <tr>
            <td>
                <table id="cartProductWrap">
                    <tr style="background: lightgray; height: 50px; font-size: 20px;">
                        <th style="width: 500px;">상품정보</th>
                        <th style="width: 150px;">판매금액</th>
                        <th style="width: 150px;">수량</th>
                        <th style="width: 200px;">구매금액</th>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table class="cartProductInnerTable">
                                <tr>
                                    <td><input type="checkbox" class="cartProductCheck"></td>
                                    <td><a href=""><img class="cartProductImg" src=""></a></td>
                                    <td><a href=""><div class="cartProductName">데일리찬 상품명</div></a></td>
                                    <td><div class="cartProductPrice">12,000</div></td>
                                    <td>
                                        <div class="cartProductAmountWrap">
                                            <button class="cartProductMinusBtn" type="button">-</button>
                                            <span class="cartProductAmount">60</span>
                                            <button class="cartProductPlusBtn" type="button">+</button>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="cartProductTotalPrice">720,000 원</div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="cartTotalCheckWrap">
                    <tr>
                        <td><input type="checkbox" id="cartTotalCheck"><label for="cartTotalCheck" id="cartTotalCheckLabel">전체 선택</label></td>
                        <td><button type="button" id="cartDeleteBtn">선택 상품 삭제</button></td>
                        <td><div id="cartDeliveryInfo">30,000원 이상 무료 배송</div></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
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
            </td>
        </tr>
        <tr>
            <td style="text-align: right;">
                <button type="button" id="cartSelectedOrder">선택 상품 주문</button>
                <button type="button" id="cartAllOrder">전체 상품 주문</button>
            </td>
        </tr>
    </table>

<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>