<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	/* 고객 후기 조회 */
	.reviewList{
		box-sizing:border-box;
	}
	.reviewList{
		width:800px;
		height:1000px;
		float:left;
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
	
	/* 작성가능한후기/작성한후기 선택*/
	#reviewCate{
		height:40px;
		margin-top:50px;	
	}
	#reviewCate button{
		width:200px;
		height:40px;
		background:white;
		border:1px solid black;
		float:left;
	}
	#reviewCate button:hover{cursor:pointer;}
	
	.selectedCate{
		border:2px solid rgb(247, 112, 46);
	}
	
	/* 작성 가능한 후기 없는 경우 / 기존에 작성한 후기 없는 경우 */
	#unWrittenREmpty, #writtenREmpty{
		width:800px;
		height:300px;
		border-top:1px solid grey;
		border-bottom:1px solid grey;
	}
	#cautionlogo{margin:90px 0px 0px 365px;}
	#unWrittenREmpty p, #writtenREmpty p{font-size:14px;}
	
	/* 작성 가능한 후기 있는 경우/ 기존에 작성한 후기 있는 경우 */
	.rList, .unRList{
		margin:25px 0px 0px 5px;
	}
	.rList, .rList tr, .unRList, .unRList tr{
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
		border-collapse: collapse;
	}
	.rList td, .unRList td{
		font-size:12px;
	}
	.rList a, .unRList a{
		text-decoration:none;
		font-size:13px;
		cursor:pointer;
	}
	#rList_td1, #unRList_td1{
		padding:15px 15px;
	}
	#rList_td1>img, #unRList_td1>img{
		float:left;
		margin-left: 15px;
		cursor:pointer;
	}
	#rList_td1>p, #unRList_td1>p{
		float:left;
		margin:18px 0px 0px 15px;
		cursor:pointer;
	}
	#rList_td1~td, #unRList_td1~td{text-align:center;}
	#writeReviewBtn{
		width:60px;
		height:30px;
		background:tomato;
		border:none;
		color:white;
		font-size:10px;
		cursor:pointer;
	}
	#writtenReviewBtn{
		width:100px;
		height:30px;
		background:tomato;
		border:none;
		color:white;
		font-size:10px;
		cursor:pointer;
	}
	
</style>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>

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
		<div id="reviewCate">
			<button id="writeReviewCate">작성 가능한 리뷰</button>
			<button id="viewMyReviewCate">작성한 리뷰</button>
		</div>
		
		<!-- 작성 가능한 리뷰 -->
		<div id="writeReview">
		
			<!-- if/else 구문 추가 -->
			<!-- 작성 가능한 리뷰 없는 경우 -->
			<div id="unWrittenREmpty">
				<a><img id="cautionlogo" src="<%=contextPath%>/resources/img/cautionlogo.png" width="70px" height="70px"></a>
				<p align="center">수취 완료 후 30일 이내에 작성 가능한 후기가 없습니다.</p>
			</div>
			
			<!-- 작성 가능한 리뷰 있는 경우 -->
			<div id="unWrittenRList">
				<table class="unRList" width="790px">
					<tbody>
						<tr>
							<td id="unRList_td1">
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<img class="pName" src="" width="80" height="80">
								<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
									주문일 : 2020.03.31
								</p>
							</td>
							<td width="150px">12,000원</td>
							<td width="150px">
								<button type="button" id="writeReviewBtn" onclick="writeReview();">리뷰작성</button>
							</td>
						</tr>
						<tr>
							<td id="unRList_td1">
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<img class="pName" src="" width="80" height="80">
								<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
									주문일 : 2020.03.31
								</p>
							</td>
							<td width="150px">12,000원</td>
							<td width="150px">
								<button type="button" id="writeReviewBtn" onclick="writeReview();">리뷰작성</button>
							</td>
						</tr>
						<tr>
							<td id="unRList_td1">
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<img class="pName" src="" width="80" height="80">
								<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
									주문일 : 2020.03.31
								</p>
							</td>
							<td width="150px">12,000원</td>
							<td width="150px">
								<button type="button" id="writeReviewBtn" onclick="writeReview();">리뷰작성</button>
							</td>
						</tr>
					</tbody>	
				</table>
			</div>
		</div>
		
		
		<!-- 기존에 작성한 리뷰 조회 -->
		<div id="viewMyReview">
		
			<!-- if/else 구문 추가 -->
			<!-- 기존에 작성한 후기 없는 경우 -->
			<div id="writtenREmpty">
				<a><img id="cautionlogo" src="<%=contextPath%>/resources/img/cautionlogo.png" width="70px" height="70px"></a>
				<p align="center">기존에 작성한 후기가 없습니다.</p>
			</div>
			<!-- 기존에 작성한 후기 있는 경우 -->
			<div id="writtenRList">
				<table class="rList" width="790px">
					<tbody>
						<tr>
							<td id="rList_td1">
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<img class="pName" src="" width="80" height="80">
								<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
									주문일 : 2020.03.31
								</p>
							</td>
							<td width="150px">12,000원</td>
							<td width="150px">
								<button type="button" id="writtenReviewBtn" onclick="writtenReview();">내가작성한리뷰</button>
							</td>
						</tr>
						<tr>
							<td id="rList_td1">
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<img class="pName" src="" width="80" height="80">
								<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
									주문일 : 2020.03.31
								</p>
							</td>
							<td width="150px">12,000원</td>
							<td width="150px">
								<button type="button" id="writtenReviewBtn" onclick="writtenReview();">내가작성한리뷰</button>
							</td>
						</tr>
						<tr>
							<td id="rList_td1">
								<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
								<img class="pName" src="" width="80" height="80">
								<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
									주문일 : 2020.03.31
								</p>
							</td>
							<td width="150px">12,000원</td>
							<td width="150px">
								<button type="button" id="writtenReviewBtn" onclick="writtenReview();">내가작성한리뷰</button>
							</td>
						</tr>
					</tbody>	
				</table>
			
			</div>
		</div>
		
	</div>

	<script>
		$(function(){
			$("#selectReview").css("color", "rgb(247, 112, 46)");
			$("#selectReviewCate").css("color", "rgb(247, 112, 46)");
			$("#writeReviewCate").css("border",  "2px solid rgb(247, 112, 46)");
			$("#writeReview").show();
			$("#viewMyReview").hide();
			
			$("#writeReviewCate").click(function(){
				$(this).css("border", "2px solid rgb(247, 112, 46)");
				$("#viewMyReviewCate").css("border", "");
				$("#writeReview").show();
				$("#viewMyReview").hide();
			});
			
			$("#viewMyReviewCate").click(function(){
				$("#viewMyReviewCate").css("border", "2px solid rgb(247, 112, 46)");
				$(this).css("border", "");
				$("#viewMyReview").show();
				$("#writeReview").hide();
			});
			
			$(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				location.href="<%=contextPath%>/pDetail.pro?pCode=" + pCode;
			});
			
		});
		
		function writeReview(){
			window.open("<%=contextPath%>/reviewPop.re", "후기 작성", "width=500, height=730, left=500");
		}

		function writtenReview(){
			window.open("<%=contextPath%>/writtenRPop.re", "후기", "width=815, height=665, top=50; left=330");
		}
		
		
	</script>
	
	<%@ include file="../../views/common/mainFooter.jsp" %>
	
</body>
</html>