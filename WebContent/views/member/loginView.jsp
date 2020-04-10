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
    height: 700px;
    
}

#tit{
    font-weight: bold;
    font-size: 30px;
    text-align: center;
   
}
#id{
    margin-top:40px;
}

#id, #pwd{

    width:300px ;
    margin-left: 50px;
    height: 25px;
}
#loginBtn{
    width:300px ;
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
        width:300px ;
        margin-left: 50px;
        height: 40px;
        color: hsl(28, 100%, 50%);
        cursor: pointer;
}

</style>
<title>Insert title here</title>
</head>
<body>
 <div class="login-box">
            
        <!-- <button type="button"  onclick="unBlockUI('layer_login');return false;">닫기</button> -->
       
        <h2 id="tit">로그인</h2>
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

        <a href="" class="find_mem">아이디/비밀번호 찾기</a>
        <a href="" class="no_mem">비회원 주문조회</a>
       </div>
    </div>


</body>
</html>