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
	width: 1200px;
	height: 700px;
	margin: auto;
}

.outer_1 {
	/* border:1px solid skyblue; */
	width: 870px;
	height: auto;
	padding: 5px 5px 25px 40px;
	float: left;
	margin-top: 50px;
}

.sub_cont {
	float: left;
	width: 860px;
	padding: 5px 5px 5px 5px;
/* 	border: 1px solid blue; */
	margin-top: 30px;
}

thead tr th {
	text-align: center;
	border-bottom: 1px solid gray;
	background-color: #f4f4f4;
}

thead tr {
	font-size: 13px;
}

tbody tr td {
	text-align: center;
}

.noti_tbl {	
	border: 2px ridge gray; 
}

#i_1, #i_2, #i_3 {
	border-right-style: ridge;
}

#q_1, #q_2, #q_3 {
	border-right-style: ridge;
}
</style>
<body>
	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>
	<%@ include file="../notice/leftCategory.jsp"%>
	<%@ include file="../notice/noticeSearch.jsp"%>

	<div class="outer">
		

		<!-- loginUser의 정보를 담아야 함 -->
		<div class="outer_1">
		<h2>1:1상담</h2>
			<br>
			<div id="cst_content" class="sub_cont">

				<table class="noti_tbl">
					<thead>
						<tr>
							<th id="q_1" style="width: 150px;">상담유형</th>
							<th id="q_2" style="width: 500px;">내용</th>
							<th id="q_3" style="width: 100px;">문의날짜</th>
							<th id="q_4" style="width: 70px;">답변상태</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td id="i_1"><%=i.getInquiryType()%></td>
							<td id="i_2"><%=i.getInquiryContent()%></td>
							<td id="i_3"><%=i.getInquiryCreateDate()%></td>
							
							<% if (i.getInquiryResponseYn()==null){ %>
			                  <td class="emphasis"> 미답변</td>
			                <% }else{ %>
			                  <td class="emphasis">답변완료</td>
			                 <%} %>
						</tr>
					</tbody>
				</table>

			</div>

		</div>

	</div>
	
	<script>
	
	</script>
	
	<%@ include file="../common/mainFooter.jsp"%>
</body>
</html>