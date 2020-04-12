<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mypageMainDetail{
		box-sizing:border-box;
		margin:50px 0px 0px 450px;
		width:800px;
		height:600px;
	}
	/* 주문/배송 조회 영역 */
	.myMainOrderList{
		margin-top:30px;
	}
	.myMainOrderList, .myMainOrderList tr{
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-collapse: collapse;
	}
	.myMainOrderList th{
		font-size:13px;
		background:#f5f5f5;
	}
	.myMainOrderList td{
		font-size:12px;
		text-align:center;
	}
	#myMainOrderInfo>img{
		float:left;
		margin:5px 5px 5px 20px;
	}
	#myMainOrderInfo>div{
		width:200px;
		text-align:left;
		float:left;
		margin:20px 0px 0px 10px;
	}
	#myMainOrderInfo>div>a{
		font-size:13px;
	}
	#orderDetailBtn{
		width:60px;
		height:20px;
		background:white;
		border:1px solid black;
		margin-top:2px;
		font-size:9px;
	}
	
	/* 최근 구매한 상품 영역 */
	#recentOrder{
		width:145px;
		height:220px;
		margin:20px 5px 0px 8px;
		float:left;
	}
	#recentOrder>a{
		font-size:13px;
		font-weight:bold;
	}
	#recentOrder>p{
		font-size:12px;
	}
</style>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>

	<div class="mypageMainDetail">
	
		<!-- 주문/배송 조회 영역 -->
		<h3>주문/배송 조회</h3>
		<hr>
		<table class="myMainOrderList">
			<tr height="28px">
				<th width="130px">주문번호/주문일</th>
				<th width="450px">상품정보</th>
				<th width="100px">진행상태</th>
				<th width="100px">학인</th>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200331-1234567</a>
					2020-03-31<br>
					<button id="orderDetailBtn" type="submit" onclick="">상세확인 ></button>
				</td>
				<td id="myMainOrderInfo">
					<img src="" width="70" height="70"></img>
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
				<td>결제완료</td>
				<td>2020-03-31</td>
			</tr>
		</table>
		<table class="myMainOrderList">
			<tr height="28px">
				<th width="130px">주문번호/주문일</th>
				<th width="450px">상품정보</th>
				<th width="100px">진행상태</th>
				<th width="100px">학인</th>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200331-1234567</a>
					20200331<br>
					<button id="orderDetailBtn" type="submit" onclick="">상세확인 ></button>
				</td>
				<td id="myMainOrderInfo">
					<img src="" width="70" height="70"></img>
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
				<td>결제완료</td>
				<td>2020-03-31</td>
			</tr>
		</table>

		<br><br><br>
		
		<!-- 최근 구매한 상품 영역 -->
		<h3>최근 구매한 상품</h3>
		<hr>
			<div id="recentOrder">
				<a href=""><img src="" width="145" height="145"></img></a>
				<a href="">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div id="recentOrder">
				<a href=""><img src="" width="145" height="145"></img></a>
				<a href="">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div id="recentOrder">
				<a href=""><img src="" width="145" height="145"></img></a>
				<a href="">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div id="recentOrder">
				<a href=""><img src="" width="145" height="145"></img></a>
				<a href="">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div id="recentOrder">
				<a href=""><img src="" width="145" height="145"></img></a>
				<a href="">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
	</div>

</body>
</html>