<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
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
#id{
    margin-top:40px;
}

#id, #pwd{

    width:400px ;
    margin-left: 50px;
    height: 30px;
}
#loginBtn{
    width:400px ;
    margin-left: 50px;
    height: 40px;
    background-color: rgb(238, 98, 5);
    color: white;
    cursor: pointer;
}
#idSaveCheck{
    margin-left: 50px;
}

#joinup{
        width:400px ;
        margin-left: 50px;
        height: 40px;
        color: hsl(28, 100%, 50%);
        cursor: pointer;
}
.bt_set{
	margin-left:70px;
	margin-top:10px;
}
#no_mem{
	margin-left:60px;
}

</style>
<title>Insert title here</title>
</head>
<body>
 <div class="login-box">
            
        <!-- <button type="button"  onclick="unBlockUI('layer_login');return false;">닫기</button> -->
       	<div id="tit">
       		<h2>로그인</h2>
       	</div>
        
        <div>
            <form id="loginLayerForm" method="post">

                <input name="userId" id="id" type="text" placeholder="아이디" maxlength="50" required><br><br>
                <input name="userPwd" id="pwd" type="password" placeholder="비밀번호" maxlength="20" required><br><br>
                <button id="loginBtn" type="submit" onclick="loginPop">로그인</button><br>
        
            </form>
        </div>
        <input type="checkbox" id="idSaveCheck">아이디 저장

            <br><br>
            <button id="joinup" type="submit">신규 회원가입<a href=""></a></button>
            <br><br>
  

       <div class="bt_set">

        <a href="" id="find_mem">아이디/비밀번호 찾기</a>
        <a href="" id="no_mem">비회원 주문조회</a>
       </div>
    </div>


</body>
</html>