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
	
	/* 고객 후기 조회 */
	.reviewList{
		box-sizing:border-box;
	}
	.reviewList{
		margin:50px 0px 0px 450px;
		width:800px;
		height:1000px;
	}
	
	
	/* 조회 기간 선택 영역 */
	#reviewPeriodSch {
		width:700px;
		height:35px;
		margin:auto;
		vertical-align:middle;
	}
	#reviewPeriodSch *{
		float:left;
		font-size:12px;
	}
	
	/* 작성가능한후기/작성한후기 */
	#reviewBtn button{
		width:140px;
		height:40px;
		background:white;
		border:1px solid black;
	}
	#reviewBtn:hover{cursor:pointer;}
	
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
			<div><a href="" style="color:rgb(247, 112, 46);">주문/배송 조회</a></div>
			<div><a href="">취소/반품 조회</a></div>
			<div class="myCateFirst">구매혜택</div>
			<div><a href="">쿠폰/적립금 조회</a></div>
			<div class="myCateFirst">활동내역</div>
			<div><a href="">최근 본 상품</a></div>
			<div><a href="" style="color:rgb(247, 112, 46);">고객 후기</a></div>
			<div><a href="">나의 문의 내역</a></div>
			<div class="myCateFirst">회원정보</div>
			<div><a href="">배송지 관리</a></div>
			<div><a href="">개인정보수정</a></div>
			<div><a href="">회원탈퇴</a></div>
			
		</div>	
    </div>

	<!-- 고객 후기 -->
	<div class="reviewList">
		<h3>고객 후기</h3>
		<hr>

		<!-- 리뷰 조회기간 선택 -->
		<div id="reviewPeriodSch">
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

		<!-- 작성 가능한 리뷰/ 작성한 리뷰 선택  -->
		<div id="reviewBtn">
			<button id="writeReview">작성 가능한 리뷰</button>
			<button id="viewMyReview">작성한 리뷰</button>
		</div>
	


	</div>

</body>
</html>