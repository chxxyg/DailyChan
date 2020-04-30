
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kh.notice.model.vo.Notice, java.util.ArrayList"%>
<%@page import="com.kh.notice.model.vo.PageInfo"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");

	PageInfo pi = (PageInfo)request.getAttribute("pi");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<style>
body {
	width: 1500px;
	margin: auto;
}

.outer {
	width: 860px;
	height: 1000px;
	float: left;
	margin-left: 25px;
}

.sub_cont {
	width: 860px;
	padding: 0 0 75px 30px;
	margin-top: 50px;
	float: left;
}

.sub_cont h3 {
	margin: 0 0 15px;
	font-size: 21px;
	font-weight: normal;
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
	font-weight: normal;
	font-size: 12px;
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

.notice_p {
	text-align: center;
}

.noti_tbl>tbody>tr:hover {
	background-color: rgba(236, 142, 34, 0.089);
	cursor: pointer;
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
				
				<tbody>
					<% if (list.isEmpty()) {//리스트가 비어있을 경우 %>
					<tr>
						<td colspan="5">존재하는 공지사항이 없습니다.</td>
					</tr>
					<% } else { %>
						<% for (Notice n : list) { %>
							<tr>
								<td><p class="notice_p"><%=n.getNoticeBoardNo()%></p></td>
								<td><p><%=n.getNoticeTitle()%></p></td>
								<td><p class="notice_p"><%=n.getNoticeDate()%></p></td>
								<td><p class="notice_p"><%=n.getNoticeCount()%></p></td>
							</tr>
						<%}%>
					<%}%>
				</tbody>
			</table>
			<br><br>
			<hr>
				<!-- 현재 페이지에 보여질 페이징바 -->
			<div class="pagingArea" align="center">
		
				<% if(currentPage != 1){ %>
				<!-- 맨 처음으로(<<) -->
				<button onclick="location.href='noticeList.no?currentPage=1'"> &lt;&lt; </button>
				
				<!-- 이전 페이지로(<) -->
				<button onclick="location.href='noticeList.no?currentPage=<%=currentPage-1 %>';"> &lt; </button>
				<% } %>
				<% for(int p=startPage; p<=endPage; p++){ %>
					<% if(currentPage != p){ %>
					<button onclick="location.href='noticeList.no?currentPage=<%=p%>';"><%= p %></button>
				
				<% }else{ %>
				<button disabled><%= p %></button>
					<% } %>
				
				<% } %>
				
				<% if(currentPage != maxPage){ %>
	
				<!-- 다음 페이지로(>) -->
				<button onclick="location.href='noticeList.no?currentPage=<%=currentPage+1 %>';"> &gt; </button>
				<!-- 맨 마지막으로(>>) -->
				<button onclick="location.href='noticeList.no?currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			
				<% } %>
			</div>
		</div>
	</div>


	<script>
	$(function(){
		$("#left_04").css("color", "rgb(247, 112, 46)");
	});
	
	 $(function(){
		$(".noti_tbl>tbody>tr").click(function(){
			//console.log("클릭");
			
			// 현재 클릭했을 때의 해당 공지사항 번호
			var nno = $(this).children().eq(0).text();
			
			// 쿼리스트링을 이용해서 전달값 전달
			location.href= "<%=contextPath%>/datail.no?nno=" + nno;
			});
		}); 
	</script>

	<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>