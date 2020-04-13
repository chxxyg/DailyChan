<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>

.Non-memebrOrderCheck{
    border:1px solid grey;
    height: 700px;
    width: 500px; 
    background-color: white;
    color: black;
}

#Non-memberDelivery{

    text-align:center;
    margin-top: 30px;
    margin-bottom: 50px;
}


#ord_no{
    margin-left: 50px;
    width: 360px;    
    height: 40px;
}
#cell_no{
    width: 360px;    
    height: 40px;      
    margin-left: 50px;
}
#btn_login{
    width:300px;
    margin-left: 50px;
    width: 360px;    
    height: 60px;
    background-color: hsl(28, 100%, 50%);
    color: white;
    cursor: pointer;
    border: 1px solid;
    
}

#mem-info{
    border: 1px solid darkgray;
    width: 360px;
    margin-left: 50px;
    background-color: rgba(150, 146, 146, 0.048);
    font-size: 12px;
}

#joinUp{
    margin-left: 50px;
    height:50px;
    width:360px;
    color:hsl(28, 100%, 50%);
    background-color: white;
    border: 1px solid hsl(28, 100%, 50%);
    font-size:16px;
}
#login{
    margin-left: 50px;
    height:50px;
    width:360px;
    background-color: white;
    border: 1px solid gray;
    font-size:16px;
}

</style>
</head>
<body>
   <div class="Non-memebrOrderCheck">
            
        <h2 id="Non-memberDelivery">비회원 주문조회</h2>
        <div>
            <form id="Non-memberDeliveryLayerForm" method="post">

                <input name="ord_no" id="ord_no" type="" placeholder="주문번호를 입력해 주세요." maxlength="50" required><br><br>
                <input name="cell_no" id="cell_no" type="number" placeholder="주문자 전화번호를 입력해주세요" maxlength="20" required><br><br>
                <button id="btn_login" type="submit" onclick="">조회하기</button><br><br>
        
            </form>

        </div>

        <div id="mem-info">
            <ul>
                <li>비회원 주문/배송 조회 가능 기간은 배송완료일로부터<br>
                    30일 입니다.</li><br>
                <li>주문 후 30일이 경과한 경우 혹은, 주문번호/상담신청<br>
                    번호가 생각나지 않으시면 고객센터(1234-5678)으로<br>
                    문의해주세요.</li>
            </ul>

        </div>
        <br><br>
        <form>
            <button id="joinUp" type="submit">신규 회원가입<a href=""></a></button>
            <br><br>
            <button id="login" type="submit" onclick="">로그인</button><br><br>
        </form>
        
     </div>
 
</body>
</html>