<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	String msg = (String)request.getAttribute("msg");

	boolean saveId = false;
	String userIdSaved = "";
	Cookie[] cookies = request.getCookies();	
	

	if(cookies != null){
		for(Cookie c : cookies){
			if("saveId".equals(c.getName())){
				userIdSaved = c.getValue();
				saveId = true;
			}
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>

.outer{
border:1px solid orangred;
width:500px;
height:700;
margin:auto;
	        
}

.login{
    border: 1px solid black;
    width: 400px;
    height: 630px; 
}

#tit{
    font-weight: bold;
    font-size: 25px;
    text-align: center;
    margin-top:60px;
   
}
#userId{
    margin-top:40px;
}

#userId, #pwd{

    width:360px ;
    height: 44px;
    margin-left: 50px;
    
}
#loginBtn{
    width:360px ;
    height: 44px;
    margin-left: 50px;
    background-color: rgb(238, 98, 5);
    color: white;
    cursor: pointer;
    font-weight:400;
}
#idSaveCheck{
    margin-left: 50px;
    margin-top:11px;
}

#joinup{ 
		width:360px ;
   	 	height: 44px;
        margin-left: 50px;
        margin-top:30px;
        color: hsl(28, 100%, 50%);
        cursor: pointer;
        font-weight:800;
}
.bt_set{
	margin-left:70px;
	margin-top:10px;
}
#no_mem{
	margin-left:60px;
	border:none;
	background:white;
	font-size:14px;
}
#find_mem{
	border:none;
	background:white;
	font-size:14px;

}

</style>
<title>Insert title here</title>
</head>
<body>
	<script>
	$(function(){
		var message = "<%=msg%>";
		if(message != "null"){
			alert(message);
		}
	});
	</script>
<div class="outer">
 <div class="login-box">
            
       	<div id="tit">
       		<h2>로그인</h2>
       	</div>
        
        <div>
            <form id="loginLayerForm" method="post" action="<%= contextPath%>/login.me">
				<!-- 쿠기 적용 전 -->
                <input name="userId" id="userId" type="text" placeholder="아이디" maxlength="50"
                 	required  value="<%= saveId ? userIdSaved : "" %>">																									<br><br>
                <input name="userPwd" id="pwd" type="password" placeholder="비밀번호" maxlength="20" required>																												<br><br>
                <button id="loginBtn" type="submit" onclick="inputLogin();">로그인</button><br>
       	</div>
        
	        	<!-- 쿠키 적용 후 -->
	        	<input type="checkbox" id="idSaveCheck" name="saveId" <% if(saveId){ %> checked="checked"<%} %>>아이디 저장
	        
	        
	        
	        
	        
			<%-- <input type="text" name="userId" id="userId" value="<%= saveId ? userIdSaved : "" %>"> --%>
			</form>
            <br><br>
            <button id="joinup" type="submit" onclick="enrollForm();">신규 회원가입</button>
            <br><br>
  

       <div class="bt_set">
			<button id="find_mem" type="submit" onclick="findMem();">아이디/비밀번호찾기</button>
       </div>
    </div>
</div>

	<script>
		function inputLogin() {
			
			if(document.getElementById("userId").value == "")
			{	
				alert("아이디를 입력해주세요");
				userId.focus();
				return false;
				
			}if(document.getElementById("pwd").value == "")
			{	
				alert("비밀번호를 입력해주세요");
				pwd.focus();
				return false;
			}
		}

		
		function enrollForm() {
			opener.parent.location = "<%=contextPath%>/enrollForm.me";			
			window.close();
		}
		
		// 아이디/비밀번호 찾기
		function findMem() {
			opener.parent.location="<%=contextPath%>/find.me";			
			window.close();
		}
			
		// 비회원 주문조회
		function nonMemOrd() {
				opener.parent.location="<%=contextPath%>/nonOrd.od";			
				window.close();
			}
		
	</script>

</body>
</html>