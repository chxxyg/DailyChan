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
	
	/*주문 상세 내역*/
	.orderDetailViewWrap{
		width:800px;
		height:1300px;
		margin:50px 0px 0px 450px;
	}
	.orderDetailViewWrap>span{color:grey;font-size:13px;}
	#orderNo{color:blue;}
	#orderNo+span{margin-left:20px;}
	#cartAgainBtn{
		height:25px;
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
	.orderDetail a{text-decoration:none;}
	#orderDtail_td1, #orderDtail_td2, #orderDtail_td3{
		border-right:1px solid lightgrey;
	}
	#orderDtail_td1{
		padding:15px 0px 15px 0px;
	}
	#orderDtail_td1>img{
		float:left;
		margin-left:15px;
	}
	#orderDtail_td1>div{
		width:230px;
		text-align:left;
		float:left;
		margin:18px 0px 0px 15px;
	}
	#orderDtail_td1>div>a{
		font-size:13px;
	}
	#orderDtail_td2{padding-left:40px;}
	#orderDtail_td3, #orderDtail_td4{padding-left:35px;}
	#cancelOrderBtn{
		width:60px;
		height:20px;
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
			<div><a style="color:rgb(247, 112, 46);" href="">주문/배송 조회</a></div>
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

	<div class="orderDetailViewWrap">
		<h3>상세 주문 내역</h3>
		<hr>
			
		&emsp;<span>주문번호 : </span>
		<span id="orderNo">20200331-1234567</span>
		<span>주문일 : </span>
		<span>2020-03-31</span>
		<button id="cartAgainBtn">장바구니 다시담기</button>
		
		<table class="orderDetail" width="790px">
			<tr height="35px">
				<th width="400px">제품명</th>
				<th width="130px">진행상태</th>
				<th width="130px">희망배송일</th>
				<th width="130px">확인</th>
			</tr>
			<tr>
				<td id="orderDtail_td1">
					<img src="" width="70px" height="70">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
				<td id="orderDtail_td2" rowspan="3">결제완료</td>
				<td id="orderDtail_td3" rowspan="3">
					2020-03-31<br>
				</td>
				<td id="orderDtail_td4" rowspan="3">
					<button type="button" id="cancelOrderBtn" onclick="cancelOrder();">즉시취소</button>
				</td>
			</tr>
			<tr>
				<td id="orderDtail_td1">
					<img src="" width="70px" height="70">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
			</tr>
			<tr>
				<td id="orderDtail_td1">
					<img src="" width="70px" height="70">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
					</div>
				</td>
			</tr>
		</table>
		<br>
		<h4>결제정보</h4>
		<table id="orderDetail_PaymentInfo1">
			<tr height="50">
				<th width="197">주문 합계 금액</th>
				<th width="197">배송비</th>
				<th width="197">쿠폰/할인 금액</th>
				<th width="197">최종 결제금액</th>
			</tr>
			<tr height="50">
				<td colspan="4"><p id="paymentInfo_first">49,800원</p><span>+</span><p>3,000</p><span>-</span><p>5,000원 </p><span>=</span><p id="paySum">49,800원</p></td>
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
		<h4>배송정보</h4>
		<table id="orderDetail_shipmentInfo">
			<tr height="45px">
				<th width="130px">희망배송일</th>
				<td width="660px">2020-03-31</td>
			</tr>
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
		
		function cancelOrder(){
			var result = confirm("주문을 즉시취소하시겠습니까?")
			
            if(result){
                alert("처리가 완료되었습니다.");
            }
		}
		
		function preOrderDetail(){
			history.back();
		}
	
	</script>
		


	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>