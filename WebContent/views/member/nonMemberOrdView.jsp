<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>
  .content1 {
  	background: #f5f5f5;
    width: 1000px;
    height: 1000px;
    margin: auto;
    /* padding-top: 100; */
}

.Non-memebrOrderCheck{
     	width:678px;
     	height:700px;
	    padding: 120px 0;
	    background: white;
	    text-align: center;
	    /* margin-top:70px; */
	    margin-left:150px;
	    border:1px solid black;
}

#Non-memberDelivery{
    text-align:center;
    margin-top: 20px;
    margin-bottom: 50px;
}


#ord_no{
    margin-left: 30px;
    width: 552px;    
    height: 54px;
}
#cell_no{
    width: 552px;    
    height: 54px;    
    margin-left: 30px;
}
#btn_login{
    width:300px;
    margin-left: 30px;
    width: 552px;    
    height: 54px;
    background-color: hsl(28, 100%, 50%);
    color: white;
    cursor: pointer;
    border: 1px solid;
    font-weight:600;
}

#mem-info{
    border: 1px solid darkgray;
    width: 552px;    
    margin-left: 76px;
    background-color: rgba(150, 146, 146, 0.048);
    font-size: 12px;
    margin-bottom:15px;
    text-align:left;
}

#joinUp{
    margin-left: 30px;
    width: 552px;    
    height: 54px;
    color:hsl(28, 100%, 50%);
    background-color: white;
    border: 1.5px solid hsl(28, 100%, 50%);
    font-size:16px;

}
#joinUp a{
    text-decoration:none;
    color:black;
    font-weight:500;
}

#login{
    margin-left: 30px;
    width: 552px;    
    height: 54px;
    background-color: white;
    border: 1.5px solid gray;
    font-size:16px;
    font-weight:500;
}

</style>
</head>
<body>
<%@ include file="../common/mainHeader.jsp" %>
<%@ include file="../common/mainSideBar.jsp" %>
<div class="content1">
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
                <li>비회원 주문/배송 조회 가능 기간은 배송완료일로부터 30일 입니다.</li><br>
                <li>주문 후 30일이 경과한 경우 혹은, 주문번호/상담신청번호가 생각나지 않으시면 고객센터(1234-5678)으로문의해주세요.</li>
            </ul>

        </div>
        <br><br>
        
        <form>
            <button id="joinUp" type="submit"><a href="<%=contextPath%>/enrollForm.me">신규 회원가입</a></button>
            <br><br>
            <button id="login" type="submit" onclick="loginPop();">로그인</button><br><br>
        </form>
        
     </div>
    </div>
 <%@ include file="../common/mainFooter.jsp" %>
 
 <script>
 
	function loginPop(){

        window.open("<%=contextPath%>/loginPop.me", "로그인팝업창", "width=500, height=700, top = 50, left = 500, location = no");
     }
 
 </script>
</body>
</html>