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
<style>

body{
	width:1500px;
	height:1000px;
	margin:auto;
}
.outer {
/* 	border:1px solid red; */
	width: 860px;
	height: 800px;
	float: left;
}

.noti_tbl, .noti_tbl *{
	padding: 10px;
	
}

.sub_cont {
	float: left;
	width: 760px;
	padding: 0 0 75px 30px;
	margin-top: 20px;

	
}
#content{
	background-color:#f9f9f9;
	text-align:center;
}
.btns{
	cursor:hover;
	float:bottom;
}
#cst_content.sub_cont{
	margin-left:30px;
	height:1000px;
}
</style>

<body>

	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>
	<%@ include file="leftCategory.jsp"%>

	<div class="outer">
		<br>
		<div id="cst_content" class="sub_cont">

			<table class="noti_tbl" style="width: 790px; border: 1px solid lightgray;">
					<tr>
						<th id="n1" style="width:30px;">번호</th>
						<td id="n2" style="width:20px;"><%= n.getNoticeBoardNo()%></td>
						<th id="n3" style="width:30px;">제목</th>
						<td id="n4" style="width:250px;"><%= n.getNoticeTitle()%></td>
						<th id="n5" style="width:40px;">작성일</th>
						<td id="n6" style="width:60px;"><%= n.getNoticeDate() %></td>
					</tr>
					<tr>
						<td id="content" colspan=6 style="height:600px;"><p><%= n.getNoticeContent()%></p></td>
					</tr>
			</table>
			<br>
			
			
		</div>
		
	<div class="btns" align="center">
		<button onclick="location.href='<%=contextPath%>/noticeList.no?currentPage=1'">목록으로</button>
	</div>
	</div>

<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>
