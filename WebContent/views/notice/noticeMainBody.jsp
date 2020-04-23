<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터</title>

<style>

body{
	width: 1500px;
	margin: auto;
}
.sub_cont 
{
	width: 1000px;
	margin-top: 153px;
	margin-left: 400px;
	
}

.cst_quick{
    display: block;
    width: 852px;
    height: 98px;
    margin-bottom: 38px;
/*     padding: 20px 0; */
    border: 4px solid #efefef;
}
/* .sub_cont{
	float:right;
	position:relative;
	width:860px;
	min-height:800px;
	padding: 0 0 75px 30px;
} */
.sub_cont .cst_quick li{
	float:left;
}

.sub_cont .cst_quick li a {
    display: block;
    position: relative;
    width: 212px;
    height: 24px;
    padding: 74px 0 0;
    font-size: 13px;
    font-weight: 800;
    text-align: center;
    color: #666;
}

.cst_quick li{
    float: left;
    list-style: none;
    width: 211px;
    height: 97px;
}
.cst_quick a{
    text-decoration: none;
    color: gray;
    font-family:inherit;
}

.cst_quick li+li{
    border-left: 1px solid #ededed;
}

.cst_faq{
    width: 870px;
    height: auto;
    cursor: pointer;

}

.cst_faq h3 {
    margin-bottom: 0;
    padding: 0 0 18px 8px;
    border-bottom: 1px solid #333;
    font-size: 18px;
    font-weight: 800;
    color: #000;
}
.sub_cont h3 {
    margin: 0 0 15px;
}
.sub_cont .cst_quick {
    width: 852px;
    height: 98px;
    margin-bottom: 38px;
    padding: 20px 0;

}
.cst_noti_main{
    position: relative;
    margin: 38px 0 0;
}
.cst_noti_main li{
    list-style: none;
}

.cst_noti_main .list {
    padding: 30px;
    border: 1px solid #ededed;
}

.arrow_btn01 {
    display: inline-block;
    height: 20px;
    margin-top: 5px;
    padding: 0 9px;
    border: 1px solid #dbdbdb;
    font-size: 11px;
    line-height: 18px;
    text-align: center;
    color: #333;
}
.arrow_btn01 {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
}
.list a{
    text-decoration: none;
}
.q{
    width: 800px;
    height: 51px;
    line-height: 30px;
    text-align: left;
    font-size: 14px;
    border-radius: 1px;
}

