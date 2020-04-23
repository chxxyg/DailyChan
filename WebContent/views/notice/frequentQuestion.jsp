<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자주하는 질문</title>
<style>

.cstOuter{

	width:1500px;
	margin:auto;
}
.cstOuter_1{
	width:980px;
	height:800px;
	margin:auto;
	float:left;
	padding:0px 20px 20px 20px;
}
.cst_top{

    height: 35px;
	float:left;
    top: 48px;
    left: 143px;
    margin-top: auto;
    margin-left: auto; 
    width:800px;
    margin: 15px 0 30px;
    padding: 42px 68px 41px 45px;
    border: 3px solid #dbdbdb;
    background: #fff;
}

.cst_top dl dd{
    float: left;
    display: block;

}
#topSearchBtn{

    width: 68px;
    height:40px;
    background: #383a42;
    color: white;
    text-align: center;
    float: left;
    font-family:맑은 고딕, arial, sans-serif;
    margin:0;
    cursor: pointer;
    padding: 0;
    border: 0;
    display: block;
    overflow: visible;
    font-weight:500;
}
.fav_word{
    top: 30px;
    left: 580px;
    margin:auto;
    float:left;	
}
.fav_word li{
    list-style: none;
    display:list-item;
    float: left;
    font-size: 12px;
    width:auto;
}
.fav_word li a{
	font-size:15px;
	font-weight:800;
	color:black;
}
.fav_word a{
	text-decoration:none;
	cursot:pointer;
	float:left;
	
}
.fav_word li + li{

	margin: 0 0 0 10px;
	padding: 0 0 0 10px;
}
 .fav_word ul{
	margin-bottom:50px;
} 
#sch_faq{
    width:330px;
    height: 32px;
    float: left;

}
.cst_top dd{

	margin:auto;
	margin-top:-13px;
    float:left;
}
input[type=text]{

    display: inline-block;
    padding: 2px 10px 4px 10px;
    resize: none;
    border: 1px solid #dbdbdb;
    color:#555;
}
#faq_logo{
    font-size: 30px;
    float: left;
    font-weight: bolder;
    color: black;
    margin:auto;
    margin-right:10px;
    margin-bottom:15px;
}



/*질문*/
.cst_faq{
    width: 822px;
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

.q{
    width: 800px;
    height: 40px;
    line-height: 30px;
    text-align: left;
    font-size: 14px;
    border-radius: 1px;
    cursor: pointer;
    border-bottom:1px solid #000;
	padding:5px 0px 0px 0px;
}

p.content{
    border:1px solid #efefef;
    width: 760px;
    height: auto;
    margin: 0 0 15px 5px;
    display: none;
    padding: 18px;
    font-size: 14px;
    background:#f2f5f7;
    line-height: 22px;
    word-break: break-all;
    color: #000;
}
.tab_menu li.on .tab {
    z-index: 4;
    width: 141px;
    height: 41px;
   	border: 1px solid grey;
    border-bottom: 0;
    background: #fff;
    line-height: 37px;
    color: #f7702e;
    float:left;
}
.tab_menu {
    overflow: hidden;
    clear: both;
    position: relative;
    width: 860px;
    padding:42px;
}
.tab_menu li.on .tab:after {
    position: absolute;
    bottom: 0;
    left: 0;
    z-index: 0;
    width: 1222px;
    height: 1px;
    margin-left: -1080px;
    content: "";
    background: #f7702e;
    font-weight: bold;
    
} 
.tab_menu .tab {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
    width: 143px;
    height: 40px;
    border: 1px solid #dbdbdb;
    border-width: 1px 0;
    background: #f9f9f9;
    font-size: 14px;
    line-height: 38px;
    text-align: center;
    letter-spacing: -1px;
    color: #767676;
    float:left;
}
.tab_menu .tab.t2 {
    left: 143px;
    font-size:14px;
}
.tab_menu .tab.t3 {
    left: 286px;
}
.tab_menu .tab.t4 {
    left: 429px;
}
.tab_menu .tab.t5 {
    left: 572px;
}
.tab_menu .tab.t6 {
    left: 715px;
}
.tab_menu .tab {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
    width: 143px;
    height: 40px;
    border: 1px solid #dbdbdb;
    background: #f9f9f9;
    font-size: 14px;
    line-height: 38px;
    text-align: center;
    letter-spacing: -1px;
    color: #767676;
}
a{
    text-decoration: none;
	cursor:hover;
}
#text{
	font-weight:100;
}
form{
    border: 0;
}
input {
    vertical-align: middle;
}
.result{
float:left;
margin-left:-50px;
}


