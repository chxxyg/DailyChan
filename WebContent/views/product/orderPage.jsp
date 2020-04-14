<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/orderPage.css">
</head>
<body>
    <table id="orderCompleteWrap">
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
                <div id="orderCompleteInfo">
                    <span style="font-size: 30px;">주문 / 결제가 정상적으로 완료되었습니다.</span><br><br>
                    <span style="font-size: 20px;">주문번호 20200414-12345567</span><br><br><br>
                    <div id="orderCompleteInner">
                        <span style="font-size: 20px;"><span>강보람</span>님 배송지정일 5월 1일 금요일에 상품이 배송될 예정입니다.</span><br>
                        <span>데일리찬을 이용해주셔서 감사합니다.</span>


                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <table id="orderCompleteProductWrap">
                    <tr style="background: lightgray; height: 50px; font-size: 20px;">
                        <th style="width: 500px;">상품정보</th>
                        <th style="width: 150px;">판매금액</th>
                        <th style="width: 150px;">수량</th>
                        <th style="width: 200px;">구매금액</th>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table class="orderCompleteProductInnerTable">
                                <tr>
                                    <td><a href=""><img class="orderCompleteProductImg" src=""></a></td>
                                    <td><a href=""><div class="orderCompleteProductName">데일리찬 상품명</div></a></td>
                                    <td><div class="orderCompleteProductPrice">12,000</div></td>
                                    <td>
                                        <div class="orderCompleteProductAmountWrap">
                                            <button class="orderCompleteProductMinusBtn" type="button">-</button>
                                            <span class="orderCompleteProductAmount">60</span>
                                            <button class="orderCompleteProductPlusBtn" type="button">+</button>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="orderCompleteProductTotalPrice">720,000 원</div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>