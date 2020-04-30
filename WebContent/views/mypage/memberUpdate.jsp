<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보수정</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/dailyChan/resources/js/memberUpdate.js" rel="javascript" type="text/javascript"></script>
<style>
body
{
	width:1000px; 
	height:2000px;
	margin:auto;
}
table 
{
    width: 100%;
    min-width: 100%;
    max-width: none;
    table-layout: fixed;
    border-spacing: 0;
    border-collapse: collapse;
}
.sub_cont {
    position: relative;
    float: left;
    width: 760px;
    min-height: 800px;
    padding: 0 0 40px 30px;
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
.mys_summ {
    position: relative;
    overflow: hidden;
    clear: both;
    padding: 0 0 14px 10px;
}
.mys_summ .tx {
    clear: both;
    padding: 4px 0 18px 0;
    font-size: 14px;
    line-height: 18px;
    color: #767676;
    letter-spacing: -1px;
}
.mys_mod {
    overflow: hidden;
    clear: both;
    margin-bottom: 10px;
}
.mys_mod .tbl {
    clear: both;
    position: relative;
    overflow: hidden;
    margin-bottom: 20px;
    border-top: 1px solid #333;
    border-bottom: 1px solid #dbdbdb;
    background: #fff;
}
.mys_mod .tbl table {
    table-layout: fixed;
    width: 100%;
    margin: -1px 0;
}
legend, caption {
    overflow: hidden;
    width: 1px;
    height: 1px;
    font-size: 0;
    line-height: 0;
}
colgroup 
{
    display: table-column-group;
}
.mys_mod .tbl th {
    padding: 14px 0 14px 30px;
    border-bottom: 1px solid #ededed;
    font-size: 13px;
    line-height: 18px;
    color: #333;
    letter-spacing: -1px;
    text-align: left;
    vertical-align: top;
    background: #f2f5f7;
}
.mys_mod .tbl td {
    padding: 14px 0;
    border-bottom: 1px solid #eee;
    font-size: 13px;
    line-height: 18px;
    color: #666;
}
.mys_mod .tbl td .tx {
    color: #333;
}

.mys_mod .tbl td span {
    display: block;
    padding-left: 25px;
}
th
{
    font-weight: normal;
    font-style: normal;
}
.mys_mod .tbl th .es {
    display: inline-block;
    width: 6px;
    height: 4px;
    margin-left: 2px;
    text-indent: -9999px;
    vertical-align: middle;
    background: url(/dailyChan/resources/img/ico_ess.png) no-repeat 0 0;
    margin-bottom: 4px;
}
.mys_mod .tbl td .chk {
    padding-bottom: 15px;
    color: #333;
}
input[type=radio], input[type=checkbox] {
    position: relative;
    top: -1px;
}
input {
    vertical-align: middle;
}
.mys_mod .tbl td .chk label {
    margin: 0 25px 0 2px;
}
.mys_mod .tbl td .input {
    width: 216px;
    font-size: 13px;
    color: #333;
    letter-spacing: 0;
}
input[type=text], input[type=password], input[type=search], input[type=number] , input[type=date]{
    display: inline-block;
    height: 24px;
    padding: 4px 10px 4px 10px;
    resize: none;
    border: 1px solid #dbdbdb;
    line-height: 24px;
    color: #555;
}
.mys_mod .tbl td .sm {
    padding-bottom: 10px;
    padding-top: 5px;
    font-size: 12px;
    line-height: 16px;
    color: #767676;
}
.mys_mod .tbl td .select {
    display: inline-block;
    width: 70px;
    font-family: 'Tahoma';
    font-size: 13px;
    line-height: 18px;
    color: #222;
}
select {
    display: block;
    height: 32px;
    padding: 4px 4px 7px 8px;
    border: #ccc 1px solid;
    font-family: "Malgun Gothic", "맑은 고딕", "dotum", "돋움", "arial", "sans-serif";
    font-size: 13px;
    line-height: 24px;
}
.mys_mod .tbl td .ph .input {
    display: inline-block;
    width: 50px;
}
.mys_mod .btn {
    overflow: hidden;
    clear: both;
    padding: 10px 0 40px 0;
}
.mys_mod .btn button.sq {
    display: block;
    width: 110px;
    height: 44px;
    margin: 0 auto 4px auto;
    color: #fff;
    background: #363441;
}

.mys_mod .btn button {
    display: inline-block;
    font-size: 14px;
    line-height: 30px;
    color: #222;
    text-align: center;
    border: 0;
}
.mys_text {
    overflow: hidden;
    clear: both;
    padding: 22px 30px 24px 10px;
    margin-bottom: 40px;
    background: #f9f9f9;
    height: 90px;
}
.mys_text li {
    padding: 0 0 4px 12px;
    font-size: 13px;
    line-height: 18px;
    color: #666;
    letter-spacing: -1px;
    background: url(/dailyChan/resources/img/bu_box_gray.png) no-repeat 0 8px;
}
.mys_text ul
{
    padding-inline-start: 20px;
}
.mys_text ul li {
    list-style: none;
}
.mys_text li .es {
    display: inline-block;
    width: 6px;
    height: 4px;
    margin: -1px 0 0 2px;
    text-indent: -9999px;
    vertical-align: middle;
    background: url(/dailyChan/resources/img/ico_ess.png) no-repeat 0 0;
    }

</style>
</head>
<body>
	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	
	<div id="mys_content" class="sub_cont">
			<h3 class="tit">개인정보 수정</h3>
			
			<!-- MY SUMMARY -->
			<div class="mys_summ">
				<div class="tx">소중한 고객정보 제공에 대해 감사 드립니다.</div>
			</div>
			<!-- //MY SUMMARY -->
			
			
			<!-- MY TABLE -->
			<form id="memberFrom" method="post" action="<%=contextPath%>/updateMember.my">
				<input type="hidden" name="userId" value="<%= loginUser.getMemberId() %>">
				<div class="mys_mod">
					<div class="tbl">
						<table>
							<caption>개인정보 | 아이디,이름 및 성별,비밀번호,휴대전화,이메일,주소,SNS연동,생년월일의 정보를 제공하는 표</caption>
							<colgroup>
								<col style="width:220px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">아이디<em class="es">필수입력</em></th>
									<td><span class="tx"><%=loginUser.getMemberId() %></span></td>
								</tr>
								<tr>
									<th scope="row"><label for="m_name">이름 및 성별</label><em class="es">필수입력</em></th>
									<td>  
										<span class="chk">
											<input type="radio" name="gend_cd" id="female" <% if(loginUser.getGender().equals("F") || loginUser.getGender() == null){ %>checked="checked"<% } %> value="F">
											<label for="female">여자</label>
											<input type="radio" name="gend_cd" id="male" <% if(loginUser.getGender().equals("M")){ %>checked="checked"<% } %> value="M">
											<label for="male">남자</label>
										</span>
										<span class="tx"><input type="text" id="m_name" name="mbr_nm" class="input" value="<%=loginUser.getMemberName()%>"></span>
										<span class="sm" name="mbr_msg" style="display:none;">이름은 한글, 영문만 가능합니다.</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="m_pw">비밀번호</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="password" id="m_pw" name="pwd" class="input" placeholder="새로운 비밀번호를 입력해 주세요." maxlength="20"></span>
										<span class="sm" name="pwd" style="display:none;">비밀번호는 영문, 숫자 혹은 영문, 숫자, 기호를 조합한 10자 이상으로 만들어 주세요.</span>									
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="m_pw_re">비밀번호 재입력</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="password" id="m_pw_re" class="input" placeholder="비밀번호를 재 입력해 주세요." maxlength="20"></span>
										<span class="sm" name="pwd_re" style="display:none;">비밀번호를 재 입력해 주세요.</span>
									</td>
								</tr>
								
								<% 
									String cellPhone = loginUser.getPhone(); 
									String cellNO1, cellNO2, cellNO3 = "";
									if(cellPhone.length() == 11)
									{
										cellNO1 = cellPhone.substring(0, 2);
										cellNO2 = cellPhone.substring(3, 6);
										cellNO3 = cellPhone.substring(7, 10);
									}
									else
									{
									    cellNO1 = cellPhone.substring(0, 2);
										cellNO2 = cellPhone.substring(3, 5);
										cellNO3 = cellPhone.substring(6, 9);
									}
								%>
								<tr>
									<th scope="row"><label for="cell_no1">휴대전화</label><em class="es">필수입력</em></th>
									<td>
										<span class="ph">
											<select id="cell_no1" name="cell_no1" class="select" data-class="phone_chk" title="휴대폰 앞자리 선택"><option value="<%=cellNO1%>">"<%=cellNO1%>"</option><option value="010" selected="selected">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option><option value="0502">0502</option><option value="0503">0503</option><option value="0504">0504</option><option value="0505">0505</option><option value="0506">0506</option><option value="0507">0507</option></select>
											<em>-</em>
											<input type="text" class="input" id="cell_no2" name="cell_no2" data-class="phone_chk" title="휴대폰 중간자리 입력" value="<%=cellNO2 %>" maxlength="4" >
											<em>-</em>
											<input type="text" class="input" id="cell_no3" name="cell_no3" data-class="phone_chk" title="휴대폰 마지막 4자리 입력" value="<%=cellNO3 %>" maxlength="4">
										</span>
										<span class="sm" name="cell_no" style="">휴대전화 번호는 숫자만 가능합니다.</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="email">이메일</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="text" id="email" name="email" class="input" validate="empty" value="<%=loginUser.getEmail()%>" readonly="readonly"></span>
										<span class="sm" name="email" style="display:none;"></span>
										<span class="sms">주문관련 정보에 대한 이메일과 SMS는 자동으로 전송됩니다.</span>
									</td>
								</tr>


								<% 
									StringBuffer userBirth = new StringBuffer(loginUser.getBirth());
									userBirth.insert(4, '-');
									userBirth.insert(7, '-');
								%>
								<tr>
									<th scope="row">생년월일</th>
									<td>
										<span class="bir">
										<input id="input_date" type="date" name="birthday" value="<%=userBirth%>">
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="btn">
						<button type="button" id="saveBtn" class="sq">저장하기</button>
					</div>
				</div>
			</form>
			<!-- //MY TABLE -->

			<!-- MY TEXT -->
			<div class="mys_text">
				<ul>
					<li>입력하시는 정보 중 <em class="es">필수입력</em>항목은 필수정보이며, <em class="es">필수입력</em>가 없는 선택 입력 정보는 필수 입력사항이 아닙니다.</li>
					<li>제공해주신 정보는  더욱 편리하고 만족스러운 서비스를 위해 사용되고 있으며 본 서비스 이외에서 사용될 수 없습니다.</li> 
					<li>저희 데일리찬은 정보보안 규정 준수를 통해 제공해주신 소중한 정보의 유출을 막기 위해 최선을 다하고 있습니다.</li> 
				</ul>
			</div>
			<!-- //MY TEXT -->
		</div>
	
	<%@ include file="../../views/common/mainFooter.jsp" %>
	
	<script>
		
	</script>
</body>
</html>