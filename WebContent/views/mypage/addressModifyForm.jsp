<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 추가/수정</title>
<style>
.pop_wrap {
    overflow: hidden;
    position: relative;
    width: 100%;
}	
.pop_wrap select
{
	font-size: 13px;
    line-height: 24px;
}
#pop_addr_modi .pop_box {
    width: 380px;
}
.pop_wrap .pop_box {
    overflow: hidden;
    position: relative;
    width: 638px;
    margin: 0 auto;
}
#pop_addr_modi h1 {
    padding: 27px 0 12px 8px;
    font-size: 20px;
    text-align: left;
}
.pop_wrap .pop_box h1 {
    display: block;
    padding: 18px 0 25px 0;
    border-bottom: 1px solid #333;
    font-size: 20px;
    font-weight: bold;
    line-height: 1;
    text-align: center;
    letter-spacing: -1px;
    color: #222;
    }
    #pop_addr_modi .pop_box .cont {
    padding-top: 20px;
}
#pop_addr_modi .pop_box .cont label {
    float: left;
    width: 80px;
    height: 44px;
    padding-left: 7px;
    font-size: 14px;
    line-height: 42px;
    color: #333;
}
#pop_addr_modi .pop_box .cont label em {
    color: #fe7600;
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
#pop_addr_modi .insert_name {
    float: left;
    width: 271px;
    min-height: 36px;
    font-size: 14px;
    color: #999;
}

input[type=text], input[type=password], input[type=search], input[type=number] {
    display: inline-block;
    height: 24px;
    padding: 2px 10px 4px 10px;
    resize: none;
    border: 1px solid #dbdbdb;
    line-height: 24px;
    color: #555;
}
#pop_addr_modi span.caution {
    display: inline-block;
    margin-top: 3px;
    padding-left: 100px;
    color: #fe0000;
    font-size: 12px;
    font-weight: normal;
    letter-spacing: -0.4px;
}
#pop_addr_modi .cont_d {
    float: left;
    width: 292px;
    min-height: 44px;
}
#pop_addr_modi button.zip {
    width: 102px;
    height: 32px;
    margin-top: 16px;
    background: #383a42;
    color: #fff;
}
#pop_addr_modi button.zip em {
    width: 95px;
    background: url(/dailyChan/resources/img/arrow_03.png) no-repeat right 4px;
    font-weight: normal;
    font-style: normal;
    font-size: 12px;
   	display: block;
    margin-top: -2px;
}
#pop_addr_modi button
{
    display: block;
    overflow: visible;
    margin: 0;
    padding: 0;
    cursor: pointer;
    border: 0;
    background: none;
}
#pop_addr_modi .pop_box .cont .cont_wrap:after {
    display: block;
    clear: both;
    content: "";
}
#pop_addr_modi .cont_d.addr > span {
    display: block;
    margin: 6px 0 8px;
    font-style: normal;
    font-size: 12.5px;
    font-weight: 500;
    letter-spacing: -0.4px;
    color: #333;
}
#pop_addr_modi .pop_box .cont .cont_wrap.cell {
    margin-top: 16px;
}
#pop_addr_modi .pop_box .cont label {
    float: left;
    width: 80px;
    height: 44px;
    padding-left: 7px;
    font-size: 14px;
    line-height: 42px;
    color: #333;
}
#pop_addr_modi .pop_box .cont label em {
    color: #fe7600;
}
#pop_addr_modi .cont_d {
    float: left;
    width: 292px;
    min-height: 44px;
}
#pop_addr_modi .celluar select {
    float: left;
    width: 92px;
    height: 44px;
}
#pop_addr_modi .celluar select {
    float: left;
    width: 78px;
    height: 44px;
}
#pop_addr_modi .celluar .dash {
    float: left;
    width: 10px;
    height: 44px;
    line-height: 44px;
    text-align: center;
}
#pop_addr_modi .input_txt {
    float: left;
    width: 68px;
    height: 36px;
    font-size: 13px;
    line-height: 36px;
    color: #333;
}
#pop_addr_modi .set_default {
    margin: 28px 0 0;
    padding: 10px;
    border-top: 1px solid #dbdbdb;
    line-height: 2;
    font-size: 12px;
    font-weight: normal;
    letter-spacing: -0.4px;
    color: #333;
}
#pop_addr_modi button.save {
    width: 110px;
    height: 32px;
    margin: 12px auto 30px;
    background: #383a42;
    color: #fff;
}
#pop_addr_modi button.save em
{
    font-style: normal;
}
#pop_addr_modi .insert_name {
    float: left;
    width: 271px;
    min-height: 36px;
    font-size: 14px;
    color: #999;
}

