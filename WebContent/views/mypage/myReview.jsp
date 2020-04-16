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

	<%@ include file="mypageMainOuter.jsp" %>

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

	<script>
	$(function(){
			$("#selectReview").css("color", "rgb(247, 112, 46)");
		});
	</script>

</body>
</html>