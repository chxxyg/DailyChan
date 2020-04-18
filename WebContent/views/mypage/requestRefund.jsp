<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.askRefundTop{
		width:1000px;
		height:120px;
		margin:auto;
		padding-top:70px;
	}
	.requestRefundWrap{
		width:800px;
		height:1200px;
		margin:0 auto;
	}
	
	/* 주문정보 */
	#refundOrdInfo{
		border:1px solid grey;
		width:790px;
		height:220px;
		margin:10px 0px 10px 5px;
	}
	#refundOrdInfo>img{
		width:200px;
		height:200px;
		float:left;
		margin:10px 0px 10px 30px;
	}
	
	#refundOrdInfo>div{
		margin:35px 0px 0px 50px;
		float:left;
	}
	#refundBig{font-size:15px;}
	#refundSmall{font-size:12px;}
	
	/* 반품 사유 */
	#reasonForRefund{
		margin-left:30px;
	}
	#refundReason{
		width:300px;
		height:40px;
	}
	#askToSeller{resize:none;}
	
	/* 환불 정보 */
	#refundInfoTb{
		height:230px;
		border:1px solid grey;
		border-collapse: collapse;
		margin:auto;
		font-size:14px;
	}
	#refundInfoTb td{padding-left:10px; padding-top:5px; padding-bottom:5px;}
	#refundSum{color:red; background:#f5f5f5;}
	#amount1, #amount2, #amount3, #amount4{text-align:right; padding-right:20px;}
	#paymentInfo{vertical-align:top;}
	
	/* 반품 신청 동의 */
	#agreeRefund{
		width:700px;
		height:80px;
		border:1px solid grey;
		padding:10px 0px 10px 10px;
		margin:auto;
	}
	
	/* 버튼 */
	#cancelRefundBtn{
		width:200px;
		height:40px;
		border:1px solid black;
		background:none;
		cursor:pointer;
	}
	#refundBtn{
		width:200px;
		height:40px;
		background:tomato;
		color:white;
		border:none;
		margin-left:50px;
		cursor:pointer;
	}
	#refundBtns{margin-left:175px;}
	
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

	<div class="askRefundTop">
		<h1 style="text-align:center">반품 신청</h1>
		<hr>
	</div>
	
	<!-- 주문정보 -->
	<div class="requestRefundWrap">
		<h3>주문 정보</h3>
		<hr>
		<div id="refundOrdInfo">
			<img id="refundImg" src="">
			<div style="">
				<p id="refundBig"> 주문일시 2020-03-31(화) 22:30<br>
				주문번호 20200331-1234567<br> </p>
				<p id="refundSmall"> 데일리찬 상품명<br>
				1개 / 12,000원 </p>
			</div>
		</div>
		<br>
		
		<!-- 반품 사유 -->
		<h3>반품 사유</h3>
		<hr>
		<div id="reasonForRefund">
			<select id="refundReason" name="" required>
				<option value="">하자 있는 상품을 수령함</option>
				<option value="">유통기한이 지난 상품을 수령함</option>
				<option value="">배송중 상품이 파손됨</option>
				<option value="">다른 상품이 잘못 배송됨</option>
				<option value="">상품이 도착하지 않음</option>
				<option value="">기타</option>
			</select>
			<br><br>
			<textarea id="askToSeller" rows="5" cols="100">반품과 관련하여 판매자에게 남기고 싶은 말이 있을 경우 기재해주세요.</textarea>
		</div>
		
		<!-- 환불 정보 -->
		<br>
		<h3>환불 정보</h3>
		<hr>
		<div id="refundInfo">
			<table id="refundInfoTb">
				<tbody>
					<tr id="orderSum">
						<td id="paymentInfo" rowspan="6" width="350">&emsp;결제수단 신용카드 결제(xx카드/일시불)</td>
						<td colspan="2" width="350"><b>주문금액(+)</b></td>
					</tr>
					<tr>
						<td width="270">주문 상품 금액</td>
						<td id="amount1" width="80"><p>12,000원</p></td>
					</tr>
					<tr>
						<td>총 배송비</td>
						<td id="amount2"><p>3,000원</p></td>
					</tr>
					<tr id="discountSum">
						<td colspan="2"><b>차감금액(-)</b></td>
					</tr>
					<tr>
						<td>상품 할인 금액</td>
						<td id="amount3"><p>5,000원</p></td>
					</tr>
					<tr id="refundSum">
						<td><b>환불 예정 금액</b></td>
						<td id="amount4"><p><b>10,000원</b><p></td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<form>
			<div id="agreeRefund">
				<input type="checkbox" name="refund" value="agree" required>
				<span>반품 신청 동의<br>&emsp;반품 상품의 상품명, 상품가격, 배송정보를 확인하였으며, 반품에 동의하시겠습니까?<br>&emsp;(전자상거래법 제 8조 2항)</span>
			</div>
			<br><br>
			<div id="refundBtns">
			<button id="cancelRefundBtn" type="button">취소</button><button id="refundBtn" type="submit">반품 신청</button>
			</div>
		</form>
	</div>
	
	<script>
		$(function(){
			$("#askToSeller").click(function(){
				$(this).text("");
			})
		});
	</script>

	<%@ include file="../../views/common/mainFooter.jsp" %>


</body>
</html>