<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kh.notice.model.vo.Notice, java.util.ArrayList"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
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

.sub_cont h3 {
	margin: 0 0 15px;
	font-size: 21px;
	font-weight: 800;
	line-height: 1;
	color: #000;
	float: left;
}

.noti_tbl {
	width: 860px;
	height: 719px;
	margin: 30px 0 0;
	float: left;
}

.noti_tbl thead th {
	height: 42px;
	padding: 0 10px;
	border-top: 1px solid #222;
	background: #f4f4f4;
	color: #333;
}

table {
	width: 100%;
	min-width: 100%;
	max-width: none;
	table-layout: fixed;
	border-spacing: 0;
	border-collapse: collapse;
	border-color: grey;
}

tbody tr {
	border-top: 1px solid grey;
	border-bottom: 1px solid grey;
	border-collapse: collapse;
}
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>
	<%@ include file="leftCategory.jsp"%>
	<div class="outer">


		<div id="cst_content" class="sub_cont">

			<h3>공지사항</h3>

			<!-- 관리자로 로그인하면 작성하기 버튼 뜸 -->
			<%-- <% if(loginUser != null && loginUser.getMemberId().equals("admin")){ %>
			<button
				onclick="location.href='<%= contextPath %>/<!-- 공지사항 작성 서블릿 연결해주기 -->';">작성하기</button>
			<% } %> --%>

			<table class="noti_tbl">
				<colgroup>
					<col style="width: 120px;">
					<col>
					<col style="width: 146px;">
					<col style="width: 121px;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">날짜</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>

				<!--  반복문 돌리기 -->
				<tbody>
					<!-- <tr height="10px">
						<td class="title"><a class="nNum">20200331</a><br></td>
						<td id="de">
							<div>
								<input type="hidden" class="" value="">
								<a class="nTitle"><b>제목</b></a><br>
							</div>
						</td>
						<td>날짜</td>
						<td>조회수</td>
					</tr> -->

					<!--<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">날짜</th>
						<th scope="col">조회수</th> -->


					<% if (list.isEmpty()) {//리스트가 비어있을 경우 %>
					<tr>
						<td colspan="5">존재하는 공지사항이 없습니다.</td>
					</tr>
					<% } else { %>
						<% for (Notice n : list) { %>
							<tr>
								<td><%=n.getNoticeBoardNo()%></td>
								<td><%=n.getNoticeTitle()%></td>
								<td><%=n.getNoticeDate()%></td>
								<td><%=n.getNoticeCount()%></td>
							</tr>
						<%}%>
					<%}%>
				</tbody>
			</table>
			<br> <br>
		</div>
	</div>


	<script>
	$(function(){
		$("#left_04").css("color", "rgb(247, 112, 46)");
	});
	
	<%-- $(function(){
		$(".noti_tbl>tbody>tr").click(function(){
			//console.log("클릭");
			
			// 현재 클릭했을 때의 해당 공지사항 번호
			var nno = $(this).children().eq(0).text();
			
			// 쿼리스트링을 이용해서 전달값 전달
			location.href= "<%=contextPath%>/noticeList.no?nno=" + nno;
			});
		}); --%>
	</script>

	<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>