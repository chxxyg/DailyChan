<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.mypage.model.vo.*"%>
<% 
	ArrayList<MemberCoupon> mcList = (ArrayList<MemberCoupon>)request.getAttribute("mcList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 조회</title>
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
	
	
	/* List CSS */
.couponList{
	margin:auto;
	border-top: 1px solid #333;
	border-bottom:1px solid #333;
	border-collapse:collapse;
	margin-top: 50px;
	margin-left: 10px;
	font-size:13px;
}

.couponList thead{
	background:#f5f5f5;
}
	
.couponList tbody>tr{
	border-top: 1px solid lightgray;
}
	

</style>
</head>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	
	<div id="mys_content" class="sub_cont">
			<h3 class="tit">쿠폰 조회</h3>

			<!-- MY TAB -->
			<div class="tab_menu">
				<ul>
					<li id="tab1" class="on">
						<a href="#" onclick="changeTab('1')" class="tab t1">사용 가능쿠폰 (0건)</a>
						
						<% if(mcList.isEmpty()){ %>
						<!-- LIST NONE -->
						<div class="mys_none">
							<span class="txt">사용 가능쿠폰이 없습니다.</span>
						</div>
						<!-- //LIST NONE -->
						<% }else{ %>
						
						<div style="width: 750px;">
						<table class="couponList" width="750" style="text-align: center;">
							<thead>
								<tr height="40">
									<th width="300">쿠폰명</th>
									<th width="100">할인 가격</th>
									<th width="200">사용 조건</th>
									<th width="100">발급일</th>
									<th width="100">유효기간</th>
								</tr>
							</thead>
							<tbody>
							<% for(int i=0; i<mcList.size(); i++ ){ %>
								<tr height="35">
									<td><%=mcList.get(i).getCouponName() %></td>
									<td><%=mcList.get(i).getCouponPrice() %>원</td>
									<td><%=mcList.get(i).getCouponCondition() %>원 이상 구매 시</td>
									<td><%=mcList.get(i).getCouponIssueDate() %></td>
									<td><%=mcList.get(i).getCouponExpDate() %>일</td>
								</tr>
							<% } %>
							</tbody>
						</table>     
						</div>
						<% } %>
					</li>

					<li id="tab2">
						
						<a href="#" onclick="changeTab('2')" class="tab t2">전체 발급쿠폰 (1건)</a>

						<!-- LIST NONE -->
						<div class="mys_none">
							<span class="txt">
								조회 기간 내 발급받은 쿠폰이 없습니다.
							</span>
						</div>
						<!-- //LIST NONE -->
						
					</li>
				</ul>
				
				<span class="btn_go">
					<a href="<%= contextPath %>/eMain.pro" class="go">이벤트페이지 바로가기</a>
				</span>
			</div>
			<!-- //MY TAB -->	

			<!-- MY NOTICE -->
			<div class="mys_notice">
				<h4>쿠폰사용 <b>TIP</b></h4>
				<ul>
					<li>제품 쿠폰 : 한 개의 제품에 적용 가능</li>
					<li>증정 쿠폰 : 사은품으로 주문 가능</li>
					<li>장바구니 쿠폰 : 장바구니 전체 금액에 적용 가능</li>
					<li>무료배송 쿠폰 : 새벽직배송, 일반택배 상관없이 배송비 면제</li>
					<li>제품 할인 / 장바구니 / 무료배송 쿠폰은 주문 시, 각 1개씩 사용 가능합니다.</li>
					<li>주문 취소 시, 사용된 쿠폰은 모두 재발급되며 최초 발급 기준 유효기간이 지난 쿠폰은 재사용이 불가능합니다.</li>
				</ul>
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