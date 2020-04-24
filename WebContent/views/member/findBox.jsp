<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String MEMBERID = String.valueOf(session.getAttribute("memberId"));
	String PASSWORD = String.valueOf(session.getAttribute("memberPwd"));

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비밀번호 찾기</title>
<style>
.content {
	position: relative;
	width: 1000px;
	height: 700px;
	min-width: 1000px;
	margin: auto;
	padding: 0;
}

.wrap_box {
	height: 700px;
	background: #f5f5f5;
	text-align: center;
	margin: 0;
}

.login_box_id_find, .login_box_pw_find {
	border: 1px solid rgba(128, 128, 128, 0.306);
	width: 452px;
	height: 519px;
	background: white;
	float: left;
	margin-top: 35px;
}

.login_box_id_find {
	margin-left: 10px;
}

.login_box_pw_find {
	margin-left: 10px;
}

#login_set_id, #login_set_pw {
	width: 350px;
	height: 270px;
	margin-left: 50px;
}

#id_name, #pw_id {
	width: 360px;
	height: 44px;
	margin-left: 0px;
	margin-top: 40px;
}

#pw_name, #id_email {
	width: 360px;
	height: 44px;
	margin-left: 0px;
	margin-top: 20px;
}

#btn_find_id, #btn_find_pw {
	margin-top: 40px;
	width: 360px;
	height: 44px;
	margin-left: 0px;
	background-color: hsl(28, 100%, 50%);
	color: white;
	cursor: pointer;
}

.find_info {
	border: 1px gray;
	width: 380px;
	margin-top: 10px;
	margin-left: -20px;
	font-size: 12px;
}

.login_box_pwd_find {
	width: 452px;
	height: 519px;
	background: white;
	float: left;
}

#loginMemId {
	/* border:1px solid green; */
	width: 350px;
	height: 300px;
	margin: auto;
	border-top: 1px solid gray;
}

#loginMemPwd {
	width: 350px;
	height: 300px;
	margin: auto;
	border-top: 1px solid gray;
}

.login_set h2 {
	padding: 30px 0px 30px 0px;
}

#find-info {
	/* border:1px solid yellow; */
	height: 20px;
	width: 340px;
	font-weight: 800;
	font-size: 20px;
	margin: auto;
	margin-top: 50px;
	color: #999;
}

#find-info2 {
	height: 20px;
	width: 340px;
	font-weight: 800;
	font-size: 20px;
	margin: auto;
	margin-top: 50px;
	color: #999;
}

#find-info_1 {
	height: 20px;
	width: 340px;
	font-size: 12px;
	margin: auto;
	margin-top: 10px;
	background-color: #f9f9f9;
	color: #333;
	padding: 10px 14px;
}

#loginMemId_result {
	/* 	border:1px solid blue; */
	width: 250px;
	height: 50px;
	margin: auto;
	margin-top: 25px;
	background: white;
	text-align: center;
}

#loginMemId_result p {
	font-size: 30px;
	text-align: center;
	padding: 10px;
	margin: auto;
}

#loginMemPwd_result {
	width: 250px;
	height: 50px;
	margin: auto;
	margin-top: 25px;
	background: white;
	text-align: center;
}

#loginMemPwd_result p {
	font-size: 30px;
	text-align: center;
	padding: 10px;
	margin: auto;
}

#loginBtn {
	width: 250px;
	height: 56px;
	margin: auto;
	margin-top: 50px;
	background-color: rgb(238, 98, 5);
	color: white;
	cursor: pointer;
	font-weight: 400;
}

.find_box td {
	border: 1px solid blue;
}
</style>

