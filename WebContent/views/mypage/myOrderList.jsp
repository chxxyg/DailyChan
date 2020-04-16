<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 주문배송조회 */
	.orderDeliveryList{
		box-sizing:border-box;
	}
	.orderDeliveryList{
		margin:50px 0px 0px 450px;
		width:800px;
		height:900px;
	}
	
	/* 조회 기간 선택 영역 */
	#orderPeriodSch {
		width:700px;
		height:35px;
		margin:auto;
		vertical-align:middle;
	}
	#orderPeriodSch *{
		float:left;
		font-size:12px;
	}
	
	/* 주문/배송 리스트 영역*/
	.myOrderList{
		margin:30px 0px 0px 5px;
	}
	.myOrderList, .myOrderList tr{
		border-top:1px solid grey;
		border-bottom:1px solid grey;
		border-collapse: collapse;
	}
	.myOrderList th{
		font-size:13px;
		background:#f5f5f5;
	}
	.myOrderList td{
		font-size:12px;
		text-align:center;
	}
	.myOrderList a{text-decoration:none;}
	#myOrderInfo{
		padding:20px 0px 10px 100px;
	}
	#myOrderInfo>div{
		width:270px;
		text-align:left;
		float:left;
		margin-bottom:10px;
	}
	#myOrderInfo>div>a{
		font-size:13px;
	}
	#orderDtBtn{
		width:60px;
		height:20px;
		background:white;
		border:1px solid black;
		margin-top:2px;
		font-size:9px;
	}
	#trackShipmentBtn{
		width:60px;
		height:20px;
		background:tomato;
		border:none;
		font-size:10px;
		color:white;
		margin-bottom:5px;
	}
	#cancelOrderBtn, #requestRefundBtn{
		width:60px;
		height:20px;
		background:white;
		border:1px solid black;
		font-size:10px;
	}
	#orderDtBtn:hover, #trackShipmentBtn:hover, #cancelOrderBtn:hover, #requestRefundBtn:hover{
	cursor:pointer;
	}
	
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>
	
	<div class="orderDeliveryList">
		<h3>주문/배송 조회</h3>
		<hr>
		
		<!-- 주문배송 조회기간 선택 -->
		<div id="orderPeriodSch">
			<form>
				<dl>
					<dt>조회기간</dt>
					<dd>
						<span class="date">
							<input type="text" class="input_txt input_date" title="기간검색 시작일" id="date_start" name="date_start" value="2020-03-12" readonly="readonly">
							<button type="button" id="cal_start" title="조회기간 선택 달력 레이어 열기" class="">달력에서 선택</button>
						</span>
						<span class="tx">~</span>
						<span class="date">
							<input type="text" class="input_txt input_date" title="기간검색 종료일" id="date_end" name="date_end" value="2020-04-12" readonly="readonly">
							<button type="button" id="cal_end" title="조회기간 선택 달력 레이어 열기">달력에서 선택</button>
						</span>
					</dd>
					<dd>
						<button type="button" class="bt_sch" id="searchBtn">조회</button>
					</dd>
				</dl>
			</form>
		</div>
		
		<!-- 주문배송 조회 리스트 -->
		<table class="myOrderList" width="790px">
			<tr height="35px">
				<th width="130px">주문번호/주문일</th>
				<th width="400px">상품정보</th>
				<th width="130px">진행상태</th>
				<th width="130px">확인</th>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200331-1234567</a><br>
					2020-03-31<br>
					<button id="orderDtBtn" type="submit" onclick="toOrderDetail();">상세확인 ></button>
				</td>
				<td id="myOrderInfo">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
				<td>결제완료</td>
				<td>
					<button type="button" id="cancelOrderBtn" onclick="cancelOrder();">즉시취소</button>
				</td>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200331-1234567</a>
					2020-03-31<br>
					<button id="orderDtBtn" type="submit" onclick="toOrderDetail();">상세확인 ></button>
				</td>
				<td id="myOrderInfo">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
				<td>배송중</td>
				<td>
					<button type="button" id="trackShipmentBtn">배송조회</button><br>
					<button type="button" id="requestRefundBtn">반품신청</button>
				</td>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200331-1234567</a>
					2020-03-31<br>
					<button id="orderDtBtn" type="submit" onclick="toOrderDetail();">상세확인 ></button>
				</td>
				<td id="myOrderInfo">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
				<td>배송완료</td>
				<td>
					<button type="button" id="trackShipmentBtn">배송조회</button><br>
					<button type="button" id="requestRefundBtn">반품신청</button>
				</td>
			</tr>
		</table>
		
		
		
		<!-- 페이징바 -->
		
		
	</div>

	<script>
		
		$(function(){
			$("#selectOrder").css("color", "rgb(247, 112, 46)");
		});
		
		function cancelOrder(){
			var result = confirm("주문을 즉시취소하시겠습니까?")
			
            if(result){
                alert("처리가 완료되었습니다.");
            }
		}
		function toOrderDetail(){
			location.href="<%= contextPath %>/views/mypage/myOrderDetailView.jsp";
		}
	
		
	</script>

	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>