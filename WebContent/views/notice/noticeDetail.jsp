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
<title>공지사항 내역</title>
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
					<td>번호</td>
					<td colspan="1"><%=n.getNoticeBoardNo()%></td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="2"><%= n.getNoticeTitle()%></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><%= n.getNoticeDate() %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="4"><p><%= n.getNoticeContent()%></p></td>
				</tr>
			</table>

		</div>
	</div>

<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>