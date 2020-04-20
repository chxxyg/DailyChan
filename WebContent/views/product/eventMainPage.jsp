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
                <td rowspan="2"><a href=""><img class="eventImg" src=""></a></td>
                <td style="padding-top: 20px;"><a href="" style="text-decoration: none;"><div id="eventName1" class="eventName">데일리찬 이벤트명</div></a></td>
            </tr>
            <tr>
                <td>
                    <div class="eventInfo">이벤트 설명 설명 서얼며어엉 설며어어엉어엉ㅇ어ㅓ어엉어엉어 설명 설명 서얼며어엉 설며어어엉어엉ㅇ어ㅓ어엉어엉어</div>
                    <div class="eventDate">2020-04-10 ~ 2020-12-31</div>
                </td>
            </tr>
        </table>
    </div>

    <div class="eventInnerWrap">
        <table class="eventInnerTable">
            <tr>
                <td rowspan="2"><a href=""><img class="eventImg" src=""></a></td>
                <td style="padding-top: 20px;"><a href="" style="text-decoration: none;"><div id="eventName1" class="eventName">데일리찬 이벤트명</div></a></td>
            </tr>
            <tr>
                <td>
                    <div class="eventInfo">이벤트 설명 설명 서얼며어엉 설며어어엉어엉ㅇ어ㅓ어엉어엉어 설명 설명 서얼며어엉 설며어어엉어엉ㅇ어ㅓ어엉어엉어</div>
                    <div class="eventDate">2020-04-10 ~ 2020-12-31</div>
                </td>
            </tr>
        </table>
    </div>

    <div class="eventInnerWrap">
        <table class="eventInnerTable">
            <tr>
                <td rowspan="2"><a href=""><img class="eventImg" src=""></a></td>
                <td><a href="" style="text-decoration: none;"><div class="eventName">데일리찬 이벤트명</div></a></td>
            </tr>
            <tr>
                <td>
                    <div class="eventInfo">이벤트 설명 설명 서얼며어엉 설며어어엉어엉ㅇ어ㅓ어엉어엉어 설명 설명 서얼며어엉 설며어어엉어엉ㅇ어ㅓ어엉어엉어</div>
                    <div class="eventDate">2020-04-10 ~ 2020-12-31</div>
                </td>
            </tr>
        </table>
    </div>
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>