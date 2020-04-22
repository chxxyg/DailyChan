<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String target = request.getParameter("target");
    String msg1 = (String)request.getAttribute("msg1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인 확인</title>
</head>
<style>
	#inputPwd
	{
		position: relative;
	    float: left;
	    width: 860px;
	    height: 700px;
	    padding: 0 0 40px;
	}
	.mys_cfm
	{
	    overflow: hidden;
	    clear: both;
	    width: 360px;
	    margin: 65px auto 0 auto;
	}
	.mys_cfm h3 
	{
	    height: 40px;
	    padding-bottom: 12px;
	    margin-bottom: 16px;
	    border-bottom: 1px solid #333;
	    font-size: 24px;
	    line-height: 40px;
	    color: #333;
	    text-align: center;
	}
	.mys_cfm .txt 
	{
	    margin-bottom: 34px;
	    font-size: 14px;
	    line-height: 20px;
	    color: #666;
	    text-align: center;
	}

.mys_cfm .inp {

    display: block;
    padding-bottom: 5px;
}
.mys_cfm .input {
    width: 100%;
    height: 44px;
    padding: 0 15px;
    border: 1px solid #dcdcdc;
    font-size: 14px;
    line-height: 36px;
    color: #333;
    letter-spacing: 0;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
}
.mys_cfm .btn {
    height: 56px;
    padding-top: 15px;
}
.mys_cfm .btn button {
    display: block;
    width: 100%;
    height: 56px;
    background: #333;
}

button {
    display: block;
    overflow: visible;
    margin: 0;
    padding: 0;
    cursor: pointer;
    border: 0;
    background: none;
}
.mys_cfm .btn button b {
    display: inline-block;
    height: 56px;
    font-size: 16px;
    color: #fff;
    line-height: 56px;
    font-weight: bold;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var message = "<%=msg1%>";
	if(message != "null"){
		alert(message);
	}
});                                  
</script>
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
		<form id="confirmForm" action="<%=contextPath %>/getPwdConfirm.me" method="post">
			<input type="hidden" name="target" value="<%=target%>">
			<input type="hidden" name="userId" value="<%=((Member)session.getAttribute("loginUser")).getMemberId()%>">
			<div class="mys_cfm">
				<h3>본인확인</h3>
				<div class="txt">개인정보 수정을 위해서는 본인 확인이 필요합니다.<br>로그인 비밀번호를 다시 한번 입력해 주세요.</div>
					<span class="inp"><input type="password" id="m_pw" class="input" name="temp_pw" placeholder="비밀번호"></span>	
				<div class="btn"><button id="saveBtn"><b>확인</b></button></div>
			</div>
		</form>
	</div>
	<%@ include file="../../views/common/mainFooter.jsp" %>
	
</body>
</html>