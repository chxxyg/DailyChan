<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최근 구매한 상품</title>
<style>
	
	/* 최근 본 상품 */
	.recentProductViewWrap{
		width:800px;
		height:1300px;
		float:left;
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
	.recentProduct a{text-decoration:none; cursor:pointer;}
	#recentProduct_td1{
		padding:15px 15px;
	}
	#recentProduct_td1>img{
		float:left;
		margin-left: 15px;
		cursor:pointer;
	}
	#recentProduct_td1>p{
		float:left;
		margin:18px 0px 0px 15px;
		cursor:pointer;
	}
	#recentProduct_td2{padding-left:50px;}
	#shoppingcartBtn{
		width:60px;
		height:30px;
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

	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

	<div class="recentProductViewWrap">
		<h3>최근 본 상품</h3>
		<hr>
		<span><b>강보람</b> 님의 최근 본 상품은 <b>3</b>개 입니다. (최대 30개까지 저장됩니다.) </span>
		<table class="recentProduct" width="790px">
			<thead>
				<tr height="35px">
					<th width="490px">제품명</th>
					<th width="150px">제품가격</th>
					<th width="150px">장바구니 담기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="recentProduct_td1">
						<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
						<img class="pName" src="" width="80" height="80">
						<p class="pName"><b>데일리찬 상품명</b><br>
							1개 / 12,000원
						</p>
					</td>
					<td id="recentProduct_td2" colspan="2">
						상품이 매진되었습니다.
					</td>
				</tr>
				<tr>
					<td id="recentProduct_td1">
						<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
						<img class="pName" src="" width="80" height="80">
						<p class="pName"><b>데일리찬 상품명</b><br>
							1개 / 12,000원
						</p>
					</td>
					<td id="recentProduct_td2" colspan="2">
						12,000원
						<button type="button" id="shoppingcartBtn" onclick="toCart();">장바구니</button>
					</td>
				</tr>
				<tr>
					<td id="recentProduct_td1">
						<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
						<img class="pName" src="" width="80" height="80">
						<p class="pName"><b>데일리찬 상품명</b><br>
							1개 / 12,000원
						</p>
					</td>
					<td id="recentProduct_td2" colspan="2">
						12,000원
						<button type="button" id="shoppingcartBtn" onclick="toCart();">장바구니</button>
					</td>
				</tr>
			</tbody>
		</table>

	</div>

	<script>
		$(function(){
			$("#selectRecent").css("color", "rgb(247, 112, 46)");
			
			$(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				location.href="<%=contextPath%>/pDetail.pro?pCode=" + pCode;
			});
			
		});
		
		/* ajax 사용!! */		
		function toCart(){
			
			window.alert("장바구니에 상품이 담겼습니다.");
			
		}
		
		
	</script>
	
	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>