<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

				<div id="gradeSelect" class="period_slt">
					<dl>
						<dt>조회기간</dt>
						<dd>
							<ul>
								<li><button type="button" data-val="1" data-type="week"><em>1주일</em></button></li>
								<li><button type="button" data-val="1" data-type="month" class="on"><em>1개월</em></button></li>
								<li><button type="button" data-val="3" data-type="month"><em>3개월</em></button></li>
								<li><button type="button" data-val="6" data-type="month"><em>6개월</em></button></li>
							</ul>
						</dd>
					</dl>
				</div>
				
				<div class="sltd_tbl_pop ext lyrtbl">
					
					<div class="sltd_tbl_pop ext_none">
						<!-- LIST NONE -->
						<div class="list_none">
							<span class="txt">기간 내 주문내역이 없습니다.</span>
						</div>
						<!-- LIST NONE -->
						<div class="btns">
							<button class="cancel" onclick="unBlockUI('lyr_odr_slt');return false;"><em>닫기</em></button>
						</div>
						<button type="button" class="close" onclick="unBlockUI('lyr_odr_slt');return false;">주문반품신청 레이어 닫기</button>
					</div>
					
				</div>
				
				
				<div class="btns">
							<button class="cancel" onclick="unBlockUI('lyr_odr_slt');return false;"><em>닫기</em></button>
						</div>

</body>
</html>