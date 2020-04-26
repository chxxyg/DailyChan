<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 조회</title>
<style>
	body
	{
		width: 1000px;
		height: 1700px;
		margin: auto;
	}
	.sub_cont {
    position: relative;
    float: left;
    width: 770px;
    min-height: 800px;
    padding: 0 0 40px;
}
.sub_cont h3.tit {
    padding: 0 0 15px 0;
    margin-bottom: 25px;
    border-bottom: 1px solid #ededed;
    font-size: 21px;
    color: #000;
    line-height: 22px;
    font-weight: bold;
    letter-spacing: -1px;
}
.tab_menu {
    overflow: hidden;
    clear: both;
    position: relative;
    width: 770px;
    padding-top: 28px;
    height: 350px;
}
.tab_menu ul{
    list-style: none;
    padding-left: 0;
    padding-top: 0;
    margin-top; 0;
    height: 10px;
}
.tab_menu li.on .tab {
    z-index: 3;
    width: 210px;
    height: 41px;
    border: 2px solid #f7702e;
    border-bottom: 0;
    line-height: 37px;
    color: #f7702e;
    font-weight: bold;
    background: #fff;
}
.tab_menu .tab {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
    width: 212px;
    height: 40px;
    border: 1px solid #dbdbdb;
    border-bottom: 0;
    font-size: 14px;
    line-height: 38px;
    color: #767676;
    letter-spacing: -1px;
    text-align: center;
    background: #f9f9f9;
    list-style: none;
    font-family: inherit;
    text-decoration: none;
}
.tab_menu li.on > div {
    display: block;
    
}
.tab_menu li > div {
    display: none;
}
.mys_none {
    overflow: hidden;
    clear: both;
    border-top: 1px solid #333;
    float: left;
    margin-left: 0;
    width: 100%;
    
}
.mys_none .txt {
    display: block;
    height: 185px;
    padding-top: 55px;
    margin-top: 120px;
    font-size: 18px;
    line-height: 24px;
    color: #333;
    text-align: center;
    background: url(/dailyChan/resources/img/ico_noti.png) no-repeat 50% 0;
}
.tab_menu .btn_go {
    position: absolute;
    right: 0;
    top: 0;
}
.tab_menu .btn_go .go {
    display: inline-block;
    height: 30px;
    padding: 0 26px 0 11px;
    border: 1px solid #dbdbdb;
    font-size: 12px;
    line-height: 30px;
    color: #222;
    letter-spacing: -1px;
    background: url(/dailyChan/resources/img/ico_arr_gray.png) no-repeat right 50%;
    text-decoration: none;
    cursor: pointer;
}
.mys_notice {
    overflow: hidden;
    clear: both;
    padding: 38px 34px 34px 110px;
    margin-bottom: 50px;
    background: #efefef url(/dailyChan/resources/img/ico_noti_b.png) no-repeat 40px 40px;
}

.mys_notice h4 {
    margin-bottom: 8px;
    font-size: 16px;
    line-height: 18px;
    color: #333;
    font-weight: bold;
}

.mys_notice ul 
{
	padding-inline-start: 0px;
}

