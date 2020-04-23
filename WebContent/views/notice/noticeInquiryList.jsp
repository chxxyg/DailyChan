<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 상담내역</title>

<style>

.outer{
	width:860px;
	height:auto;
	min-height:700px;
	margin-top:70px;
	margin-left:30px;
	/* border:1px solid black; */
	float:left;
}

.sub_cont h3 {
    margin: 0 0 15px;
    font-size: 21px;
    font-weight: 800;
    line-height: 1;
    color: #000;
}
.mys_sch {
    position: relative;
    margin-top:38px;
    margin-bottom: 20px;
    padding: 25px 30px 22px 30px;
    border: 3px solid #f0eded;
}
.mys_sch .txt {
    overflow: hidden;
    clear: both;
    font-size: 13px;
    line-height: 16px;
    letter-spacing: -1px;
    color: #666;
}
.mys_none .txt {
    display: block;
    margin-top: 120px;
    padding-top: 55px;
    background: url(../images/gds/ico_noti.png) no-repeat 50% 0;
    font-size: 18px;
    line-height: 24px;
    text-align: center;
    color: #333;
}

</style>
</head>
<body>
<%@ include file="../common/mainHeader.jsp" %>
<%@ include file="../common/mainSideBar.jsp" %>


<%@ include file="leftCategory.jsp" %>

<div class="outer">
	<h3 class="tit2">1:1 상담내역</h3>

<div id="mys_content" class="sub_cont">
		
			
			<!-- DATE SEARCH -->
			
	<div class="mys_sch">
		<dl>
			<dt>조회기간</dt>
			<dd class="d_gradeSelect">
				<span class="sel">
					<button id="period_1w" type="button" data-val="1" data-type="week" style="float: left;">1주일</button>
					<button id="period_1m" type="button" data-val="1" data-type="month" class="on" style="float: left;">1개월</button>
					<button id="period_3m" type="button" data-val="3" data-type="month" style="float: left;">3개월</button>
					<button id="period_6m" type="button" data-val="6" data-type="month" style="float: left;">6개월</button>
				</span>
			</dd>
			<dd>
				<span class="date">
					<input type="text" class="input_txt input_date" title="기간검색 시작일" id="date_start" name="date_start" value="2020-03-21" readonly="readonly">
					<button type="button" id="cal_start" title="조회기간 선택 달력 레이어 열기">-</button>
				</span>
				<span class="tx">~</span>
				<span class="date">
					<input type="text" class="input_txt input_date" title="기간검색 종료일" id="date_end" name="date_end" value="2020-04-21" readonly="readonly">
					<button type="button" id="cal_end" title="조회기간 선택 달력 레이어 열기">-</button>
				</span>
			</dd>
			<dd><button type="button" class="bt_sch" id="searchBtn">조회</button></dd>
		</dl>
		<div class="txt" id="guide_text">기간을 선택하신 후에 조회하기 버튼을 클릭하시면 해당 기간의 1:1상담 내역이 확인됩니다. (최대 1년 이내로 조회하실 수 있습니다.)</div>	
		
		<!-- CALENDER LAYER -->
		<div class="show_calendar" id="show_calendar"></div>
		<!--// CALENDER LAYER -->			
	</div>
	<!-- //DATE SEARCH -->
	
	<script type="text/javascript">

	
	$(function(){
		$("#left_03").css("color", "rgb(247, 112, 46)");
	});

		</script>
			<!-- //DATE SEARCH -->

			<!-- MY LIST -->	
	
							
			<!-- LIST NONE -->
			<div class="mys_none">
				
				<span class="txt"><img id="cautionlogo" src="/dailyChan/resources/img/cautionlogo.png" width="25px" height="20px">1:1 친절상담 내역이 없습니다.</span>
			</div>
			<!-- //LIST NONE-->

			<!-- //MY LIST -->			
			
		</div>

</div>

<%@ include file="../common/mainFooter.jsp" %>

</body>
</html>