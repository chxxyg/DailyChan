<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#footer{
		width: 1002px;
	    height: 200px;
	    margin:auto;
	    margin-top:50px;
	}
	a{
	    color: black;
	    text-decoration: none;
	}
	div{
	    /* border: 1px solid black; */
	    box-sizing: border-box;
	    height: 200px;
	    width: 1004px;
	}
	#left-box {
	    width: 200px;
	    height: 200px;
	    float: left;
	}
	#logo{
	    width: 200px;
	    margin-top: 40px;
	}
	#center-box {
	    width: 600px;
	    text-align: center;
	    margin: 0 auto;
	    height: 200px;
	    font-size: 12px;
	    float:left;
	}
	#center_1{
	    width: 600px;
	    height: 60px;
	    padding: 30PX;
	    margin-bottom: 0px;
	}
	#center_2{
	    width: 600px;
	    height: 140px;
	}
	#p1{
		width: 600px;
	    margin-top: 0px;
	}
	#p2{
	    width: 600px;
	    text-align: center;
	    margin-top: 0px;
	}
	
	#right-box {
	    width: 200px;
	    height: 200px;
	    float: left;
	    text-align: right;
	}
	#r1{
	    font-weight: bold;
	    font-size: 16px;
	    text-align: center;
	    height: 10px;
	    margin-top:25px;
	}
	#r2{
	    font-weight: bold;
	    font-size: 20px;
	    text-align: center;
	    margin-bottom: 0px;
	}
	#r3{
	    text-align: center;
	    font-size: 12px;
	}
</style>
</head>
<body>
        <div id="footer">
            <!-- footer 왼쪽 로고-->
            <div id='left-box'><a href="">
                <img id="logo" src="<%=request.getContextPath()%>/resources/img/brandlogo.png">
                </a>
            </div>
            <!-- footer 중안부 이용약관웅앵 -->
            <div id='center-box'>
                <div id="center_1">
                    <a href="">이용약관</a>&nbsp; 
                    <a href="">개인정보취급방침 </a>&nbsp; 
                    <a href="">인재채용</a>&nbsp; 
                    <a href="">고객센터</a>&nbsp; 
                </div>
                <div id="center_2">
                    <p id="p1">
                    	본사 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 3F, 4F, 5F | 상호 : (주)데일리찬 대표자 : 오경택 | <br>
                    	사업자등록번호 : 123-45-67890| 통신판매업신고 : 제2020-서울강남-0331호 | 개인정보보호책임자 : 이지혜 | <br>
						TEL : 1234-5678 | FAX : 02-1111-2222 | 이메일 : fotd0323@gmail.com<br>
                    </p>
                    <p id="p2">Copyright © 1998-2020 KH Information Educational Institute All Right Reserved</p>
            </div>
          </div>
           <!-- footer 오른쪽 고객센터-->
            <div id='right-box'>
                <p id="r1"> 고객센터 </p>
                <p id="r2"> 1234-5678</p>
                <p id="r3">
                   	 평일 : 9:00 ~ 18:00<br>
                   	 점심시간 : 12:00 ~ 13:00<br>
                    (토/일/공휴일은 휴무) <br>
                </p>
            </div>
          
          
        </div>
</body>
</html>