<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String msg = (String)session.getAttribute("msg");
	Member loginUser = (Member)session.getAttribute("loginUser");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데일리찬</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>


</script>
</head>
<body>
	<%@ include file="views/common/mainHeader.jsp" %>
	<%@ include file="views/common/mainSideBar.jsp" %>
	<%@ include file="views/common/mainBody.jsp" %>
	<%@ include file="views/common/mainFooter.jsp" %>	
	
	<!-- 로그인 폼 영역 -->
	
	
	
	
	
</body>
</html>