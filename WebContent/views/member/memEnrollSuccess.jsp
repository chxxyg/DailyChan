<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 회원가입 성공</title>
<style>
	.succsess_outer
	{
		    /* position: relative; */
	    min-height: 480px;
	    padding: 120px 0;
	    background: #f5f5f5;
	    text-align: center;
	    margin: auto;
	    margin-top: 20px;
	    width: 1000px;
	    height: 600px;
	}
	#succsess_content
	{
		width: 560px;
	    min-height: 600px;
	    margin: 0 auto 37px;
	    padding: 0 54px;
	    border: 1px solid #e4e7ee;
	    background: #fff;
	    text-align: left;
	}
	#succsess_content1
	{
		display: block;
		width: 160px;
	    height: 160px;
	    margin: 80px auto 50px;
		background: url("/dailyChan/resources/img/EnrollSuccess.PNG") no-repeat left 5px;
	}
	#succsess_content2
	{
		text-align: center;
		font-weight: bold;
		font-size: 30px;
	}
	#succsess_content2 > strong{color:#f7702e;}
	#succsess_content3
	{
		margin-top: 30px;
		text-align: center;
		font-size: 16px;
    	color: #8b8b8b;
	}
	#succsess_login
	{
		width: 100px;
		height: 50px;
		margin: 30px auto;
	}
	#succsess_login_btn
	{
		width: 120px;
		height: 100%;
		text-decoration: none;
		border:0;
		cursor: pointer;
		background: #f7702e;
		color: white;
		font-weight: bold;
		font-size: 16px;

	}
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="/views/common/mainHeader.jsp" %>
	
	<!-- sidebar -->
	<%@ include file="/views/common/mainSideBar.jsp" %>


	<div class="succsess_outer">
		<div id="succsess_content">
			<div id="succsess_content1"></div>
			<div id="succsess_content2"><strong>데일리찬</strong> 개인 회원으로 가입되었습니다.</div>
			<div id="succsess_content3">
				데일리찬 고객이 되신 것을 진심으로 환영합니다.<br>
				더욱 더 집밥같은, 더 잘 알고 더 잘하는 데일리찬과 함께 <br>
				더 맛있는 쇼핑 되시기 바랍니다.
			</div>
			<div id="succsess_login">
				<button id="succsess_login_btn" onclick="loginPop();">로그인하기</button>
			</div>
		</div>
	</div>
	
	<script>
            <!-- 로그인 팝업 function -->
			function loginPop(){

	           window.open("<%=contextPath%>/loginPop.me", "로그인팝업창", "width=500, height=700, top = 50, left = 500, location = no");
	        }
	</script>
	<%@ include file="/views/common/mainFooter.jsp" %>
</body>
</html>