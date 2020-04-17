<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 회원가입</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/memberEnrollForm.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/dailyChan/resources/js/memberEnrollForm.js" rel="javascript" type="text/javascript"></script>
</head>
<body id="enrollBody">

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

<div class="content">
		<!-- WRAP -->
	<div class="wrap mem">
			
	<form name="joinForm" id="joinForm" method="post" action="successEnroll.me">			
			<!--// LOCATION SELECT -->
			<div class="join_box" id="join_box">
				<h2><strong>데일리찬</strong> 신규 회원가입</h2>
				<!-- 2017.05.03 삭제 <strong class="sub_tit">필수입력</strong> -->
				<div class="join_set">

					<label for="join_id" class="ir">아이디</label>
					<input type="text" id="join_id" name="login_id" class="login_input" maxlength="20" placeholder="아이디">
					
					<!-- 아이디  오류시 노출 -->
					<span class="caution" id="caution1" style="display: block">아이디를 입력해 주세요.</span>
					
					<label for="join_pw" class="ir">비밀번호</label>
					<input type="password" id="join_pw" name="pwd" class="login_input" maxlength="20" placeholder="비밀번호">
					<label for="join_pw_re" class="ir">비밀번호</label>
					<input type="password" id="join_pw_re" class="login_input" placeholder="비밀번호 재입력">
					
					<!-- 비번 오류시 노출 -->
					<span class="caution ir" id="caution2"></span>
					
					<label for="join_name" class="ir">이름</label>
					<input type="text" id="join_name" name="mbr_nm" class="login_input" maxlength="20" placeholder="이름">
					
					<!-- 이름/성별 오류시 노출 -->
					<span class="caution ir" id="caution3"></span>
					
					<div class="phone_num">
						
						<label class="ir" for="cell_no1">휴대폰번호</label>
						<select id="cell_no1" class="auth_div" name="cell_no1" title="휴대폰번호 앞자리선택">
							<option value="">선택</option>
							
							<option value="010">010</option>
							
							<option value="011">011</option>
							
							<option value="016">016</option>
							
							<option value="017">017</option>
							
							<option value="018">018</option>
							
							<option value="019">019</option>
							
							<option value="0502">0502</option>
							
							<option value="0503">0503</option>
							
							<option value="0504">0504</option>
							
							<option value="0505">0505</option>
							
							<option value="0506">0506</option>
							
							<option value="0507">0507</option>
							
						</select>
						<input type="text" class="auth_div" id="cell_no2" name="cell_no2" maxlength="8" title="휴대폰번호 뒷자리입력" placeholder="- 빼고 입력해주세요">
						<span class="caution ir" id="caution4"></span>
					</div>
					
					<br clear="both">
					<div id="email_auth_form">
					<label for="email"></label>
					<input type="text" id="email" name="email" maxlength="30" placeholder="이메일">
					<button id = emailAuth_btn href="">이메일 인증</button>
					</div>
					<br clear="both">
					<div class="info_txt">※ 주문관련 정보에 대한 이메일과 SMS는 자동으로 전송됩니다.</div>
					<span class="caution ir" id="caution5"></span>
					<!-- 2017.06.08 추가 : 추천인 기입란 -->
					<label for="recomm_remark"></label>
					<input type="text" id="recomm_remark" name="recomm_remark" maxlength="40" placeholder="추천인 아이디(선택)">
					<div class="info_txt">※ 더반찬을 추천해준 회원이 있으시면 추천 아이디를 입력해 주세요</div>
					
				</div>
			</div>
			
			<div class="agree_box">
				<div class="join_box" id="join_box" style="min-height: 250px;">
					<ul class="agree_list" style="margin-top: 41px;padding: 8px 0 0px 0px;">
						<li>
							<input type="checkbox" id="all_agree" value="N">
							<label for="all_agree" style="color: #555;"><b>약관에 모두 동의합니다.</b>
							</label>
							<ul class="agree_list">
										
								
											
										<li>
											<input type="checkbox" id="2002000080" name="add_info" class="agreeChk validChk" value="2002000080">
											<label for="2002000080"> (필수) 서비스 이용약관</label><a href="javascript:overpass.link('AGREE',{gbn:'2002000080', target:'_blank'})" class="detail arrow_btn01">내용 보기</a>
										</li>
					
								
											
										<li>
											<input type="checkbox" id="2002000081" name="add_info" class="agreeChk validChk" value="2002000081">
											<label for="2002000081"> (필수) 개인정보처리방침</label><a href="javascript:overpass.link('AGREE',{gbn:'2002000081', target:'_blank'})" class="detail arrow_btn01">내용 보기</a>
										</li>
					
								
										<li>
											<input type="checkbox" id="age_agree" class="agreeChk" value="N">
											<label for="age_agree">(필수) 본인은 <strong>만 14세</strong> 이상입니다.</label>
										</li>
							</ul>
						</li>
					</ul>
				</div>
				<button class="join_up" type="button" id="btn_join_up"><strong>가입하기</strong></button>

			</div>
		</form>


	</div>
		<!--// WRAP -->
</div>

<%@ include file="/views/common/mainFooter.jsp" %>

</body>
</html>