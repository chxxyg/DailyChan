<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eventMainPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

	<table id="eventWrap">
        <tr>
            <td colspan="3" style="font-size: 50px; font-weight: 600; text-align: center;">EVENT</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 70px;"></td>
        </tr>
    </table>

    <div class="eventInnerWrap">
        <table class="eventInnerTable">
            <tr>
                <td rowspan="2"><a href="<%= request.getContextPath() %>/eDetail1.pro"><img class="eventImg" src="<%= request.getContextPath() %>/resources/eventImg/eventImg1.jpg"></a></td>
                <td><a href="<%= request.getContextPath() %>/eDetail1.pro" style="text-decoration: none;"><div class="eventName">신규 회원을 위한 더블 쿠폰 혜택</div></a></td>
            </tr>
            <tr>
                <td>
                    <div class="eventInfo">첫 구매를 앞둔 신규 회원분들에게 무료배송 & 첫 구매 5000원 할인 혜택을 드립니다. 지금 바로 쿠폰 다운로드하세요!</div>
                    <div class="eventDate">2020-01-01 ~ 2020-12-31</div>
                </td>
            </tr>
        </table>
    </div>

    <div class="eventInnerWrap">
        <table class="eventInnerTable">
            <tr>
                <td rowspan="2"><a href="<%= request.getContextPath() %>/eDetail2.pro"><img class="eventImg" src="<%= request.getContextPath() %>/resources/eventImg/eventImg2.jpg"></a></td>
                <td><a href="<%= request.getContextPath() %>/eDetail2.pro" style="text-decoration: none;"><div class="eventName">오늘 요리사는 나야 나!</div></a></td>
            </tr>
            <tr>
                <td>
                    <div class="eventInfo">요리 못해도 걱정하지 마세요. 데일리찬이 도와드릴게요.<br>구매 시 할인되는 쿠폰도 놓치지 마세요!</div>
                    <div class="eventDate">2020-01-01 ~ 2020-12-31</div>
                </td>
            </tr>
        </table>
    </div>
        
    <div class="eventInnerWrap" style="margin-bottom: 100px;">
        <table class="eventInnerTable">
            <tr>
                <td rowspan="2"><a href="<%= request.getContextPath() %>/eDetail3.pro"><img class="eventImg" src="<%= request.getContextPath() %>/resources/eventImg/eventImg3.jpg"></a></td>
                <td><a href="<%= request.getContextPath() %>/eDetail3.pro" style="text-decoration: none;"><div class="eventName">씻고, 볶고, 맛보고, 즐기고!</div></a></td>
            </tr>
            <tr>
                <td>
                    <div class="eventInfo">요리하는 즐거움을 데일리찬 쿠킹박스로 만나보세요.<br>구매 시 할인되는 쿠폰도 놓치지 마세요!</div>
                    <div class="eventDate">2020-01-01 ~ 2020-12-31</div>
                </td>
            </tr>
        </table>
    </div>

<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>