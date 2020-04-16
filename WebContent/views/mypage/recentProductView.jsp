<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 마이페이지 틀 */
	.mypageOuter{
	    width:1000px;
	    margin:auto;
		box-sizing:border-box;
	    padding-top:70px;
	}
	.mypageOuter a{
	    text-decoration:none;
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
	
	/* 최근 본 상품 */
	.recentProductViewWrap{
		width:800px;
		height:1300px;
		margin:50px 0px 0px 450px;
	}
	.recentProductViewWrap>span{
		font-size:12px;
		margin-left:15px;
	}
	
	/* 최근 본 상품 테이블*/
	.recentProduct{
		margin:25px 0px 0px 5px;
	}
	.recentProduct, .recentProduct tr{
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
		border-collapse: collapse;
	}
	.recentProduct th{
		font-size:13px;
		background:#f5f5f5;
	}
	.recentProduct td{
		font-size:12px;
	}
	.recentProduct a{text-decoration:none;}
	#recentProduct_td1{
		padding:15px 0px 15px 0px;
	}
	#recentProduct_td1>img{
		float:left;
		margin-left:15px;
	}
	#recentProduct_td1>div{
		width:230px;
		text-align:left;
		float:left;
		margin:25px 0px 0px 15px;
	}
	#recentProduct_td1>div>a{
		font-size:13px;
	}
	#recentProduct_td2{padding-left:50px;}
	#shoppingcartBtn{
		width:60px;
		height:20px;
		background:tomato;
		border:none;
		font-size:10px;
		color:white;
		margin-left:100px;
	}
	#shoppingcartBtn:hover{cursor:pointer;}
	
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
			<div><a style="color:rgb(247, 112, 46);" href="">최근 본 상품</a></div>
			<div><a href="">고객 후기</a></div>
			<div><a href="">나의 문의 내역</a></div>
			<div class="myCateFirst">회원정보</div>
			<div><a href="">배송지 관리</a></div>
			<div><a href="">개인정보수정</a></div>
			<div><a href="">회원탈퇴</a></div>
			
		</div>	
    </div>

	<div class="recentProductViewWrap">
		<h3>최근 본 상품</h3>
		<hr>
		<span><b>강보람</b> 님의 최근 본 상품은 <b>4</b>개 입니다. (최대 30개까지 저장됩니다.) </span>
		<table class="recentProduct" width="790px">
			<tr height="35px">
				<th width="490px">제품명</th>
				<th width="150px">제품가격</th>
				<th width="150px">장바구니 담기</th>
			</tr>
			<tr>
				<td id="recentProduct_td1">
					<img src="" width="70px" height="70">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
					</div>
				</td>
				<td id="recentProduct_td2" colspan="2">
					상품이 매진되었습니다.
				</td>
			</tr>
						<tr>
				<td id="recentProduct_td1">
					<img src="" width="70px" height="70">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
					</div>
				</td>
				<td id="recentProduct_td2" colspan="2">
					12,000원
					<button type="button" id="shoppingcartBtn" onclick="cartAgain();">장바구니</button>
				</td>
			</tr>
						<tr>
				<td id="recentProduct_td1">
					<img src="" width="70px" height="70">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
					</div>
				</td>
				<td id="recentProduct_td2" colspan="2">
					12,000원
					<button type="button" id="shoppingcartBtn" onclick="shoppingCart();">장바구니</button>
				</td>
			</tr>
		</table>

	</div>
	
	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>