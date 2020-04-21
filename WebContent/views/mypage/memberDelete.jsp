<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<style>
body
{
	width:1000px; 
	height:2000px;
	margin:auto;
}
.sub_cont {
    position: relative;
    display: block;
    float: left;
    width: 800px;
    height: 1500px;
    padding: 0 0 40px;
}
.mys_wd_txt {
    overflow: hidden;
    clear: both;
    padding: 33px;
    margin-top: 30px;
    margin-bottom: 25px;
    background: #f3f3f3;
}
.mys_wd_txt dt {
    margin-bottom: 33px;
    font-size: 24px;
    line-height: 30px;
    color: #333;
    letter-spacing: -1px;
    text-align: center;
}
.mys_wd_txt dd {
    display: block;
    padding: 33px 0;
    font-size: 13px;
    line-height: 22px;
    color: #767676;
    text-align: center;
    letter-spacing: -1px;
    background: #fff;
}
.mys_wd_txt dd b {
    display: block;
    margin-top: 15px;
    font-size: 18px;
    line-height: 30px;
    color: #f7702e;
}
.mys_btn {
    overflow: hidden;
    clear: both;
    margin-bottom: 50px;
    text-align: center;
}
.mys_btn button.sq {
    height: 56px;
    color: #fff;
    font-weight: bold;
    background: #383a42;
}

.mys_btn button {
    display: inline-block;
    width: 173px;
    margin: 0 4px;
    font-size: 16px;
    line-height: 52px;
    color: #222;
    text-align: center;
    border: 1px solid #dbdbdb;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

	<div id="mys_content" class="sub_cont">
		<h3 class="tit">회원 탈퇴</h3>
		<hr>
		
		<!-- MY MSG. -->
		<div class="mys_wd_txt">
			<dl>
				<dt>데일리찬에서 불편한 점이 있으셨나요?</dt>
				<dd>
					항상 고객님의 손과 발이 되어 최상의 서비스를 제공하도록 노력하겠습니다.<br>
					불편했던 부분이나 문제점이 있으셨다면 데일리찬에 꼭 연락을 주세요.<br>
					데일리찬은 언제든 고객님을 기다리겠습니다. 더욱 나아지는 서비스로 보답 드리겠습니다.
					<b>그간 저희 데일리찬을 사랑해주셔서 고맙습니다.</b>
				</dd>
			</dl>
		</div>
		<!-- //MY MSG. -->

		<!-- //MY WITHDRAWAL -->

		<!-- MY TEXT -->
		<div class="mys_txt">
			<ul>
				<li>잔여 예치금, 미 완결된 주문 및 취소/반품 건이 존재하는 경우 탈퇴가 불가능합니다.</li>
				<li>탈퇴 시 보유하고 계신 적립금, 쿠폰, 회원등급 혜택, 복지포인트는 소멸됩니다.</li>
			</ul>
		</div>
		<!-- //MY TEXT -->
		<form id="inputId" action="<%=contextPath%>/deleteMember.my" method="post">
			<input type="hidden" name="userId" value="<%=request.getParameter("userId")%>">
		</form>
		<!--  BUTTON -->
		<div class="mys_btn">
			<button type="button" id="saveBtn" class="sq">확인</button>
			<button type="button" class="bx" onclick="location.href='/dailyChan/mymain.my'">취소</button>
		</div>
		<!-- //BUTTON -->
	
	</div>
			
				<%@ include file="../../views/common/mainFooter.jsp" %>
			
</body>
	<script>
		$("#saveBtn").click(function(){
			$("#inputId").submit();
		});
	</script>
</html>