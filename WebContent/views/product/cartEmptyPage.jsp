<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/cartEmptyPage.css">
</head>
<body>

    <table id="cartEmptyWrap">
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
                <table id="cartEmptyInnerWrap">
                    <tr style="background: lightgray; height: 50px; font-size: 20px;">
                        <th style="width: 500px;">상품정보</th>
                        <th style="width: 150px;">판매금액</th>
                        <th style="width: 150px;">수량</th>
                        <th style="width: 200px;">구매금액</th>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table id="emptyWrap">
                                <tr>
                                    <td style="text-align: center;"><img src="<%=contextPath%>/resources/img/warninglogo.png" id="emptyWarningImg"></td>
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
            </td>
        </tr>
    </table>
    
</body>
</html>