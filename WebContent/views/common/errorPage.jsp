<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String message = (String)request.getAttribute("msg");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<%@ include file="../common/mainHeader.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	
 	<!-- 임시로 지정 -->
<%-- 	<h1 style="color:black">
	<%=  message %></h1>
 --%>
	<script>
		
		window.alert("실패");
		
	</script>



	<%@ include file="../common/mainFooter.jsp" %>
</body>
</html>