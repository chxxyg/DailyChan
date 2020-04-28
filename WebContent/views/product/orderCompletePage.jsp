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
                        <span style="font-size: 20px;"><span style="color: orange; font-weight: 550; font-size: 22px;"></span>님 배송지정일 <span style="color: orange; font-weight: 550; font-size: 22px;">5월 1일 금요일</span>에 상품이 배송될 예정입니다.</span><br>
                        <span style="font-size: 16px;">데일리찬을 이용해주셔서 감사합니다.</span><br><br>
                        <span style="font-size: 16px;">휴대전화</span>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 16px;"><a href="">010-7777-2222</a></span><br>
                        <span style="font-size: 16px;">주소</span>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 16px;">[00777] 서울틀별시 강남구 테헤란로 14길 6 남도빌딩</span>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <button type="button" id="ocMainBtn">계속 쇼핑하기</button>
                <button type="button" id="ocOrderBtn">주문 내역 보기</button>
            </td>
        </tr>
    </table>
    
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
    <script type="text/javascript">
		
    </script>
</body>
</html>