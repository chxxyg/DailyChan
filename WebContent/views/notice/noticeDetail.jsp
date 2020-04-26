<%@page import="com.kh.notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Notice n = (Notice)request.getAttribute("n");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>
	<%@ include file="leftCategory.jsp"%>

	<style>
.outer {
	width: 1000px;
	height: auto;
	float: left;
}

.sub_cont {
	float: left;
	width: 860px;
	padding: 0 0 75px 30px;
	/* 	border:1px solid blue; */
	margin-top: 20px;
}
</style>
<body>

	<div class="outer">
		<br>
		<div id="cst_content" class="sub_cont">

			<table class="noti_tbl" border="1">
				<tr>
					<td>제목</td>
					<td colspan="3"><%= n.getNoticeTitle()%></td>
				</tr>
				<tr>
					<td>작성일</td>
					<td><%= n.getNoticeDate() %></td>
			</tr>
				<tr>
					<td colspan="4">내용</td>
				</tr>
				<tr>
					<td colspan="4"><p><%= n.getNoticeContent()%></p></td>
				</tr>
			</table>


		</div>



	</div>

<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>