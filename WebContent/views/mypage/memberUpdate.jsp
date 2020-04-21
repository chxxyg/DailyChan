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
input[type=text], input[type=password], input[type=search], input[type=number] {
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
			<form id="memberFrom" method="post">
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
									<td><span class="tx">okt0312</span></td>
								</tr>
								<tr>
									<th scope="row"><label for="m_name">이름 및 성별</label><em class="es">필수입력</em></th>
									<td>  
										<span class="chk">
											<input type="radio" name="gend_cd" id="female" checked="checked" value="F">
											<label for="female">여자</label>
											<input type="radio" name="gend_cd" id="male" value="M">
											<label for="male">남자</label>
										</span>
										<span class="tx"><input type="text" id="m_name" name="mbr_nm" class="input" validate="empty" value="오경택"></span>
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
								<tr>
									<th scope="row"><label for="cell_no1">휴대전화</label><em class="es">필수입력</em></th>
									<td>
										<input type="hidden" id="phone_chk" name="phone_chk" value="N">
										<span class="ph">
																			
											<select id="cell_no1" name="cell_no1" class="select" data-class="phone_chk" title="휴대폰 앞자리 선택"><option value="">선택</option><option value="010" selected="selected">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option><option value="0502">0502</option><option value="0503">0503</option><option value="0504">0504</option><option value="0505">0505</option><option value="0506">0506</option><option value="0507">0507</option></select>
											<em>-</em>
											<input type="text" class="input" id="cell_no2" name="cell_no2" data-class="phone_chk" title="휴대폰 중간자리 입력" value="8614" maxlength="4">
											<em>-</em>
											<input type="text" class="input" id="cell_no3" name="cell_no3" data-class="phone_chk" title="휴대폰 마지막 4자리 입력" value="5374" maxlength="4">
										</span>
										<span class="sm" name="cell_no" style="">휴대전화 번호는 숫자만 가능합니다.</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="email">이메일</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="text" id="email" name="email" class="input" validate="empty" value="okt0312@naver.com"></span>
										<span class="sm" name="email" style="display:none;"></span>
										<span class="sms">주문관련 정보에 대한 이메일과 SMS는 자동으로 전송됩니다.</span>
									</td>
								</tr>

								<tr>
									<th scope="row">생년월일</th>
									<td>
										<input type="hidden" id="birth_chk" name="birth_chk" value="N">
										<span class="bir">
											<select id="year" name="year" class="select" data-class="birth_chk" title="생년 선택">
												<!-- <option value="2017">2017</option> -->
												<option value="">선택</option>
												

												<option value="1907">1907</option>

												<option value="1908">1908</option>

												<option value="1909">1909</option>

												<option value="1910">1910</option>

												<option value="1911">1911</option>

												<option value="1912">1912</option>

												<option value="1913">1913</option>

												<option value="1914">1914</option>

												<option value="1915">1915</option>

												<option value="1916">1916</option>

												<option value="1917">1917</option>

												<option value="1918">1918</option>

												<option value="1919">1919</option>

												<option value="1920">1920</option>

												<option value="1921">1921</option>

												<option value="1922">1922</option>

												<option value="1923">1923</option>

												<option value="1924">1924</option>

												<option value="1925">1925</option>

												<option value="1926">1926</option>

												<option value="1927">1927</option>

												<option value="1928">1928</option>

												<option value="1929">1929</option>

												<option value="1930">1930</option>

												<option value="1931">1931</option>

												<option value="1932">1932</option>

												<option value="1933">1933</option>

												<option value="1934">1934</option>

												<option value="1935">1935</option>

												<option value="1936">1936</option>

												<option value="1937">1937</option>

												<option value="1938">1938</option>

												<option value="1939">1939</option>

												<option value="1940">1940</option>

												<option value="1941">1941</option>

												<option value="1942">1942</option>

												<option value="1943">1943</option>

												<option value="1944">1944</option>

												<option value="1945">1945</option>

												<option value="1946">1946</option>

												<option value="1947">1947</option>

												<option value="1948">1948</option>

												<option value="1949">1949</option>

												<option value="1950">1950</option>

												<option value="1951">1951</option>

												<option value="1952">1952</option>

												<option value="1953">1953</option>

												<option value="1954">1954</option>

												<option value="1955">1955</option>

												<option value="1956">1956</option>

												<option value="1957">1957</option>

												<option value="1958">1958</option>

												<option value="1959">1959</option>

												<option value="1960">1960</option>

												<option value="1961">1961</option>

												<option value="1962">1962</option>

												<option value="1963">1963</option>

												<option value="1964">1964</option>

												<option value="1965">1965</option>

												<option value="1966">1966</option>

												<option value="1967">1967</option>

												<option value="1968">1968</option>

												<option value="1969">1969</option>

												<option value="1970">1970</option>

												<option value="1971">1971</option>

												<option value="1972">1972</option>

												<option value="1973">1973</option>

												<option value="1974">1974</option>

												<option value="1975">1975</option>

												<option value="1976">1976</option>

												<option value="1977">1977</option>

												<option value="1978">1978</option>

												<option value="1979">1979</option>

												<option value="1980">1980</option>

												<option value="1981">1981</option>

												<option value="1982">1982</option>

												<option value="1983">1983</option>

												<option value="1984">1984</option>

												<option value="1985">1985</option>

												<option value="1986">1986</option>

												<option value="1987">1987</option>

												<option value="1988">1988</option>

												<option value="1989">1989</option>

												<option value="1990">1990</option>

												<option value="1991">1991</option>

												<option value="1992">1992</option>

												<option value="1993">1993</option>

												<option value="1994">1994</option>

												<option value="1995">1995</option>

												<option value="1996">1996</option>

												<option value="1997">1997</option>

												<option value="1998">1998</option>

												<option value="1999">1999</option>

												<option value="2000">2000</option>

												<option value="2001">2001</option>

												<option value="2002">2002</option>

												<option value="2003">2003</option>

												<option value="2004">2004</option>

												<option value="2005">2005</option>

												<option value="2006">2006</option>

												<option value="2007">2007</option>

												<option value="2008">2008</option>

												<option value="2009">2009</option>

												<option value="2010">2010</option>

												<option value="2011">2011</option>

												<option value="2012">2012</option>

												<option value="2013">2013</option>

												<option value="2014">2014</option>

												<option value="2015">2015</option>

												<option value="2016">2016</option>

												<option value="2017">2017</option>

												<option value="2018">2018</option>

												<option value="2019">2019</option>

												<option value="2020">2020</option>
											
											</select><label for="year">년</label>
											<select id="month" name="month" class="select" data-class="birth_chk" title="생월 선택">
												<option value="">선택</option>
                                        
				            					<option value="01">01</option>
                                        
				            					<option value="02">02</option>
                                        
				            					<option value="03">03</option>
                                        
				            					<option value="04">04</option>
                                        
				            					<option value="05">05</option>
                                        
				            					<option value="06">06</option>
                                        
				            					<option value="07">07</option>
                                        
				            					<option value="08">08</option>
                                        
				            					<option value="09">09</option>
                                        
				            					<option value="10">10</option>
                                        
				            					<option value="11">11</option>
                                        
				            					<option value="12">12</option>
											
												<!-- <option value="04">04</option> -->
											</select><label for="month">월</label>
											<select id="day" name="day" class="select" data-class="birth_chk" title="생일 선택"><option value="">선택</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select><label for="day">일</label>
	
											<input type="radio" name="cal" id="solar" data-class="birth_chk" checked="checked" value="solar">
											<label for="solar">양력</label>
											<input type="radio" name="cal" id="lunar" data-class="birth_chk" value="lunar">
											<label for="lunar">음력</label>
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
</body>
</html>