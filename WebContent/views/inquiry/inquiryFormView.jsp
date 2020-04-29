<%@page import="com.kh.inquiry.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

	Inquiry i = (Inquiry)request.getAttribute("i");
	Member loginUser3 = (Member) session.getAttribute("loginUser"); 

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1상담 작성 완료된 폼</title>
</head>
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
	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>
	<%@ include file="../notice/leftCategory.jsp"%>
	<%@ include file="../notice/noticeSearch.jsp"%>

	<h2><1:1상담></h2>
	
<!-- loginUser의 정보를 담아야 함 -->
	<div class="outer">
		<br>
		<div id="cst_content" class="sub_cont">

			<table class="noti_tbl" border="1">
				<tr>
					<th>상담유형</th>
					<td colspan="2"><%= i.getInquiryType() %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3"><%= i.getInquiryContent()%></td>
				</tr>
				<tr>
					<th>문의날짜</th>
					<td colspan="1"><%= i.getInquiryCreateDate()%></td>
				</tr>
				<tr>
					<th>답변상태</th>
					<td colspan="2"><%= i.getInquiryResponseYn()%></td>
				</tr>
			</table>

		</div>

	</div>
	
	
	<script>
	
	<%-- 
	 $(".noti_tbl>tr").click(function(){
		var ino = $("this").children().text();
		console.log(ino);
		location.href="<%=request.getContextPath()%>/form.in?ino=" + ino;

	}); 
	 --%>
	
	</script>
	<%@ include file="../common/mainFooter.jsp"%>
	
	
	
</body>
</html>