p.content{
    border:1px solid #efefef;
    width: 760px;
    height: auto;
    margin: 0 0 15px 46px;
    display: none;
    padding: 18px;
    font-size: 14px;
    background:#f2f5f7;
    line-height: 22px;
    word-break: break-all;
    color: #000;
}
.cst_quick img{
	position:absolute;
	top:11px;
	left:50%;
    width:59px;
    height:46px;
    margin-left:-30px;
}
.couns_tbl th, .couns_tbl td {
    height: 32px;
    padding: 8px 0 8px 18px;
    border-bottom: 1px solid #ededed;
    font-size: 13px;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

.couns_tbl {
    width: 860px;
    border: 1px solid #dbdbdb;
    border-width: 1px 0;
    line-height: 1;
}
table {
    width: 100%;
    min-width: 100%;
    max-width: none;
    table-layout: fixed;
    border-spacing: 0;
    border-collapse: collapse;
}
.list a{
	text-decoration:none;
	color:black;
}
.sub_cont .cst_noti_main h3{

	margin:40px 0 0;
	padding:0 0 16px 8px;
	border-bottom:1px solid  #333;
	font-size:18px;
	font-weight:800;
	color:#000;

}
.cst_noti_main h3{

	width:870px;
}
.cst_noti_main h3 a{
	text-decoration:none;
	color:black;
}

</style>
</head>
<body>
<%@ include file="../common/mainHeader.jsp" %>
<%@ include file="../common/mainSideBar.jsp" %>
<%@ include file="leftCategory.jsp" %>
<%@ include file="noticeSearch.jsp" %>
	<div id="cst_content" class="sub_cont">

        <ul class="cst_quick">
            <li class="q01"><a href="<%= contextPath%>/find.me"><img id="q01" src="<%=contextPath %>/resources/img/lock.png" onclick="">아이디/비밀번호 찾기</a></li>
            <li class="q02"><a href="<%= contextPath%>/orderList.my"><img id="q02" src="<%=contextPath %>/resources/img/delivery.png" onclick="">주문/배송 조회</a></li>
            <li class="q03"><a href="<%= contextPath%>/cancelOrder.my"><img id="q03" src="<%=contextPath %>/resources/img/returnback.png" onclick="">취소/반품 내역</a></li>
            <li class="q04"><a href="<%= contextPath%>/nonOrd.od"><img id="q04" src="<%=contextPath %>/resources/img/Account.png" onclick="">비회원 주문조회</a></li>
        </ul>
        
        <div class="cst_faq">
            <h3 class="thm">자주 하는 질문 <span>TOP5</span></h3>

            <div class="q">언제 배송 되나요?</div>
            <p class="content">더반찬은 지정하신 희망배송일에 일반택배배송, 새벽직배송 두가지 방법으로 배송해드리고 있습니다.

			1) 일반택배(한진택배)배송의 경우 해당 지역의 당일 택배 물량과 배송기사님의 당일 이동노선에 따라 배송시간은 상이합니다. 항상 동일시간대에 배송되지 않는점 참고를 바랍드립니다.
			
			2) 새벽직배송은 희망배송일 전일 오후 10시 ~ 희망배송일 오전 7시 사이에 고객님이 지정해주신 주소지로 배송해 드리고 있습니다.
			
			 당일 물량과 배송기사님의 이동노선에 따라 배송되고 있어, 시간 지정은 불가합니다.
			
			① 새벽직배송은 별도의 공동출입문 비밀번호가 필요합니다. 미기재시 배송지연, 미배송 될수 있으며 이로 인한 책임은 더반찬이 지지 않습니다.
			
			새벽직배송시 공동 출입문을 출입하지 못하면 제시간에 배송이 불가능합니다.
			
			② 새벽직배송은 희망배송일 전일 오후10시 ~ 희망배송일 오전7시 사이 주무시는 동안에도 배송될수 있기에 고객님의 숙면을 위하여 별도의 문자 및 유선 연락을 드리고 있지 않습니다. 별도의 연락을 원하시는 경우 주문서 작성시 주변장소 정보 혹은 특이 요청사항에 남겨주시기 바랍니다.



			※ 일반택배배송, 새벽직배송은 교통상황, 명절 및 연휴기간, 기상상황, 천재지변 등으로 배송지연이 발생될 수 있습니다.</p>

            <div class="q">배송비는 얼마인가요?</div>
            <p class="content">실결제금액 45,000원 이상 주문 시 무료배송

			실결제금액 45,000원 미만 주문 시 일반택배배송 2,500원 / 새벽직배송 2,900원 배송비 부과
			
			※ 최소 주문금액 : 10,000원 이상
			
			※ 실결제금액 = 주문합계금액 - 쿠폰/할인금액</p>

            <div class="q">새벽배송이 완료되면 문자나 유선(전화) 연락을 주나요?</div>
            <p class="content">새벽직배송은 고객님께서 주무시는 희망배송일 전일 오후 10시에서 희망배송일 오전 7시 사이 배송되고 있기에 고객님의 편안한 숙면을 위하여 별도 연락은 드리지 않습니다.

			별도의 연락을 원하시는 경우 주문서 작성시 [주변장소 정보 혹은 특이 요청사항]에 남겨주시기 바랍니다.
			
			ex) 경비실에 맡겨주세요. 무인택배함에 보관해 주세요, 배송완료 시 문자 부탁드려요. 등.</p>

            <div class="q">아이스박스는 수거 하시나요?</div>
            <p class="content">포장재인 아이스박스는 수거하지 않습니다.<br>

		             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
		             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>

            <div class="q">신선식품인데 택배로 받아도 안전한가요?</div>
            <p class="content">더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
           
        </div>
        <!--  .cst_noti_main h3 a -->
        <div class="cst_noti_main">
            <h3><a href="<%= request.getContextPath() %>/noticeList.no">공지사항</a></h3>
            <ul class="list">
            
                <li><a href="">[공지] 4월 국회의원선거일 배송 안내<span class="date thm">2020-04-08</span></a></li>
            
                <li><a href="">[공지] 업체 신선 배송 오픈 안내<span class="date thm">2020-04-07</span></a></li>
            
                <li><a href="">[공지] 빠른도착 카테고리 오픈 안내<span class="date thm">2020-04-07</span></a></li>
            
            </ul>
            <a href="<%= request.getContextPath() %>/noticeList.no" onclick="" class="arrow_btn01">전체보기</a>
        </div>
    </div>

            <script>
                $(function(){
                    $(".q").click(function(){
            
                        var p = $(this).next();
            
                        if(p.css("display") == "none"){
                            $(this).siblings("p").slideUp();
                            p.slideDown();
                        }else{
                            p.slideUp();
                        }
                    });
                });
            </script>
  <%@ include file="../common/mainFooter.jsp" %>
</body>
</html>