/*이미지*/
.cst_faq dl dd span.icon {
	float:left;
    top: 16px;
    left: -36px;
    width: 22px;
    height: 22px;
    content: "";
    background: url("/dailyChan/resoureces/img/ico_qna.png") no-repeat 0 -22px;
    text-indent: -9999em;

}

span.icon{

	margin-right:15px;
}

</style>
</head>
<body>


<%@ include file="../common/mainHeader.jsp" %>
<%@ include file="../common/mainSideBar.jsp" %>

<div class="cstOuter">
<%@ include file="leftCategory.jsp" %>
	
	<div class="cstOuter_1">
	<h3>자주하는 질문</h3>
		<div class="cst_top">
		
	            
		        <dl>
		            <dd>
		            	<p id="faq_logo">FAQ</p>
		                <input type="text" id="sch_faq" title="검색어 입력" placeholder="궁금하신 사항을 입력해 주세요">
		                <button type="button" id="topSearchBtn" class="bt_sch"><em>검색</em></button>
		            </dd>
		        </dl>
		        <form id="topForm" method="post">
		            <input type="hidden" id="faq" name="faq">
		        </form>
		        
		        <ul class="fav_word">
		            <li><a href="#tab_con3">쿠폰</a></li>
		            <li><a href="#tab_con3">배송</a></li>
		            <li><a href="#tab_con5">회원</a></li>
		            <li><a href="#tab_con4">적립금</a></li>
		            <li><a href="#tab_con4">이벤트</a></li>
		        </ul>
		    </div>    
		    
		    <!--  search 폼 -->
		    <form id="searchForm" method="post">
				<input type="hidden" id="tab" name="faq_large_divi_cd" value="9999">
				<input type="hidden" id="tabName" name="tabName" value="">
			</form>
			
		    <div class="tab_menu">
				<ul class="result">
	
					<li class="on">
						<a name="tab_con1" class="tab t1">실시간 BEST</a>
							
							 <div class="content1">
							 
							 	
					            <div class="q"><span class="icon">Q</span>반품 언제 되나요?</div>
					            <p class="content"><span class="icon">A</span>지금 확인 중 입니다.</p>
							
					            <div class="q"><span class="icon">Q</span>상품 위치를 알고싶습니다.</div>
					            <p class="content"><span class="icon">A</span>배송조회 해보세요. 거기 나와요</p>
					
					            <div class="q"><span class="icon">Q</span>이 사이즈 있나요?</div>
					            <p class="content"><span class="icon">A</span>네 있습니다.</p>
					
					            <div class="q"><span class="icon">Q</span>아이스박스는 수거 하시나요?</div>
					            <p class="content"><span class="icon">A</span>포장재인 아이스박스는 수거하지 않습니다.<br>
					
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q"><span class="icon">Q</span>신선식품인데 택배로 받아도 안전한가요?</div>
					            <p class="content"><span class="icon">A</span>더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
					           
				       		</div>
						
						<a name="tab_con2" class="tab t2">주문/취소</a>
						   <div class="content1">

					            <div class="q"><span class="icon">Q</span>주문마감시간 전인데 희망배송일이 선택 되지 않아요!</div>
					            <p class="content"><span class="icon">A</span>주문서에 품절, 당일발송마감 제품 등이 포함되어 있는 경우 선택되지 않습니다. 해당 제품을 제외하고 주문하면 희망배송일 선택 가능합니다.

								※ 회색으로 음영처리된 날짜를 클릭하시면 아래부분에 사유가 표시되어 해당 제품을 제외하고 주문하면 희망배송일 선택 가능합니다.
								
								※ 일부상품의 경우 월요일 제한 상품 있어 희망배송일 지정되지 않습니다. 월요일배송제한 상품은 공지사항에서 확인하여 주시기 바랍니다.</p>
													
								<div class="q"><span class="icon">Q</span>교환/반품은 어떻게 하나요?</div>
								<p class="content"><span class="icon">A</span>제품에 문제가 있는 경우 반품이 가능합니다.
								
								해당 제품의 유통기한 이내 MY더반찬 1:1친절상담 또는 고객센터(1644-6844)로 연락주시기 바랍니다.
								
								다만, 고객님의 단순변심, 주문 실수, 개인 기호 등의 경우 교환 및 반품은 불가합니다. 더반찬의 제품은 신선식품, 냉장/냉동식품으로 제품가치 하락으로 재판매가 불가합니다.
								
								잘못된 보관방법이나 고객님의 부주의 등으로 인한 오염, 파손, 변질된 제품은 교환/반품/취소가 불가합니다.
								
								(전자 상거래 등에서의 소비자 보호에 관한 법률에 의거함)</p>
													
					            <div class="q"><span class="icon">Q</span>주문을 취소하고 싶어요.</div>
					            <p class="content"><span class="icon">A</span>주문 취소는 주문건의 결제완료(주문마감시간 이전) 상태에서 즉시 취소 가능하며,

								주문마감시간 이후에는 원재료수급 및 출고를 위한 "제품준비중" 단계로
								
								주문취소, 주문내역(배송지, 배송일, 제품, 연락처, 배송방법 등) 모든 변경이 불가합니다.
								
								(단, 주문마감시간전  MY더반찬 → 주문배송조회 → 즉시취소)
								
								** 주문마감 시간 : 희망배송일 전일 1차마감 6시, 2차마감 13시 
								
								희망배송일 전일 오전 6시 이전 주문 건 :
								
								희망배송일 전일 오전 6시까지 취소 가능
								
								
								
								희망배송일 전일 오전 6시~오후 1시 주문 건 :
								
								희망배송일 전일 오후 1시까지 취소 가능
								.</p>
													
					            <div class="q"><span class="icon">Q</span>주문은 어떻게 하나요?</div>
					            <p class="content"><span class="icon">A</span>1. 주문방법

								- 홈페이지를 통한 주문 : 더반찬 홈페이지를 이용하여  상품구매 가능.
								
								- 모바일앱을 통한 주문 : 더반찬 앱을  설치하여 모바일로 상품구매 가능.
								
								2. 이용방법
								
								- 더반찬 회원가입 → 원하는 상품을 선택 → 주문서작성 (배송방법/ 희망배송일 지정) →결제완료(주문완료).<br>
													
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q"><span class="icon">Q</span>가상계좌로 입금 후 취소 했는데 언제 환불되나요?</div>
					            <p class="content"><span class="icon">A</span>가상계좌 입금 환불은 주문 취소후 요청일로부터 영업일 기준 3~5일 소요되며, 요청하신 고객님의 본인계좌로 자동 입금됩니다. 예금주명은 (주)동원홈푸드 또는 LG U+로 입금될 수 있습니다.</p>
					           
				       		</div>
						
						
						<a name="tab_con3" class="tab t3">배송</a>
						 <div class="content1">

					            <div class="q"><span class="icon">Q</span>배송비는 얼마인가요?</div>
					            <p class="content"><span class="icon">A</span>실결제금액 45,000원 이상 주문 시 무료배송
									실결제금액 45,000원 미만 주문 시 일반택배배송 2,500원 / 새벽직배송 2,900원 배송비 부과
									※ 최소 주문금액 : 10,000원 이상
									※ 실결제금액 = 주문합계금액 - 쿠폰/할인금액.</p>
									
					            <div class="q"><span class="icon">Q</span>직접수령이 가능한가요?</div>
					            <p class="content"><span class="icon">A</span>
					            	더반찬의 가산DSCK공장은 직접수령이 불가능합니다.
									위생, 안전, 품질 관리로 인하여 외부인의 출입을 제한하고 있기에 직접 수령은 불가하오니, 고객님들의 너그러운 양해 부탁드립니다.
					            </p>
					
					            <div class="q"><span class="icon">Q</span>새벽배송의 필수정보 사항 오기재 및 미기재시 어떻게 배송하나요?</div>
					            <p class="content"><span class="icon">A</span>새벽직배송 필수정보사항 오기재 및 미기재시는 희망배송일 전일 오후 6시이전(고객센터 운영시간:월~금0900~18:00) 고객센터로 유선 및 1:1문의로 수정내용을 남겨주시면 위탁배달점으로 직접 전달하고 있습니다.
									또한 배송지 주소, 공동현관문 비밀번호, 오기재 (미기재)로 인한 배송오류는 당사가 책임지지 않습니다.</p>
					            
					            <div class="q"><span class="icon">Q</span>배송지 주소 및 연락처 변경이 가능한가요?</div>
					            <p class="content"><span class="icon">A</span>
					            	주문서 상태가 결제완료시에 배송지와 연락처 변경이 가능합니다.
									고객센터 운영시간(월~금/ 09:00~18:00)내에 연락을 주시면 변경하여 드리겠습니다.
									주문마감시간이후 제품준비중으로 상태가 변경된 경우 수정이 불가능합니다.
					            </p>
					            <div class="q"><span class="icon">Q</span>관공서, 학교(기숙사), 회사, 시장, 백화점도 새벽직배송 가능한가요?</div>
					            <p class="content"><span class="icon">A</span>밤 9시부터 오전 7시사이 건물의 공동현관을 폐쇄하거나, 출입 제한(카드키로만 출입이 가능한 공동현관)이 있는 곳은 새벽배송이 어렵습니다.
										출입이 불가능한 관공서, 학교(기숙사), 회사, 시장, 백화점, 아파트 등은 일반배송을 권장합니다.
										또한, 배송지, 공동현관문 비밀번호, 오기재 (미기재)로 인해 배송오류는 당사가 책임지지 않습니다.</p>
				       		</div>
						
						<a name="tab_con4" class="tab t4" data-prop_dtl_no="21">쿠폰/기타</a>
						 <div class="content1">

					            <div class="q"><span class="icon">Q</span>적립금 사용기한은 어떻게 되나요?</div>
					            <p class="content"><span class="icon">A</span>1) 상품 이용후 지급되는 적립금.
								
								 - 유효기간은 적립일로 부터 1년 입니다.
								
								2) 프로모션시 이벤트로 지급되는 적립금.
								
								 - 프로모션/이벤트 내용에 따라 사용기준일 별도표시안내 (기한 내 이용가능)</p>
					
					            <div class="q"><span class="icon">Q</span>적립금은 어떻게 사용하나요?</div>
					            <p class="content"><span class="icon">A</span>적립금 사용은 주문시 주문서→할인및혜택→보유 적립금에서 10원 단위부터 사용이 가능합니다.

								적립금 조회는 마이페이지→구매혜택→적립금 조회에서 가능합니다.</p>
					
					            <div class="q"><span class="icon">Q</span>주문중에 쿠폰이 사라졌어요!</div>
					            <p class="content"><span class="icon">A</span>고객센터(1234-5678)로 문의주시기 바랍니다.</p>
					
					            <div class="q"><span class="icon">Q</span>쿠폰사용기간은 얼마나 되나요?</div>
					            <p class="content"><span class="icon">A</span>데일리찬 쿠폰은 쿠폰마다 유효기간 및 사용조건이 상이하오니, 쿠폰별 유효기간을 확인하시고 사용하시기 바랍니다.

								쿠폰별 유효기간 및 사용조건 확인은 마이페이지→구매혜택→쿠폰조회 에서 확인 가능합니다.<br>
								</p>
							            
					            <div class="q"><span class="icon">Q</span>상품평 후기 작성은 어디서 하나요?</div>
					            <p class="content"><span class="icon">A</span>데일리찬 홈페이지 로그인→마이페이지 →주문/배송조회→수취확인→고객후기작성에서 가능합니다.

								상품평 이용후기는 주문하신 상품에 한하여 주문일로부터 30일이내에 작성가능하십니다.</p>
					           
				       		</div>

						<a name="tab_con5" class="tab t5">회원정보</a>
						 <div class="content1">
						 
							<div class="q"><span class="icon">Q</span>아이디/비밀번호를 잃어버렸어요!</div>
					            <p class="content"><span class="icon">A</span>"1)데일리찬 홈페이지 접속 → 로그인 하단에 표기 되어 있는 아이디/비밀번호 찾기를 통해 빠른확인 가능.
					             2)데일리찬 홈페이지 접속 → 이메일주소를 통해 아이디/ 비밀번호 확인가능. ※ 한메일의 경우 메일발송이 지연되거나 발송이 되지 않을수 있으며, 빠른 확인은 데일리찬 고객센터를 이용해 주세요. "</p>
					
					            <div class="q"><span class="icon">Q</span>비회원도 주문이 가능한가요?</div>
					            <p class="content"><span class="icon">A</span>데일리찬은 비회원도 주문이 가능 합니다.

									단, 비회원으로 주문하실 경우, 구매하신 금액에 대한 적립금 및 다양한 회원 혜택이 적용되지 않습니다.</p>
					
					            <div class="q"><span class="icon">Q</span>회원탈퇴는 어떻게 하나요?</div>
					            <p class="content"><span class="icon">A</span>데일리찬 회원 탈퇴는 고객님의 정보보호를 위해 직접탈퇴만 가능하십니다.

										- 마이페이지 → 회원정보 → 회원탈퇴 → 본인확인(로그인 비밀번호 입력) → 탈퇴사유 선택 → 고객의 의견 입력
										
										- 잔여 예치금, 복지포인트, 미 완결된 주문 및 취소/반품 건이 존재하는 경우 탈퇴가 불가능합니다.
										
										- 탈퇴 시 보유하고 계신 적립금, 쿠폰, 회원등급 혜택이 소멸됩니다.
										
										직접탈퇴가 되지 않은 경우 데일리찬 고객센터(1234-5678)로 연락주시거나 1:1문의에 남겨주시기 바랍니다.
								</p>
					          
				       		</div>
						
						
						<a name="tab_con6" class="tab t6">제품</a>
						 <div class="content1">

					            <div class="q"><span class="icon">Q</span>제품의 유통기한과 원산지는 어떻게 되나요?</div>
					            <p class="content"><span class="icon">A</span>"제품의 상세페이지 상단과 하단 상세정보고시에서 유통기한과 원산지 등의 제품 정보를 확인하실수 있습니다.
									
									제품의 상세정보고시에 유통기한과 보관, 섭취방법이 기재되어 있으며,  유통기한은 제조일을 포함하고 있습니다.
									
									더반찬의 제품은 보존제나 방부제를 사용하고 있지 않기에 유통기한이 짧은 제품이 많습니다. "</p>
														
								<div class="q"><span class="icon">Q</span>재료를 변경/제외 가능한가요?</div>
					            <p class="content"><span class="icon">A</span>현재 데일리찬은 다양한 제품을 대량 조리하여 일괄적으로 포장/ 출고를 시행 하고 있습니다. 전 과정이 자동화 생산으로 정확한 레시피 규정을 통해 획일적인 품질을 유지 하기 위함으로 고객님의 별도의 요청사항을 수렴하기 어려운 점, 양해 부탁 드립니다.</p>
					
					            <div class="q"><span class="icon">Q</span>일부제품에서 수입산 식재료를 사용하시는 이유가 뭔가요?</div>
					            <p class="content"><span class="icon">A</span>더반찬에서는 질좋은 국내산, 수입산 식재료를 이용하고 있습니다. 국내산 식재료의 수급이 어렵거나, 품질이 좋지 않은 경우 등의 사유로 수입산 식재료를 적절히 사용하여 품질을 유지하고 있습니다.</p>
															
				       		</div>

					</li>
				</ul>
			</div>

		    
		   </div>  
		
</div>

		    <script>
			$(function(){
				$("#left_01").css("color", "rgb(247, 112, 46)");
			});
		    
			
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
            
         // 질문 카테고리 컬러 바꾸기
             $(function(){
            	 $(".t1").css("color", "rgb(247, 112, 46)");
            	 $(".t1").siblings("a").css("color","gray");
            	 $(".t1").next().show();
 				 $(".t1").siblings("a").next().hide();
            	 
                 $(".tab").click(function(){
        		 	$(this).siblings("a").css("color","gray");
                    $(this).css("color", "rgb(247, 112, 46)");
                    $(this).css("border", "2px solid rgb(247, 112, 46");
                    $(this).siblings("a").css("border", "1.5px solid gray");
      
                });
            });

         // 카테고리 선택 시 슬라이드 효과
         
			$(".tab").click(function(){
			
				$(this).next().show();
				$(this).siblings("a").next().hide();
			});
         
         
         
         
         
		    </script>
		    
<%@ include file="../common/mainFooter.jsp" %>
</body>
</html>