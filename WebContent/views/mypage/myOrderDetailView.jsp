<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mypage.model.vo.Mypage, java.util.ArrayList"%>
<%
	ArrayList<Mypage> detailList = (ArrayList<Mypage>)request.getAttribute("detailList");
	String orderNo = String.valueOf(request.getAttribute("orderNo"));
	String orderDate = String.valueOf(request.getAttribute("orderDate"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상세내역</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
		
	/*주문 상세 내역*/
	.orderDetailViewWrap{
		width:800px;
		height:1300px;
		float:left;
	}
	.orderDetailViewWrap>span{color:grey;font-size:13px;}
	#orderNo{color:blue;}
	#orderNo+span{margin-left:20px;}
	#cartAgainBtn{
		height:30px;
		font-size:11px;
		background-color:white;
		border:1px solid grey;
		margin-left:300px;
		cursor:pointer;
	}
	
	/* 주문내역 테이블*/
	.orderDetail{
		margin:25px 0px 0px 5px;
	}
	.orderDetail, .orderDetail tr{
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
		border-collapse: collapse;
	}
	.orderDetail th{
		font-size:13px;
		background:#f5f5f5;
	}
	.orderDetail td{
		font-size:12px;
	}
	.orderDetail a{
		text-decoration:none;
		cursor:pointer;
		color:black;
	}
	#orderDtail_td1, #orderDtail_td2, #orderDtail_td3{
		border-right:1px solid lightgrey;
	}
	#orderDtail_td1{
		padding:15px 15px;
	}
	#orderDtail_td1>img{
		float:left;
		margin-left: 15px;
		cursor:pointer;
	}
	#orderDtail_td1>p{
		float:left;
		margin:18px 0px 0px 15px;
		cursor:pointer;
	}
	#orderDtail_td2{padding-left:70px;}
	#orderDtail_td3, #orderDtail_td4{padding-left:35px;}
	.cancelOrderBtn{
		width:60px;
		height:30px;
		background:white;
		border:1px solid black;
		font-size:10px;
		cursor:pointer;
	}
	
	/* 결제 정보, 배송정보 */
	#orderDetail_PaymentInfo1, #orderDetail_PaymentInfo2, #orderDetail_shipmentInfo {
		margin:20px 5px 0px 5px;
	}
	#orderDetail_PaymentInfo1, #orderDetail_PaymentInfo1 tr, #orderDetail_PaymentInfo2, #orderDetail_PaymentInfo2 tr, #orderDetail_shipmentInfo, #orderDetail_shipmentInfo tr{
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
		border-collapse: collapse;
	}
	#orderDetail_PaymentInfo1 th, #orderDetail_PaymentInfo2 th, #orderDetail_shipmentInfo th{
		font-size:13px;
		background:#f5f5f5;
	}
	#orderDetail_PaymentInfo1 td{
		font-size:20px;
		text-align:center;
	}
	#orderDetail_PaymentInfo2 td, #orderDetail_shipmentInfo, td{
		font-size:12px;
		padding-left:15px;
	}
	
	#paymentInfo_first{margin-left:50px;}
	#orderDetail_PaymentInfo1 p, #orderDetail_PaymentInfo1 span{
		float:left;
	}
	#orderDetail_PaymentInfo1 span{
		margin:20px 60px 10px 60px;
	}
	#paySum{
		font-weight:border;
		color:rgb(247, 112, 46);
	}

	#preOrderDetailBtn{
		width:140px;
		height:40px;
		margin-left:330px;
		background:white;
		border:1px solid grey;
		cursor:pointer;
	}
	
</style>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

	<!-- 주문내역 -->
	<div class="orderDetailViewWrap">
		<h3>상세 주문 내역</h3>
		<hr>
			
		&emsp;<span>주문번호 : </span>
		<span id="orderNo"><%= orderNo %></span>
		<span>주문일 : </span>
		<span><%= orderDate %></span>
		
		<table class="orderDetail" width="790px">
			<tr height="35px">
				<th width="400px">제품명</th>
				<th width="130px">진행상태</th>
			</tr>
			
			<% for(Mypage mp : detailList) { %>
			<tr>
				<td id="orderDtail_td1">
					<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
					<img class="pName" src="" width="70px" height="70">
					<p class="pName"><b><%= mp.getProName() %></b><br>
						<%= mp.getQuantity() %>개 / <%= mp.getPrice() %>원
					</p>
				</td>
			<% } %>
				<td id="orderDtail_td2" rowspan="3">
					<% switch(detailList.get(0).getStatus()) {
						case 0 : out.println("결제완료"); break;
						case 1 : out.println("상품준비중"); break;
						case 2 : out.println("배송중"); break;
						case 3 : out.println("배송완료"); break;
					}%>
				</td>
			<%{ %>
			</tr>
			<% } %>
		</table>
		<br>
		
		<!-- 결제정보 -->
		<h4>결제정보</h4>
		<table id="orderDetail_PaymentInfo1">
			<tr height="50">
				<th width="197">주문 합계 금액</th>
				<th width="197">배송비</th>
				<th width="197">쿠폰/할인 금액</th>
				<th width="197">최종 결제금액</th>
			</tr>
			<tr height="50">
				<td colspan="4"><p id="paymentInfo_first">49,800</p>원<span>+</span><p>3,000</p><span>-</span><p>5,000</p>원<span>=</span><p id="paySum">49,800</p>원</td>
			</tr>
		</table>
		<br>
		<table id="orderDetail_PaymentInfo2">
			<tr height="45px">
				<th width="130px">결제수단</th>
				<td width="660px">
					비씨카드 (1234********5678) 일시불 <br>
					2020-03-31 20:19:24
				</td>
			</tr>
			<tr height="45px">
				<th width="130px">결제금액</th>
				<td width="660px">49,800원</td>
			</tr>
		</table>
		<br>
		
		<!-- 배송정보 -->
		<h4>배송정보</h4>
		<table id="orderDetail_shipmentInfo">
			<tr height="45px">
				<th width="130px">배송 받으실 분</th>
				<td width="660px">강보람님</td>
			</tr>
			<tr height="45px">
				<th width="130px">휴대전화</th>
				<td width="660px">010-1111-2222</td>
			</tr>
			<tr height="45px">
				<th width="130px">주소</th>
				<td width="660px">(12345) 서울시 강남구 테헤란로14길 6 남도빌딩 3F</td>
			</tr>
			<tr height="45px">
				<th width="130px">배송시 요청사항</th>
				<td width="660px"></td>
			</tr>
		</table>
		<br><br><br>
		<button id="preOrderDetailBtn" onclick="preOrderDetail();">이전 페이지로</button>
	</div>

	<script>
	
		$(function(){
			$("#selectOrder").css("color", "rgb(247, 112, 46)");
			
			$(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				location.href="<%=contextPath%>/pDetail.pro?pCode=" + pCode;
			});
			
		});
		
		function preOrderDetail(){
			history.back();
		}
		
		
		/*Ajax로 값만 서블릿 전달!!*/
		function toCart(){
			
			window.alert("장바구니에 상품이 담겼습니다.");
			
		}
	
	</script>
		


	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>