<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String MEMBERID = String.valueOf(session.getAttribute("memberId"));

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
.login_box_id_find{
   
    border: 1px solid rgba(128, 128, 128, 0.306);
    width: 452px;
    height: 519px;
    background:white;
    
    
}
.login_box_id_find{

   margin-left:0px;
}
#loginMemId{
	
	/* border:1px solid green; */
	width:350px;
	height:300px;
	margin:auto;
	border-top:1px solid gray;
}
.login_set h2{
	padding:30px 0px 30px 0px;
}


#find-info{
	/* border:1px solid yellow; */
	height:20px;
	width:340px;
	font-weight:800;
	font-size:20px;
	margin:auto;
	margin-top:50px;
	color:#999;

}
#loginMemId_result{
/* 	border:1px solid blue; */
	width:250px;
	height:50px;
	margin:auto;
	margin-top:25px;
	background: white;
	text-align:center;

}
#loginMemId_result p{
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
			<table class="find_box">
				<div class="login_box_id_find">
					<div class="login_set" id="login_set_id">
					<h2 align="center">아이디 찾기</h2>
						<div id="loginMemId">
							<div id="find-info">회원님의 아이디를 찾았습니다.</div>
							<div id="loginMemId_result" style="color: hsl(28, 100%, 50%);">
								<p><%= MEMBERID %></p>
								
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

</script>
</body>
</html>