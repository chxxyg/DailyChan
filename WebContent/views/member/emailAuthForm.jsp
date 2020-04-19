<%@page import="com.kh.member.controller.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = (String)request.getAttribute("code");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>이메일 인증</title>
<style>
	#auth_form_outer
	{
		width: 480px;
		height: 300px;
		display: block;
	}
	#auth_form_outer > p
	{
		text-align: center;
		font-weight: bold;
		font-size: 30px;
		color: #f7702e;
	}
	#auth_input > p
	{
		text-align: center;
		font-weight: bold;
		font-size: 17px;
		color: black;
	}
	#auth_form
	{
		border: 1px solid black;
		width: 300px;
		height: 150px;
		margin: auto;
	}
	#auth_input
	{
		width: 100%;
		height: 100%;
	}
	#auth_form p
	{
		width: 200px;
		height: 15px;
		display: block;
		margin : 20px auto 5px ;
	}
	#auth_form input
	{
		width: 180px;
		height: 50px;
		display: block;
		margin : 30px auto 10px;
		font-size: 30px;
		text-align: center;
	}
	#auth_btn_box
	{
		width: 220px;
		height: 50px;
		display: block;
		padding: 10px;
		margin: auto;
	}
	.auth_btn
	{
	    width: 80px;
	    height: 30px;
	    background: #f7702e;
	    text-align: center;
	    margin: 0px 10px;
	    color: white;
	    border:0;
	    cursor: pointer;
	}
</style>
</head>
<body>
	<div id="auth_form_outer">
	<p>이메일 인증</p>
	<form id="auth_form" action="<%= request.getContextPath()%>/emailAuth.me" method="post">
		<div id="auth_input">
			<p>인증번호를 입력해주세요.<p>
			<input type="text" name="emailAuth" id="emailAuth" size="10">
		</div>
		<div id="auth_btn_box">
			<button class="auth_btn" id="auth_btn1" type="button" onclick="window.close();">취소</button>
			<input type="hidden" value="success" id="auth_success">
			<button class="auth_btn" id="auth_btn2" type="button">인증</button>
		</div>
	</form>
	<br>
	</div>
	
	<script>
		$("#auth_btn2").click(function(){
			if($("#emailAuth").val() == "<%=code%>")
			{
				alert("이메일 인증 완료");
				$("#auth_success", opener.document).val("success");
				self.close();
			}
			else
			{
				alert("이메일 인증 실패");		
			}
		});
	</script>
</body>
</html>