</head>
<body>
	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>

	<div class="content">
		<div class="wrap_box">
			<div class="find_box">


				<div class="login_box_id_find idFind_before">
					<h2 align="center">아이디 찾기</h2>

					<!-- 아이디찾기 폼 -->
					<div id="login_set_id">

						<form name="findIdForm" action="<%= contextPath %>/idFind.me"
							id="findIdForm" method="post">
							<input type="hidden" name="login_id" value=""> <input
								type="text" id="id_name" name="id_name" class="login_input"
								maxlength="10" placeholder="개인: 이름 입력" required><br>
							<input type="text" id="id_email" name="id_email" class="login_input" maxlength="50" placeholder="이메일" required>

							<br>
							<button class="btn_login" type="button" id="btn_find_id">
								<em>아이디 찾기</em>
							</button>
						</form>

						<div class="find_info">
							<ul class="list">
								<li>회원가입시 등록한 이름, 이메일 정보를 입력해 주세요.</li>
							</ul>
						</div>
					</div>
				</div>
				
				<!-- 아이디 찾은 후 -->
				<div class="idFind_after">
					<table class="find_box">
						<div class="login_box_id_find">
							<h2 align="center">아이디 찾기</h2>
							<div class="login_set" id="login_set_id2">
								<form name="findIdForm" id="findIdForm2" method="post">

									<div id="loginMemId">
										<div id="find-info">회원님의 아이디를 찾았습니다.</div>
										<div id="loginMemPwd_result"
											style="color: hsl(28, 100%, 50%);">
											<p><%= MEMBERID %></p>
										</div>
										<button id="loginBtn" type="button" onclick="loginPop();">로그인</button>
										<div id="find-info_1">비밀번호를 모르신다면 우측 비밀번호 찾기를 이용해주세요.</div>
									</div>
							</div>

							</form>
						</div>
					</table>
				</div>


				<div class="login_box_pw_find">
					<div class="pwdFind_before">
						<h2 align="center">비밀번호 찾기</h2>
						<form name="findPwForm" action="<%= contextPath %>/pwdFind.me"
							id="findPwForm" method="post">
							<div class="login_type login_set_pw"></div>
							<!-- 비밀번호찾기 폼 -->
							<div class="login_set login_set_pw" id="login_set_pw">

								<input type="text" name="pw_id" id="pw_id" class="login_input"
									maxlength="20" placeholder="아이디" required><br> <input
									type="text" name="pw_name" id="pw_name" class="login_input"
									maxlength="10" placeholder="개인: 이름  입력" required> <br>
								<button class="btn_login" type="submit" id="btn_find_pw">
									<em>비밀번호 찾기</em>
								</button>

								<div class="find_info">
									<ul class="list">
										<li>회원가입시 등록한 아이디, 이름, 이메일 정보를 입력해주세요</li>
									</ul>
								</div>
							</div>

						</form>
					</div>


					<div class="login_box_pwd_find pwdFind_after">
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


				</div>
			</div>
		</div>
	</div>

	<script>
		$(function(){
			$(".idFind_before").show();
			 $(".idFind_after").hide();
			 $(".pwdFind_before").show();
			 $(".pwdFind_after").hide();
		});

		$("#btn_find_id").click(function(){
			var id_name = $("#id_name").val();
			var id_email = $("#id_email").val();
			
			$.ajax({
				url:"/dailyChan/idFind.me",
				data:{"id_name":id_name, "id_email":id_email},
				type:"post",
				success:function(memberId){
					
					if(memberId == null){
						$(".idFind_before").show();
						$(".idFind_after").hide();
						alert("실패");
					}else{
						$(".idFind_after").show();
						$(".idFind_before").hide();
					}
					
				}, error:function(){
					
				}
			})
			
			
			
		});
	
	
		
		$("#btn_find_id").click(function(){
			var pw_id = $("#pw_id").val();
			var pw_name = $("#pw_name").val();
			
			$.ajax({
				url:"/dailyChan/pwdFind.me",
				data:{"pw_id":pw_id, "pw_name":pw_name},
				type:"post",
				success:function(memberPwd){
					
					if(memberPwd == null){
						$(".pwdFind_before").show();
						$(".pwdFind_after").hide();
						alert("실패");
					}else{
						$(".pwdFind_after").show();
						$(".pwdFind_before").hide();
					}
					
				}, error:function(){
					
				}
			})
			
			
			
		});
			
		
		
		function email_check( email ) {
		    
		    var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		    return (email != '' && email != 'undefined' && regex.test(email));
	
		}
	</script>

	<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>