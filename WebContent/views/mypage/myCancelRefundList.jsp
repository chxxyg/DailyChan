<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 마이페이지 틀*/
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

	/* 취소/반품 조회 */
	.cancelRefundList{
		box-sizing:border-box;
	}
	.cancelRefundList{
		margin:50px 0px 0px 450px;
		width:800px;
		height:1000px;
	}
	.cancelRefundList>p{
		font-size:12px;
		padding:10px 0px 20px 15px;
	}
	
	
	/* 조회 기간 선택 영역 */
	#cancelPeriodSch {
		width:700px;
		height:35px;
		margin:auto;
		vertical-align:middle;
	}
	#cancelPeriodSch *{
		float:left;
		font-size:12px;
	}
	
	/* 주문/배송 리스트 영역*/
	.myCancelList{
		margin:50px 0px 0px 75px;
	}
	.myCancelList, .myCancelList tr{
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-collapse: collapse;
	}
	.myCancelList th{
		font-size:13px;
		background:#f5f5f5;
	}
	.myCancelList td{
		font-size:12px;
		text-align:center;
	}
	#myCancelInfo{
		padding:20px 0px 10px 100px;
	}
	#myCancelInfo>div{
		width:270px;
		text-align:left;
		float:left;
		margin-bottom:10px;
	}
	#myCancelInfo>div>a{
		font-size:13px;
	}
	#myCancelInfo p{font-size:10px; margin:0;}
	
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
			<div><a style="color:rgb(247, 112, 46);" href="">취소/반품 조회</a></div>
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


	<div class="cancelRefundList">
		<h3>취소/반품 조회</h3>
		<hr>
		<p>주문 즉시 취소는 결제 완료 단계 이하에서만 가능하며, 반품신청은 배송중 혹은 배송완료 단계에서 신청이 가능합니다.</p>
		
		<!-- 취소반품 조회기간 선택 -->
		<div id="cancelPeriodSch">
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
		<table class="myCancelList" width="650px">
			<tr height="28px">
				<th width="130px">주문번호/주문일</th>
				<th width="320px">상품정보</th>
				<th width="100px">진행상태</th>
				<th width="100px">학인</th>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200429-1234567</a>
					2020-04-29<br>
				</td>
				<td id="myCancelInfo">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
						<p>결제수단 : 신용카드</p>
					</div>
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
						<p>결제수단 : 신용카드</p>
					</div>
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
						<p>결제수단 : 신용카드</p>
					</div>
				</td>
				<td>취소완료</td>
				<td>2020-05-01</td>
			</tr>
		</table>
		
		<table class="myCancelList" width="650px">
			<tr height="28px">
				<th width="130px">주문번호/주문일</th>
				<th width="320px">상품정보</th>
				<th width="100px">진행상태</th>
				<th width="100px">학인</th>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200410-1234567</a>
					2020-04-10<br>
				</td>
				<td id="myCancelInfo">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
						<p>결제수단 : 신용카드</p>
					</div>
				</td>
				<td>취소완료</td>
				<td>2020-04-12</td>
			</tr>
		</table>
		
		<table class="myCancelList" width="650px">
			<tr height="28px">
				<th width="130px">주문번호/주문일</th>
				<th width="320px">상품정보</th>
				<th width="100px">진행상태</th>
				<th width="100px">학인</th>
			</tr>
			<tr>
				<td>
					<a href="" style="color:blue; text-decoration: underline;">20200331-1234567</a>
					2020-03-31<br>
				</td>
				<td id="myCancelInfo">
					<div>
						<a href=""><b>데일리찬 상품명</b></a><br>
						1개 / 12,000원
						<p>결제수단 : 신용카드</p>
					</div>
				</td>
				<td>취소완료</td>
				<td>2020-04-01</td>
			</tr>
		</table>
		
		<!-- 페이징바 -->
		
		
	</div>

		

</body>
</html>