<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String target = request.getParameter("target");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#inputPwd
	{
		margin: 50px 0px 0px 450px;
    	width: 800px;
    	height: 1000px;
	}

</style>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	<div id="inputPwd">
	<h3>
		<% if(target.equals("updateMember")){%>
			개인정보수정
		<% }else{ %>
			회원탈퇴
		<% } %>
	</h3>
	<hr>
		<div>
			본인확인
			<hr>
			<p>
				개인정보 수정을 위해서는 본인 확인이 필요합니다.<br>
				로그인 비밀번호를 다시 한번 입력해 주세요.
			</p>
		</div>
		<div>
			<input type="password">
		</div>
		<div>
			<button>확인</button>
		</div>
	</div>
	
	
	<%@ include file="../../views/common/mainFooter.jsp" %>
	
</body>
</html>