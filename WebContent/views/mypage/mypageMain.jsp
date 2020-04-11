<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		box-sizing:border-box;
	}
	table{
		margin-top:30px;
	}
	.mypageMainDetail{
		margin:50px 0px 0px 450px;
		width:800px;
		height:600px;
	}
	.mypageOrderList, .mypageOrderList tr{
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-collapse: collapse;
	}
	.mypageOrderList th{
		font-size:13px;
		background:#f5f5f5;
	}
	.mypageOrderList td{
		font-size:12px;
		text-align:center;
	}
	#mypageOrderInfo>img{
		float:left;
		margin:5px 5px 5px 20px;
	}
	#mypageOrderInfo>div{
		width:200px;
		text-align:left;
		float:left;
		margin:20px 0px 0px 10px;
	}
	#mypageOrderInfo>div>a{
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

</style>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>

	<div class="mypageMainDetail">
		<h3>주문/배송 조회</h3>
		<hr>
		<table class="mypageOrderList">
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
				<td id="mypageOrderInfo">
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
		<table class="mypageOrderList">
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
				<td id="mypageOrderInfo">
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
		<h3>최근 구매한 상품</h3>
		<hr>
		
	
	</div>

</body>
</html>