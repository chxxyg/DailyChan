
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String MEMBERID = String.valueOf(session.getAttribute("memberId"));
	String PASSWORD = String.valueOf(session.getAttribute("memberPwd"));
	String MEMBERNAME = String.valueOf(session.getAttribute("memberName"));
	/* Int PHONE = session.getAttribute("phone"); */
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1상담신청</title>
<style>

 #form1{
	
	width: 822px;
    height: auto;
    margin-top:40px;
	margin-left:400px;
} 
.cst_slt {
    position: relative; 
    margin-top: 140px;
    padding: 20px 0 20px 35px;
    border: 3px solid #f0eded;
    width: 822px;
    height: 75px;

}
em.req{
    color:#f7702e;
}
.info_txt{
    float: right;
}
.cst_slt .info_txt {
    position: absolute;
    top: -32px;
    right: 0;
    width: 100%;
    height: 0;
    font-size: 13px;
    text-align: right;
    color: #333;
}
.cst_slt dd select {
    display: inline-block;
    min-width: 229px;
}
select {
    height: 32px;
    padding: 4px 4px 7px 8px;
    border: #ccc 1px solid;
    font-family: "Malgun Gothic", "맑은 고딕", "dotum", "돋움", "arial", "sans-serif";
    font-size: 13px;
    line-height: 24px;
}
select:not(:-internal-list-box) {
    overflow: visible !important;
}
.cst_slt dd {
    float: left;
    width: 660px;
}
.cst_slt dt {
    float: left;
    width: 106px;
    font-size: 13px;
    font-weight: 800;
    line-height: 32px;
    color: #000;
}
.cst_slt dl + dl {
    margin-top: 10px;
}
.slt_btns{
    margin-top: 10px;
}

