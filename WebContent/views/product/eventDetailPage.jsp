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
<link rel="stylesheet" href="../../resources/css/eventDetailPage.css">
</head>
<body>
    <table id="eventDetailWrap">
        <tr>
            <td colspan="3" style="font-size: 50px; font-weight: 600; text-align: center;">EVENT</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 70px;"></td>
        </tr>
        <tr>
            <td>
                <div id="eventDetailLabel">
                    <span id="eventDetailTitle">데일리찬 이벤트 제목 쏼라쏼라 마넌할인~</span>
                    <a href=""><img id="eventDetailShare" src="<%=contextPath%>/resources/img/sharelogo_black.png"></a>
                    <br><br>
                    <span id="eventDetailDate">2000-01-01 ~ 2020-12-31</span>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <img id="eventDetailImg" src="">
            </td>
        </tr>

    </table>
</body>
</html>