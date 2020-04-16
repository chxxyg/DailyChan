<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용 약관</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/agreementPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>


    <table id="agreeWrap">
        <tr>
            <td>
                <table class="agreeBtns">
                    <tr>
                        <td><a href=""><div id="agreeBtnA1" class="agreeBtn">서비스 이용약관</div></a></td>
                        <td><a href=""><div id="agreeBtnB1" class="agreeBtn">개인 정보처리 방침</div></a></td>
                        <td><a href=""><div id="agreeBtnC1" class="agreeBtn">email 무단 수집 거부</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><img id="agreeImg1" src=""></td>
        </tr>
        <tr>
            <td>
                <table class="agreeBtns">
                    <tr>
                        <td><a href=""><div id="agreeBtnA2" class="agreeBtn">서비스 이용약관</div></a></td>
                        <td><a href=""><div id="agreeBtnB2" class="agreeBtn">개인 정보처리 방침</div></a></td>
                        <td><a href=""><div id="agreeBtnC2" class="agreeBtn">email 무단 수집 거부</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><img id="agreeImg2" src=""></td>
        </tr>
        <tr>
            <td>
                <table class="agreeBtns">
                    <tr>
                        <td><a href=""><div id="agreeBtnA3" class="agreeBtn">서비스 이용약관</div></a></td>
                        <td><a href=""><div id="agreeBtnB3" class="agreeBtn">개인 정보처리 방침</div></a></td>
                        <td><a href=""><div id="agreeBtnC3" class="agreeBtn">email 무단 수집 거부</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><img id="agreeImg3" src=""></td>
        </tr>
    </table>

<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>