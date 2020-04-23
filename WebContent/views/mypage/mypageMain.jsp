<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.mypage.model.vo.Mypage"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
	.mypageMainDetailWrap{
		box-sizing:border-box;
		float:left;
		width:800px;
		height:900px;
	}
	/* 주문/배송 조회 영역 */
	.myMainOrderList{
		margin:30px 0px 0px 5px;
	}
	.myMainOrderList, .myMainOrderList tr{
		border-top:1px solid grey;
		border-bottom:1px solid grey;
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
	.myMainOrderList a{cursor:pointer;}
	#myMainOrderInfo{
		padding:20px 0px 10px 100px;
	}
	#myMainOrderInfo>div{
		width:270px;
		text-align:left;
		float:left;
		margin-bottom:10px;
	}
	#myMainOrderInfo>div>a{
		font-size:13px;
		text-decoration:none;
		color:black;
	}
	.ordDetailBtn{
		width:63px;
		height:25px;
		background:white;
		border:1px solid black;
		margin-top:2px;
		font-size:10px;
		cursor:pointer;
	}
	
	/* 최근 구매한 상품 영역 */
	.recentOrder{
		width:145px;
		height:220px;
		margin:20px 5px 0px 8px;
		float:left;
	}
	.recentOrder>a{
		font-size:13px;
		font-weight:bold;
		text-decoration:none;
		color:black;
		cursor:pointer;
	}
	.recentOrder>img{cursor:pointer;}
	.recentOrder>p{
		font-size:12px;
	}
</style>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

	<div class="mypageMainDetailWrap">
	
		<!-- 주문/배송 조회 영역 -->
		<h3>주문/배송 조회</h3>
		<hr>
		<table class="myMainOrderList">
			<tr height="35px" width="790">
				<th width="130px">주문번호/주문일</th>
				<th width="400px">상품정보</th>
				<th width="130px">진행상태</th>
				<th width="130px">확인</th>
			</tr>
			
			
				
					<tr>
						<td>
							<a style="color:blue; text-decoration: underline;" class="orderNo">주문번호</a><br>
							주문일자<br>
							<button class="ordDetailBtn" type="button">상세확인 ></button>
						</td>
						
						<td id="myMainOrderInfo">
							<div>
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<a class="pName"><b>데일리찬상품명</b></a><br>
								1개 / 12,000 원
							</div>
							<div>
								<input type="hidden" class="pCode" value="KOA109"><!-- 상품코드 -->
								<a class="pName"><b>데일리찬 상품명</b></a><br>
								1개 / 12,000원
							</div>
							<div>
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<a class="pName"><b>데일리찬 상품명</b></a><br>
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
			<div class="recentOrder">
				<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
				<img class="pName" src="" width="145" height="145"></img>
				<a class="pName">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div class="recentOrder">
				<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
				<img class="pName" src="" width="145" height="145"></img>
				<a class="pName">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div class="recentOrder">
				<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
				<img class="pName" src="" width="145" height="145"></img>
				<a class="pName">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div class="recentOrder">
				<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
				<img class="pName" src="" width="145" height="145"></img>
				<a class="pName">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
			<div class="recentOrder">
				<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
				<img class="pName" src="" width="145" height="145"></img>
				<a class="pName">데일리찬 상품명</a>
				<p>12,000원 | 1인분</p>				
			</div>
	</div>
	
	<script>
			
	
	
		$(function(){
			
			$(".orderNo").click(function(){
				var orderNo = $(this).text();
				location.href="<%=contextPath%>/orderDetail.my?orderNo=" + orderNo;
			})
			
			$(".ordDetailBtn").click(function(){
				var orderNo = $(this).siblings(".orderNo").text();
				location.href="<%=contextPath%>/orderDetail.my?orderNo=" + orderNo;
			})
			
			$(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				location.href="<%=contextPath%>/pDetail.pro?pCode=" + pCode;
			})
			
		});
		
	</script>


	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>