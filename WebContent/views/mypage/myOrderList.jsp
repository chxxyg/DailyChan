<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문배송조회</title>
<style>
	/* 주문배송조회 */
	.orderDeliveryList{
		box-sizing:border-box;
	}
	.orderDeliveryList{
		float:left;
		width:800px;
		height:1200px;
	}
	
	/* 조회 기간 선택 영역 */
	#orderPeriodSch {
		width:800px;
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
	.myOrderList a{text-decoration:none; cursor:pointer;}
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
		cursor:pointer;
		color:black;
	}
	.orderDtBtn{
		width:63px;
		height:25px;
		background:white;
		border:1px solid black;
		margin-top:2px;
		font-size:10px;
		cursor:pointer;
	}
	#trackShipmentBtn{
		width:60px;
		height:30px;
		background:tomato;
		border:none;
		font-size:10px;
		color:white;
		margin-bottom:5px;
		cursor:pointer;
	}
	.cancelOrderBtn, .requestRefundBtn{
		width:60px;
		height:30px;
		background:white;
		border:1px solid black;
		font-size:10px;
		cursor:pointer;
	}
	#cancelOrdBlockBtn{
		width:60px;
		height:30px;
		background:white;
		border:1px solid black;
		font-size:10px;
		cursor:pointer;
	}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	
	<div class="orderDeliveryList">
		<h3>주문/배송 조회</h3>
		<hr>
		
		<!-- 주문배송 조회기간 선택 -->
		<div id="orderPeriodSch">
			<form>
				<dl>
					<dt>조회기간</dt>
					<dd>
						<input type="date" id="fromDate" name="fromDate" max="sysdate"><span>~</span>
						<input type="date" id="toDate" name="toDate">
					</dd>
					<dd>
						<button type="button" class="bt_sch" id="searchBtn">조회</button>
					</dd>
				</dl>
			</form>
		</div>
		
		<!-- 주문배송 조회 리스트 -->
		<table class="myOrderList" width="790px">
			<thead>
				<tr height="35px">
					<th width="130px">주문번호/주문일</th>
					<th width="400px">상품정보</th>
					<th width="130px">진행상태</th>
					<th width="130px">확인</th>
				</tr>
			</thead>
			<tbody>
				<tr height="100px">
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200331-1234567</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					<td>입금대기</td>
					<td></td>
				</tr>
				<tr>
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200331-1111111</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="KOA102"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
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
					<td>
						<button type="button" class="cancelOrderBtn">즉시취소</button>
					</td>
				</tr>
				<tr height="100px">
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200331-1234567</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					<td>결제취소</td>
					<td></td>
				</tr>
				<tr height="100px">
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200331-1234567</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					<td>배송준비중</td>
					<td>
						<button type="button" id="cancelOrdBlockBtn" onclick="cancelOrdBlock();">즉시취소</button>
					</td>
				</tr>
				<tr height="100px">
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200501-7654321</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					<td>배송중</td>
					<td>
						<button type="button" id="trackShipmentBtn">배송조회</button><br>
						<button type="button" class="requestRefundBtn">반품신청</button>
					</td>
				</tr>
				<tr height="100px">
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200331-1234567</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					<td>배송완료</td>
					<td>
						<button type="button" id="trackShipmentBtn">배송조회</button><br>
						<button type="button" class="requestRefundBtn">반품신청</button>
					</td>
				</tr>
				<tr height="100px">
					<td class="firstTd">
						<a style="color:blue; text-decoration: underline;" class="orderNo">20200331-1234567</a>
						2020-03-31<br>
						<button class="orderDtBtn" type="button">상세확인 ></button>
					</td>
					<td id="myOrderInfo">
						<div>
							<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
							<a class="pName"><b>데일리찬 상품명</b></a><br>
							1개 / 12,000원
						</div>
					</td>
					<td>환불완료</td>
					<td></td>
				</tr>
			</tbody>
		</table>
		
		<!-- 페이징바 -->
		
		
	</div>

	<script>
		$(function(){
			$("#selectOrder").css("color", "rgb(247, 112, 46)");
			
			$(".orderNo").click(function(){
				var orderNo = $(this).text();
				location.href="<%=contextPath%>/orderDetail.my?orderNo=" + orderNo;
			});
			
			$(".orderDtBtn").click(function(){
				console.log("클릭됨");
				var orderNo = $(this).siblings(".orderNo").text();
				location.href="<%=contextPath%>/orderDetail.my?orderNo=" + orderNo;
			})
			
			$(".pName").click(function(){
				var pCode = $(this).prev().val();
				location.href="<%=contextPath%>/pDetail.pro?pCode=" + pCode;
			})
			
			$(".requestRefundBtn").click(function(){
				var orderNo = $(this).parent().siblings(".firstTd").children(".orderNo").text();
				location.href="<%=contextPath%>/refund.my?orderNo=" + orderNo;
			});
			
			
			/*Ajax로 값만 서블릿으로 전달하고 이 페이지에 머물도록!!!(refund.my 지우고)*/
			$(".cancelOrderBtn").click(function(){
				var orderNo = $(this).parent().siblings(".firstTd").children(".orderNo").text();
				
				var result = confirm("주문을 즉시취소하시겠습니까?")
	            if(result){
	            	$.ajax({
	            		url:"deleteOrd.my",
	            		data:{orderNo:orderNo},
	            		type:"get",
	            		success:function(){
	            			alert("주문취소 처리가 완료되었습니다.");
	            		}, error:function(){
	            			colsole.log("통신 실패");
	            		}
	            	});	
	            }
			});
			
		});	
		
		function cancelOrdBlock(){
			alert("                즉시취소는 결제완료 단계까지 가능합니다.\r\n              상품준비중 이후의 단계에서는 상품이 조리되어\r\n              취소처리가 불가능하니 이점 양해 부탁드립니다.");
		}
		
	</script>

	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>