<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mypageOuter{
	    width:1000px;
	    margin:auto;
		box-sizing:border-box;
	    padding-top:70px;
	}
	
	/*마이페이지 간략정보 영역 스타일*/
	#mypageBrief{
		width:1004px;
		height:180px;
		box-sizing:border-box;
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
	}
	#deliverySite{
		width:1000px;
		height:30px;
		float:right;
	}
	#deliverySite~div{
		width:250px;
		height:50px;
		margin-top:40px;
		font-size:18px;
		text-align:center;
		font-weight:bold;
		float:left;
	}
	#deliverySite+div{
		font-size:30px;
	}

	#deliverySite img{
		height:20px;
		margin-top:12px;
		margin-right:5px;
		float:right;
	}
	#deliverySite a{
		width:300px;
		height:30px;
		margin-top:15px;
		font-size:11px;
		text-align:left;
	    float:right;
	}
	#deliverySite~div>a{
		color:tomato;
		font-size:18px;
	}
	
	/* 마이페이지 카테고리 영역 스타일 */
	#mypageCategory{
		width:200px;
		height:800px;
		margin-top:30px;
		float:left;
	}
	#mypageCategory>div{
		height:40px;
	}
	#mypageCategory>.myCateFirst{
		margin-top:25px;
		font-size:16px;
		font-weight:bold;
		color:black;
	}
	#mypageCategory>div>a{
		text-align:left;
		font-size:14px;
		font-weight:600;
		color:rgb(102, 102, 102);
		cursor:pointer;
	}
	#mypageCategory>div>a:hover{
		color:rgb(247, 112, 46);
		text-weight:800;
	}
	
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
	
	<div class="mypageOuter">
        <h1 style="text-align:center";>마이페이지</h1>
        <br>
		
		<!-- 마이페이지 간략정보 영역 -->
        <div id="mypageBrief" align="center">
           	<div id="deliverySite">
                <a href="">기본 배송지 정보 넣을 곳</a>
                <img src="../../resources/img/positionlogo.png">
            </div>
			<div>강보람님</div>
			<div>주문/배송<br>	<a href="">0</a>건</div>
			<div>쿠폰<br><a href="">0</a>장</div>
			<div>적립금<br><a href="">0</a>원</div>
                
        </div>
       <br>
       <br>

		<!-- 마이페이지(좌) 카테고리 영역 -->
		<div id="mypageCategory">
			<div class="myCateFirst">주문정보</div>
			<div><a href="">주문/배송 조회</a></div>
			<div><a href="">취소/반품 조회</a></div>
			<div class="myCateFirst">구매혜택</div>
			<div><a href="">쿠폰/적립금 조회</a></div>
			<div class="myCateFirst">활동내역</div>
			<div><a href="">최근 본 상품</a></div>
			<div><a href="">고객 후기</a></div>
			<div><a href="">나의 문의 내역</a></div>
			<div class="myCateFirst">회원정보</div>
			<div><a href="">배송지 관리</a></div>
			<div><a href="">개인정보수정</a></div>
			<div><a href="">회원탈퇴</a></div>
			
		</div>	
    </div>

</body>
</html>