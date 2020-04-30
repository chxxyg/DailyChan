<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.member.model.vo.Member"%>
<%@page import="com.kh.inquiry.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list"); 
	Member loginUser4 = (Member) session.getAttribute("loginUser"); 

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상담내역</title>
</head>
<style>
body {
	width: 1500px;
	margin: auto;
}

.outer {
	width: 1200px;
	min-height: 1000px;
	height: auto;
	margin: auto;
}

talbe.noti_tbl {
	border: 3px solid #f0eded;
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

tbody tr {
	border-bottom-style: 1px solid;
	height: 28px;
	font-size: 12px;
}

tbody tr td {
	text-align: center;
}

table.noti_tbl {
	border: 3px solid #f0eded;
}

td#i_1 {
	border-right-style: ridge;
	border-bottom-style: ridge;
	height: 30px;
}

td#i_2 {
	border-right-style: ridge;
	border-bottom-style: ridge;
	height: 30px;
}

td#i_3 {
	border-right-style: ridge;
	border-bottom-style: ridge;
	height: 30px;
}

td.emphasis {
	border-bottom-style: ridge;
	height: 35px;
}

#i_1, #i_2, #i_3 {
	border-right-style:;
}

#q_1, #q_2, #q_3 {
	border-right-style: ridge;
	font-size: 14px;
	height:35px;
	font-weight:500;
}
#q_4{
font-size: 14px;
height:35px;
font-weight:500;

}
.noti_tbl>tbody>tr:hover {
	background-color: rgba(236, 142, 34, 0.089);
	cursor: pointer;
}


</style>
<body>


<%@ include file="../common/mainHeader.jsp"%>
<%@ include file="../common/mainSideBar.jsp"%>
<%@ include file="../notice/leftCategory.jsp"%>

<div class="outer">

		<!-- loginUser의 정보를 담아야 함 -->
		<div class="outer_1">
		<h2>1:1상담내역</h2>
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
					<!-- 원래 -->
						<% for(int i = 0; i < list.size(); i++) {%>
						  <tr>
							<td id="i_1"><%=list.get(i).getInquiryType()%></td>
							<td id="i_2"><%=list.get(i).getInquiryContent()%></td>
							<td id="i_3"><%=list.get(i).getInquiryCreateDate()%></td>
							
							<% if (list.get(i).getInquiryFileYn() == null){ %>
			                  <td class="emphasis" style="color:#E56D29;"> 미답변</td>
			                <% }else{ %>
			                  <td class="emphasis">답변완료</td>
			                <%} %>  
						</tr> 
						<% } %>
						
					</tbody>
				</table>

			</div>

		</div>

	</div>
	<br><br><br><br>

<%@ include file="../common/mainFooter.jsp"%>
</body>
</html>