.mys_notice li {
    padding: 0 0 4px 12px;
    font-size: 13px;
    line-height: 18px;
    color: #666;
    letter-spacing: -1px;
    background: url(/dailyChan/resources/img/bu_box_gray.png) no-repeat 0 8px;
	list-style: none;
}
</style>
</head>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	
	<div id="mys_content" class="sub_cont">
			<h3 class="tit">적립금 조회</h3>

						<div class="mys_none">
							<span class="txt">사용/적립 내역이 없습니다.</span>
						</div>
						<!-- //LIST NONE -->
			</div>
			<!-- //MY TAB -->	

			<!-- MY NOTICE -->
			<div class="mys_notice">
				<h4>적립금 <b>TIP</b></h4>
				<ul>
					<li>적립금은 현금처럼 주문결제 시 10원부터 사용이 가능합니다.</li>
					<li>적립금은 현금으로 환불 될 수 없습니다.</li>
					<li>적립금의 유효기간은 최대 1년입니다. 이벤트 및 프로모션에 따라 유효기간이 상이하며, 기간 내 사용되지 않은 적립금은 자동 소멸됩니다.</li>
			</div>
			<!-- //MY NOTICE -->
		</div>
	
	
	<%@ include file="../../views/common/mainFooter.jsp" %>
	
	
	
	
	
	
	<script type="text/javascript">
	var _global_param = {
			date_divi :'6', 
			date_divi_tp : 'month', 
			startCalObj : $('#cal_start'), 
			endCalObj : $('#cal_end'),
			startInputObj : $('#date_start'),
			endInputObj : $('#date_end') 
			}
	
	var checkPeriod = 12;
	
	$(document).ready(function(){
		if($("#checkPeriod").length > 0) {
			checkPeriod = 6;
		}
		//검색기간 클릭 이벤트
		$(".d_gradeSelect").each(function(){
			var $this = $(this);
			var $links = $this.find("button");
			$links.on("click",function(e){
				$links.removeClass("on");
	
				$(this).addClass("on");
				
				//기간 버튼 클릭시 달력영역 날짜 세팅
				overpass.mypage.searchFilter.selectPeriodBtn($(this));
			})
		});
		
		//달력 초기화
		overpass.mypage.searchFilter.initCal(_global_param.startCalObj, _global_param.startInputObj, _global_param.endInputObj, checkPeriod);
		overpass.mypage.searchFilter.initCal(_global_param.endCalObj, _global_param.startInputObj, _global_param.endInputObj, checkPeriod);
		
		//검색 버튼 초기화
		//overpass.mypage.searchFilter.initBtn();		
		if(_global_param.date_divi_tp=='week' || _global_param.date_divi_tp=='month'){
			overpass.mypage.searchFilter.initBtn($('.d_gradeSelect > span > button[data-val='+_global_param.date_divi+'][data-type='+_global_param.date_divi_tp+']'));
		}
		
		//검색기간 readonly처리
		$('#date_start').attr("readonly", true);
		$('#date_end').attr("readonly", true);
		
		//크롬에서 float:left 깨짐 버그를 방지하기 위해 한번 더 왼쪽 붙임 작업 수행
		$(".mys_sch > dl dd .sel button").css("float","left");
	});
	
	// 현재 선택된 검색 조건을 form 에 append 한다.
	var _checkValidationAndAppendDataToForm = function(formObj){
		
		//_preventDefault();
		
		var date_divi_tp='';
		var date_divi='';
		var date_start='';
		var date_end='';
		
		$('[id^=period_]').each(function(){
			if($(this).attr("class")=="on"){
				date_divi = $(this).data("val");
				date_divi_tp = $(this).data("type");
			}
		});
		
		if(date_divi_tp == '' && $('#date_start').val()!='' && $('#date_end').val()!=''){
			date_divi_tp='menual';
			date_divi='';
		}
		
		date_start=$('#date_start').val();
		date_end=$('#date_end').val();
		
		if(date_divi_tp==''){
			alert('검색 조건을 설정해 주세요.');	
			return false;
		}
		
		if(!overpass.mypage.searchFilter.checkPeriodCondition(checkPeriod)){
			return false;
		}
		
	    $('#'+formObj).append("<input type='hidden' value='"+date_divi_tp+"' name='date_divi_tp'/>");
		$('#'+formObj).append("<input type='hidden' value='"+date_divi+"' name='date_divi'/>");
		$('#'+formObj).append("<input type='hidden' value='"+date_start+"' name='date_start'/>");
		$('#'+formObj).append("<input type='hidden' value='"+date_end+"' name='date_end'/>");
		
		return true;
	}
</script>
</body>
</html>