.slt_btns a{
	margin-top:1.5px;
	text-decoration:none;
	color:black;
	border:1px solid #ccc;
	font-size:12px;
	padding:5px;
}
.slt_btns dd {
    display: block;
    margin-inline-start: 40px;
}
.couns_tbl th, .couns_tbl td {
    height: 32px;
    padding: 8px 0 8px 18px;
    border-bottom: 1px solid #ededed;
    font-size: 13px;
}
.couns_tbl td .file_inp {
    overflow: hidden;
    padding-top: 10px;
}
.cst_faq{
    width: 822px;
    height: auto;
    cursor: pointer;

}
.sltd_tbl .tbl table {
    width: 100%;
    margin: 0 -1px -1px 0;
    table-layout: fixed;
}
table {
    width: 100%;
    min-width: 100%;
    max-width: none;
    table-layout: fixed;
    border-spacing: 0;
    border-collapse: collapse;
}
.sltd_tbl .order_num {
    height: 42px;
    margin: 30px 0 0;
    padding: 0 0 0 20px;
    border-top: 1px solid #333;
    background: #f9f9f9;
    line-height: 42px;
}
.sltd_tbl .order_num dd {
    float: left;
    margin-left: 6px;
    font-family: tahoma;
    font-size: 13px;
    letter-spacing: 0;
    color: #7896e5;
}
.sltd_tbl .tbl {
    overflow: hidden;
    position: relative;
    margin: 30px 0 30px;
    border: 1px solid #ddd;
    border-width: 1px 0;
    background: #fff;
}
.couns_tbl {
    width: 860px;
    border: 1px solid #dbdbdb;
    border-width: 1px 0;
    line-height: 1;
    
}
tbody {
	
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.sltd_tbl{
	width:857px;
}
.wrap.cst .conf_btns {
    margin: 30px 0 100px;
}
.conf_btns {
    text-align: center;
}

.conf_btns button {
    display: inline-block;
    font-size: 16px;
}
button {
    display: block;
    overflow: visible;
    margin: 0;
    padding: 0;
    cursor: pointer;
    border: 0;
    background: none;
    line-height: 1;
}
input[type="file" i] {
    -webkit-appearance: initial;
    background-color: initial;
    cursor: default;
    align-items: baseline;
    color: inherit;
    text-align: start !important;
    padding: initial;
    border: initial;
}
.couns_tbl td .file_inp input {
    height: auto;
    line-height: 1em;
    padding: 3px;
    border: 1px solid #ddd;
}

.couns_tbl td .file_inp input {
    width: 70%;
    height: 28px;
    margin-right: 6px;
    line-height: 28px;
}
.couns_tbl td .file_inp button {
    display: inline-block;
    width: 12px;
    height: 12px;
    margin: 0 4px;
    vertical-align: middle;
}
.conf_btns button + button {
    margin-left: 7px;
}
strong {
    font-weight: bold;
}
.info_box01 {
	font-size:12px;
	width:720px;
	margin-left:400px;
	margin-top:100px;
    padding: 42px 30px 42px 106px;
    background-color:#efefef;
}
.sub_cont {
    float: right;
    position: relative;
    width: 860px;
    min-height: 800px;
    padding: 0 0 75px 30px;
}
.conf_btns button.confirm {
    width: 124px;
    height: 50px;
    background: #383a42;
    color: #fff;
}
.conf_btns button.cancel {
    width: 124px;
    height: 48px;
    border: 1px solid #999;
}
.conf_btns button {
    display: inline-block;
    font-size: 16px;
}
.wrap.cst .conf_btns {
    margin: 30px 0 100px;
}
.conf_btns {
    text-align: center;
}
button em {
    display: block;
    margin-top: -2px;
}

</style>

</head>
<body>
<%@ include file="../common/mainHeader.jsp" %>
<%@ include file="../common/mainSideBar.jsp" %>
<%@ include file="leftCategory.jsp" %>
<%@ include file="noticeSearch.jsp" %>

 <form name="csCounselForm" id="form1" enctype="multipart/form-data" method="post">
  	
  	 <h2>1:1 친절상담</h2>
    <div class="cst_slt">
    	
        <div class="info_txt"><em class="req">*<!--<span class="ir">필수입력정보</span>--></em>표시정보는 필수 입력 사항입니다.</div>
        <dl>
            <dt>
                <label for="c_sel">상담유형<em class="req">*<!--<span class="ir">필수입력정보</span>--></em></label>
            </dt>
            
            <dd>
            <!-- value값 똑같이 지정 해놓기 번호말고 !!(-> "Counseling Type")  -->
                <select id="c_sel" name="counsel_clss_no" title="상담유형 대분류 선택">
                    <option value="">상담 유형을 선택해 주세요.</option>
    
                    <option value="Counseling Type">입금상담</option>
    
                    <option value="Counseling Type">단순상담</option>
    
                    <option value="Counseling Type">제품상담</option>
    
                    <option value="Counseling Type">이벤트상담</option>
    
                    <option value="Counseling Type">회원혜택상담</option>
    
                    <option value="Counseling Type">기타상담</option>
    
                    <option value="Counseling Type">서비스 칭찬</option>
    
                    <option value="Counseling Type">서비스 불편/제안</option>
    
                    <option value="Counseling Type">환불상담</option>
    
                    <option value="Counseling Type">택배배송상담</option>
    
                    <option value="Counseling Type">변경상담</option>
    
                    <option value="Counseling Type">취소상담</option>
    

                </select>
            </dd>
        </dl>
        
        <dl>
        
            <dt>상담 제품 선택</dt>
		            <dd class="slt_btns">
		                <!-- 레이어에서 제품 선택 된 후 case (class .on)  -->
		                <a type="button" href="" name="orderlist" onclick="orderlistPop();">주문내역</a>
		            </dd>
		        </dl>
  	</div>
  	


				<div class="sltd_tbl">
				
					<div id="selectedGoodsBoxDiv" class="tbl goodsDiv">
		
					</div>
				</div>

            <!--- 상담 내역 -->
            <table class="couns_tbl">
                <!-- <caption>고객명, 아이디, 휴대폰 번호, 이메일 주소, 답변알림, 제목 내용으로 구성된 1:1친절 상담 작성 테이블입니다.</caption> -->
                <colgroup><col style="width:170px">
                <col>
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">고객명</th>
                     <td><p><%= MEMBERNAME %></p></td>
                    </tr>
                    <tr>
                        <th scope="row">아이디</th>
                       <td><p><%= MEMBERID %></p></td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="tel_no1"><%-- <%= PHONE %> --%></label>
                        </th>
                        
                        <td>
                            <select id="tel_no1" name="tel_no1" message="전화번호를 숫자로 입력하세요."><option value="">선택</option><option value="010" selected="selected">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select>
                            <span class="dash">-</span>
                            <input type="text" class="celluar" id="tel_no2" name="tel_no2" title="휴대폰번호 가운데 자리 입력" value="2948" maxlength="4">
                            <span class="dash">-</span>
                            <input type="text" class="celluar" id="tel_no3" name="tel_no3" title="휴대폰번호 마지막 자리 입력" value="3067" maxlength="4">
                        </td>
                    </tr>

                    <tr>
                        <th scope="row">
                            <label for="quest_title">제목</label>
                        </th>
                        
                        <td>
                            <input type="text" class="w_tit" id="quest_title" name="quest_title" title="제목 입력" placeholder="제목을 입력해 주세요." onkeyup="fnLimitText('quest_title','50')" >
                        </td> 
                    </tr>
                    
                    
                    <tr>
                        <th scope="row">
                            <label for="quest_cont">내용</label>
                        </th>
                        <td>
                            <textarea id="quest_cont" name="quest_cont" cols="50" rows="10" class="textarea wide" placeholder="취소, 교환, 반품 신청은 주문배송 조회에서 ‘결제완료’ 상태인 경우에 즉시취소 가능합니다.
                            주문에 대한 문의일 경우, 상품을 선택하여 문의 주시면 보다 빠른 상담이 가능합니다." title="내용"  onkeyup="fnLimitText('quest_cont','1000')"></textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <th scope="row">사진 등록</th>
                             <td>
                                <dl class="file_inp">
                                
                                    <!--<dt class="ir">첨부 사진 파일찾기</dt>-->										
                                    <dd>
                                        <input type="file" name="file" id="file0" title="제품 사진 업로드">
                                        <button type="button" class="del" name="deleteImgBtn" title="상품 사진 업로드 항목 삭제"><img src="../../resources/img/minus.png" width="15px" height="13px"></button>
                                        <input type="hidden" name="pre_file_nm" value="">
                                    </dd>
                                </dl>
                                <div class="r_noti">
                                    <ul>
                                        <li><em>*</em> 사진의 크기는 20MB 이하의 jpg, png, gif 파일로 첨부 가능합니다.</li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        
               	 </tbody>
            	</table>
            
             <br>
            	<p>※ 고객센터 운영시간(평일 9:00~18:00) 이후 문의는 고객센터 운영시간 내에 순차적으로 답변드립니다.</p>
            </form>
            
            
            <div class="conf_btns">
				<button class="confirm" onclick="save();"><em>확인</em></button>
				<button class="cancel" id="cancelBtn"><em>취소</em></button>
			</div>
           
           <div class="info_box01">
				<strong class="box_tit">상담 TIP</strong>
				<ul class="list_01">
					<li>1:1상담은 추가로 궁금하신 내용을 상담하는 공간입니다.</li>
					<li>배송상담, 취소/반품 상담은 해당 주문을 선택 하신 후 상담 사항을 작성해 주세요.</li>
					<li>주문 취소/반품 신청은 MY더반찬 메뉴에서 신청하시면 더욱 빠르게 처리됩니다.</li>
				</ul>
			</div>
			
	<script>
		$(function(){
			$("#left_02").css("color", "rgb(247, 112, 46)");
		});
		
		 		 
		  <!-- 1:1 친절상담 주문내역 팝업 function -->
			function orderlistPop(){

	           window.open("<%=contextPath%>/inquiryWrite.in", "주문내역팝업창", "width=638, height=450, top = 50, left = 500, location = no");
	        }

	</script>
            
<%@ include file="../common/mainFooter.jsp" %>
</body>
</html>