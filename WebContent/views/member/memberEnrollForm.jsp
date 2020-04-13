<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 회원가입</title>
 <style>
    .join_box 
    {
	    width: 560px;
	    min-height: 786px;
	    margin: 0 auto 37px;
	    padding: 0 54px;
	    border: 1px solid #e4e7ee;
	    background: #fff;
	    text-align: left;
    }
    .join_box div{display: block;}
    .join_box h2 {
    margin: 41px 0 5px;
    font-size: 32px;
    font-weight: 800;
    line-height: 43px;
    color: #333;
    }

    .join_box h2 em {
    font-weight: 800;
    color: #f7702e;}
    .joinForm em {font-style: italic;}
    .join_box .join_set input {
    display: block;
    width: 522px;
    height: 54px;
    padding: 0 18px;
    font-size: 16px;
    line-height: 50px;
    color: #333;
    }
    .ir {
    display: block;
    overflow: hidden;
    position: absolute !important;
    top: -1000em;
    left: 0;
    z-index: -1;
    height: 0;
    }
    .content {
    position: relative;
    width: 100%;
    min-width: 1060px;
    margin: 0;
    padding: 0;
}
 .wrap.mem {
    /* position: relative; */
    min-height: 480px;
    padding: 120px 0;
    background: #f5f5f5;
    text-align: center;
}

</style>
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

<div class="content">
		<!-- WRAP -->
	<div class="wrap mem">
			
	<form name="joinForm" id="joinForm" method="post" autocomplete="off">			
			<!--// LOCATION SELECT -->
			<div class="join_box" id="join_box">
				<h2><em>더반찬</em> 신규 회원가입</h2>
				<!-- 2017.05.03 삭제 <strong class="sub_tit">필수입력</strong> -->
				<div class="join_set">

					<label for="join_id" class="ir">아이디</label>
					<input type="text" id="join_id" name="login_id" class="login_input" maxlength="20" placeholder="아이디">
					
					<!-- 아이디  오류시 노출 -->
					<span class="caution" id="caution1">아이디를 입력해 주세요.</span>
					
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
					
					<!-- 인증 이전 -->
					<div class="phone_num">
						<input type="hidden" id="cmcm_divi_cd" name="cmcm_divi_cd" value="00">
						<input type="hidden" id="cell_no" name="cell_no">
						<input type="hidden" id="mbr_cert_divi_cd" name="mbr_cert_divi_cd" value="50">
						<input type="hidden" id="mbr_cert_info" name="mbr_cert_info" value="">	
					

						
						
						<!-- 2017.06.23 변경 : 휴대폰 번호 입력 3cut으로 통일 -->
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
						<span class="hp">-</span>
						<input type="text" class="auth_div" id="cell_no2" name="cell_no2" maxlength="4" title="휴대폰번호 중간자리입력">
						<span class="hp">-</span>
						<input type="text" class="auth_div" id="cell_no3" name="cell_no3" maxlength="4" title="휴대폰번호 뒷자리입력">
						<!-- 본인인증 버튼 -->
						<button class="auth" type="button" id="btn_auth" onclick="fnSendCertSms();"><em>본인인증 전송</em></button>
						<!--  재발송 버튼 -->
						<button class="auth_re ir" type="button" id="btn_auth_re" onclick="fnSendCertSms();"><em>재발송</em></button>
						
					</div>

					
					<div class="auth_set">
						<label for="auth_num" class="ir">인증번호</label>
						<div class="input_w auth_div">
							<input type="text" id="auth_num" name="auth_num" maxlength="10" placeholder="인증번호">
						</div>
						<span class="limit" id="_certTime"></span>
						<button class="submit" type="button" id="btn_submit" onclick="fnCheckCertSMS();">확인</button>
					</div>
					
					<div class="auth_fin ir" id="auth_fin">
						<span>본인 인증이 정상처리 되었습니다.</span>
					</div>
					<!-- //인증 이전 -->

					<!--  입력시간 초과 -->
					<span class="caution ir" id="caution4"></span>
					<span class="caution ir" id="auth_msg">인증번호  입력시간이 초과되었습니다</span>
					
					<label for="email"></label>
					<input type="text" id="email" name="email" maxlength="50" placeholder="이메일">
					
					<div class="info_txt">※ 주문관련 정보에 대한 이메일과 <em class="thm">SMS</em>는 자동으로 전송됩니다.</div>
					<span class="caution ir" id="caution5"></span>
					<!-- 2017.06.08 추가 : 추천인 기입란 -->
					<label for="recomm_remark"></label>
					<input type="text" id="recomm_remark" name="recomm_remark" maxlength="40" placeholder="추천인 아이디(선택)">
					<div class="info_txt">※ 더반찬을 추천해준 회원이 있으시면 추천 아이디를 입력해 주세요</div>
					
				</div>
			</div>
			
			<!-- 2017.05.03 변경 .wrap.mem 안으로 이동 및 li 순서 변경 -->
			<div class="agree_box">
				<div class="join_box" id="join_box" style="min-height: 250px;">
					<ul class="agree_list" style="margin-top: 41px;padding: 8px 0 0px 0px;">
						<li>
							<input type="checkbox" id="all_agree" value="N">
							<label for="all_agree" style="color: #555;"><b>약관에 모두 동의합니다.</b>
							<span class="forever_member_notice">전체 약관 동의 시, 1000원 적립금 증정!</span>
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
				<div class="recieve_agree_notice">
					<p>※ 선택 약관에 동의하지 않아도 회원가입이 가능합니다.</p>
					<p>※ 선택 약관 동의 철회는 가입 완료 후 MY더반찬 &gt; 개인정보 수정에서 가능합니다.</p>
				</div>
				<button class="join_up" type="button" id="btn_join_up"><em>가입하기</em></button>

			</div>
			<!-- //2017.05.03 변경 .wrap.mem 안으로 이동 및 li 순서 변경 -->
</form>


		</div>
		<!--// WRAP -->
	</div>

<%@ include file="/views/common/mainFooter.jsp" %>
</body>
</html>