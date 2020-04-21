 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String PASSWORD = String.valueOf(session.getAttribute("memberPwd"));
%>
<style>
 	.content{
 	position: relative;
    width: 1000px;
    min-width: 1000px;
    margin: auto;
    padding: 0;
}
.wrap_box{

    min-height: 480px;
    padding: 120px 0;
    background: #f5f5f5;
    text-align: center;
    margin: 0;
  
}

table{
    margin-left: 35px;    
}

.login_box_pwd_find{
    border: 1px solid rgba(128, 128, 128, 0.306);
    width: 452px;
    height: 519px;
    background:white;
    float:left;
}

#loginMemPwd{
	
	width:350px;
	height:300px;
	margin:auto;
	border-top:1px solid gray;
}

#find-info2{
	height:20px;
	width:340px;
	font-weight:800;
	font-size:20px;
	margin:auto;
	margin-top:50px;
	color:#999;

}
#loginMemPwd_result{
	width:250px;
	height:50px;
	margin:auto;
	margin-top:25px;
	background: white;
	text-align:center;

}
#loginMemPwd_result p{
	font-size:30px;
	text-align:center;
	padding:10px;
	margin:auto;
}

#loginBtn{
    width:250px ;
    height: 56px;
    margin:auto;
    margin-top:50px;
    background-color: rgb(238, 98, 5);
    color: white;
    cursor: pointer;
    font-weight:400;
}

</style>


</head>
<body>

<%@ include file="../common/mainHeader.jsp" %>
<%@ include file="../common/mainSideBar.jsp" %>

<div class="content">
		<div class="wrap_box">
		
		
				
			<table class="pwd_box">
				<div class="login_box_pwd_find">
					<div class="login_set" id="login_set_pwd">
					<h2 align="center">비밀번호 찾기</h2>
						<div id="loginMemPwd">
							<div id="find-info2">회원님의 비밀번호를 찾았습니다.</div>
							<div id="loginMemPwd_result" style="color: hsl(28, 100%, 50%);">
								<p><%= PASSWORD %></p>
								
							</div>
							<button id="loginBtn" type="submit" onclick="loginPop();">로그인</button>
						</div>
						
					</div>
				</div>
			</table>

		</div>
		
</div>
<%@ include file="../common/mainFooter.jsp" %>

<script>


<!-- 로그인 팝업 function -->
	function loginPop(){

   	window.open("<%=contextPath%>/loginPop.me", "로그인팝업창", "width=500, height=700, top = 50, left = 500, location = no");
}

</body>
</html> 