<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.cst_slt {
    position: relative;
    margin-bottom: 20px;
    padding: 20px 0 20px 35px;
    border: 3px solid #f0eded;
    width: 819px;
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
</style>
</head>
<body>


  <h2>1:1 친절상담</h2>
    <div class="cst_slt">
        <div class="info_txt"><em class="req">*<!--<span class="ir">필수입력정보</span>--></em>표시정보는 필수 입력 사항입니다.</div>
        <dl>
            <dt>
                <label for="c_sel">상담유형<em class="req">*<!--<span class="ir">필수입력정보</span>--></em></label>
            </dt>
            <dd>
                <select id="c_sel" name="counsel_clss_no" title="상담유형 대분류 선택">
                    <option value="">상담 유형을 선택해 주세요.</option>
    
                    <option value="01322">입금상담</option>
    
                    <option value="01332">새벽배송상담</option>
    
                    <option value="01342">제조VOC</option>
    
                    <option value="01352">단순상담</option>
    
                    <option value="01366">제품상담</option>
    
                    <option value="01372">이벤트상담</option>
    
                    <option value="01383">회원혜택상담</option>
    
                    <option value="01392">기타상담</option>
    
                    <option value="01402">서비스 칭찬</option>
    
                    <option value="01405">서비스 불편/제안</option>
    
                    <option value="01542">제조VOC</option>
    
                    <option value="01481">환불상담</option>
    
                    <option value="01484">택배배송상담</option>
    
                    <option value="01489">배송VOC</option>
    
                    <option value="01502">변경상담</option>
    
                    <option value="01513">외부몰상담</option>
    
                    <option value="01543">배송VOC</option>
    
                    <option value="01498">전산VOC</option>
    
                    <option value="01508">취소상담</option>
    
                    <option value="01544">전산VOC</option>

                </select>
            </dd>
        </dl>
        <dl>
            <dt>상담 제품 선택</dt>
            <dd class="slt_btns">
                <!-- 레이어에서 제품 선택 된 후 case (class .on)  -->
                <button type="button" name="orderlist" onclick="overpass.custcenter.OrderGoodsListLayer();return false;"><em>주문내역</em></button>
            </dd>
        </dl>
    </div>


            <!--- 상담 내역 -->
            <table class="couns_tbl">
                <caption>고객명, 아이디, 휴대폰 번호, 이메일 주소, 답변알림, 제목 내용으로 구성된 1:1친절 상담 작성 테이블입니다.</caption>
                <colgroup><col style="width:170px">
                <col>
                </colgroup><tbody>
                    <tr>
                        <th scope="row">고객명</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">아이디</th>
                        <td>thuk</td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="tel_no1">휴대폰 번호</label>
                        </th>
                        <td>
                                                            
                            <select id="tel_no1" name="tel_no1" message="전화번호를 숫자로 입력하세요."><option value="">선택</option><option value="010" selected="selected">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option><option value="0502">0502</option><option value="0503">0503</option><option value="0504">0504</option><option value="0505">0505</option><option value="0506">0506</option><option value="0507">0507</option></select>
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
                            <input type="text" class="w_tit" id="quest_title" name="quest_title" title="제목 입력" placeholder="제목을 입력해 주세요." onkeyup="fnLimitText('quest_title','50')">
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="quest_cont">내용</label>
                        </th>
                        <td>
                            <textarea id="quest_cont" name="quest_cont" cols="50" rows="10" class="textarea wide" placeholder="취소, 교환, 반품 신청은 주문배송 조회에서 ‘결제완료’ 상태인 경우에 즉시취소 가능합니다.
                            주문에 대한 문의일 경우, 상품을 선택하여 문의 주시면 보다 빠른 상담이 가능합니다." title="내용" onkeyup="fnLimitText('quest_cont','1000')"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">사진 등록</th>
                             <td>
                                <dl class="file_inp">
                                    <dt class="ir">첨부 사진 파일찾기</dt>										
                                    <dd>
                                        <input type="file" name="file" id="file0" title="제품 사진 업로드">
                                        <button type="button" class="del" name="deleteImgBtn" title="상품 사진 업로드 항목 삭제">삭제</button>
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


</body>
</html>