</style>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/dailyChan/resources/js/addressModifyForm.js" rel="javascript" type="text/javascript"></script>
</head>
<body>
<div class="pop_wrap" id="pop_addr_modi">
		<div class="pop_box ">
			<h1>배송주소 추가/수정</h1>
			<div class="cont">
				<div class="cont_wrap">
					<label for="name">이름 <em>*<span class="ir">필수정보</span></em></label>
					<input type="text" name="recvr_nm" id="recvr_nm" class="insert_name" title="이름 입력" placeholder="성과 이름을 붙여주세요" maxlength="33" data-role="input" data-message="이름은 한글, 영문으로 입력해 주세요." data-input="input" data-input-name="recvr_nm" data-check="kor_eng">
					<span class="caution" data-input="display" data-input-name="recvr_nm" style="display: none;">이름을 입력하세요</span>
				</div>
				<div class="cont_wrap">
					<label for="addr">주소 <em>*<span class="ir">필수정보</span></em></label>
					<div class="cont_d addr">
						<button class="zip" id="zipcode_button" title="우편번호 찾기(새창)"><em>우편번호 찾기</em></button>
						<!--  초기화면  -->
						<span class="txt" id="base_addr_info">
						우편번호 찾기를 통해 주소를 확인하신 후 상세주소를 <br>아래에 입력해주시기 바랍니다.
						</span>
						<!-- 검색결과 -->
						<span class="txt" id="addr_area"></span>
						<input type="text" name="dtl_addr" id="dtl_addr" class="insert_name" title="상세주소 입력" maxlength="133" data-role="input" data-check="text" data-message="상세 주소를 입력해 주세요" data-input="input" data-input-name="dtl_addr">
						<input type="hidden" name="addr_divi_cd" id="addr_divi_cd" data-role="input" data-no-check="Y" value="20">
						<input type="hidden" name="zonecode" id="zonecode" data-role="input" value="">
						<input type="hidden" name="roadAddress" id="roadAddress" data-role="input" value="">
						<input type="hidden" name="extraRoadAddr" id="extraRoadAddr" data-role="input" value="">
					</div>
					<span class="caution" data-input="display" data-input-name="dtl_addr" style="display: none;">상세 주소를 입력해 주세요</span>
				</div>
				<div class="cont_wrap cell">
					<label for="celluar">휴대전화 <em>*<span class="ir">필수정보</span></em></label>
					<div class="cont_d celluar">
						<select title="휴대폰번호 첫번째 자리" id="cell_no1" name="cell_no1" data-role="input" data-message="휴대 전화번호를 입력해 주세요" data-input="input" data-input-name="cell_no">
							<option value="">선택</option><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option>
						</select>
						<span class="dash">-</span>
						<input type="text" class="input_txt" title="휴대폰번호 두번째 자리" name="cell_no2" id="cell_no2" maxlength="4" data-role="input" data-message="휴대 전화번호를 입력해 주세요" data-check="number" data-min-length="3" data-input="input" data-input-name="cell_no" data-input-no="1">
						<span class="dash">-</span>
						<input type="text" class="input_txt" title="휴대폰번호 세번째 자리" name="cell_no3" id="cell_no3" maxlength="4" data-role="input" data-message="휴대 전화번호를 입력해 주세요" data-check="number" data-min-length="4" data-input="input" data-input-name="cell_no" data-input-no="2">
					</div>
					<span class="caution" data-input="display" data-input-name="cell_no" style="display: none;">휴대 전화번호를 입력해 주세요</span>
				</div>
			</div><div class="set_default">
				<input type="checkbox" id="set_default">
				<label for="set_default">기본배송지로 설정</label>
			</div>
			<button class="save" id="save_dlvp_button"><em>저장</em></button>
		</div>
	</div>
	<script type="text/javascript">


	</script>
</body>
</html>