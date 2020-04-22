<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.cstOuter{

	width:1500px;
	margin:auto;
}
.cstOuter_1{
/* 	border: 1px solid blue; */
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
    height:45px;
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
    margin-top:5px;
    border-radius: 10px;
    display: none;
}
.tab_menu li.on .tab {
    z-index: 4;
    width: 141px;
    height: 41px;
   border: 2px solid grey;
    border-bottom: 0;
    background: #fff;
    font-weight: bold;
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
/* .tab_menu:before {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 3;
    width: 1px;
    height: 41px;
    content: "";
    background: #dbdbdb;
}
.tab_menu:after {
    display: block;
    position: absolute;
    top: 0;
    right: 1px;
    z-index: 3;
    width: 1px;
    height: 41px;
    content: "";
    background: #dbdbdb;
}  */
.tab_menu li.on .tab:after {
    position: absolute;
    bottom: 0;
    left: 0;
    z-index: 0;
    width: 99999%;
    height: 2px;
    margin-left: -1080px;
    content: "";
    background: #f7702e;
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
    border-width: 1px 0;
    background: #f9f9f9;
    font-size: 14px;
    line-height: 38px;
    text-align: center;
    letter-spacing: -1px;
    color: #767676;
}
a:hover, a:active {
    text-decoration: none;
}
form{
    border: 0;
}
input {
    vertical-align: middle;
}
input[type="hidden" i] {
    display: none;
    -webkit-appearance: initial;
    background-color: initial;
    cursor: default;
    padding: initial;
    border: initial;
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
		
	            <p id="faq_logo">FAQ</p>
		        <dl>
		            <dd>
		                <input type="text" id="sch_faq" title="검색어 입력" placeholder="궁금하신 사항을 입력해 주세요">
		                <button type="button" id="topSearchBtn" class="bt_sch"><em>검색</em></button>
		            </dd>
		        </dl>
		        <form id="topForm" method="post">
		            <input type="hidden" id="faq" name="faq">
		        </form>
		        
		        <ul class="fav_word">
		            <li><a href="">쿠폰</a></li>
		            <li><a href="">배송</a></li>
		            <li><a href="">회원</a></li>
		            <li><a href="">적립금</a></li>
		            <li><a href="">이벤트</a></li>
		        </ul>
		    </div>
<!-- --------------------------------------------------------------- -->		    
		    
		    <!--  search 폼 -->
		    <form id="searchForm" method="post">
				<input type="hidden" id="tab" name="faq_large_divi_cd" value="9999">
				<input type="hidden" id="tabName" name="tabName" value="">
			</form>
			
			
			
		    <div class="tab_menu">
				<ul class="result">
	
					<li class="on">
						<a href="#tab_con1" class="tab t1" data-prop_dtl_no="9999">실시간 BEST</a>
		<!-- 						<div class="cst_faq" id="tab_con1">
									<h4>실시간 BEST </h4>
								</div> -->
							
							 <div class="content1">

					            <div class="q">반품 언제 되나요?</div>
					            <p class="content">지금 확인 중 입니다.</p>
					
					            <div class="q">상품 위치를 알고싶습니다.</div>
					            <p class="content">배송조회 해보세요. 거기 나와요</p>
					
					            <div class="q">이 사이즈 있나요?</div>
					            <p class="content">네 있습니다.</p>
					
					            <div class="q">아이스박스는 수거 하시나요?</div>
					            <p class="content">포장재인 아이스박스는 수거하지 않습니다.<br>
					
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q">신선식품인데 택배로 받아도 안전한가요?</div>
					            <p class="content">더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
					           
				       		</div>
						
						<a href="#tab_con2" class="tab t2" data-prop_dtl_no="13">주문/취소</a>
						   <div class="content1">

					            <div class="q">주문마감시간 전인데 희망배송일이 선택 되지 않아요!</div>
					            <p class="content">주문서에 품절, 당일발송마감 제품 등이 포함되어 있는 경우 선택되지 않습니다. 해당 제품을 제외하고 주문하면 희망배송일 선택 가능합니다.

								※ 회색으로 음영처리된 날짜를 클릭하시면 아래부분에 사유가 표시되어 해당 제품을 제외하고 주문하면 희망배송일 선택 가능합니다.
								
								※ 일부상품의 경우 월요일 제한 상품 있어 희망배송일 지정되지 않습니다. 월요일배송제한 상품은 공지사항에서 확인하여 주시기 바랍니다.</p>
													
								<div class="q">교환/반품은 어떻게 하나요?</div>
								<p class="content">제품에 문제가 있는 경우 반품이 가능합니다.
								
								해당 제품의 유통기한 이내 MY더반찬 1:1친절상담 또는 고객센터(1644-6844)로 연락주시기 바랍니다.
								
								다만, 고객님의 단순변심, 주문 실수, 개인 기호 등의 경우 교환 및 반품은 불가합니다. 더반찬의 제품은 신선식품, 냉장/냉동식품으로 제품가치 하락으로 재판매가 불가합니다.
								
								잘못된 보관방법이나 고객님의 부주의 등으로 인한 오염, 파손, 변질된 제품은 교환/반품/취소가 불가합니다.
								
								(전자 상거래 등에서의 소비자 보호에 관한 법률에 의거함)</p>
													
					            <div class="q">주문을 취소하고 싶어요.</div>
					            <p class="content">주문 취소는 주문건의 결제완료(주문마감시간 이전) 상태에서 즉시 취소 가능하며,

								주문마감시간 이후에는 원재료수급 및 출고를 위한 "제품준비중" 단계로
								
								주문취소, 주문내역(배송지, 배송일, 제품, 연락처, 배송방법 등) 모든 변경이 불가합니다.
								
								(단, 주문마감시간전  MY더반찬 → 주문배송조회 → 즉시취소)
								
								** 주문마감 시간 : 희망배송일 전일 1차마감 6시, 2차마감 13시 
								
								희망배송일 전일 오전 6시 이전 주문 건 :
								
								희망배송일 전일 오전 6시까지 취소 가능
								
								
								
								희망배송일 전일 오전 6시~오후 1시 주문 건 :
								
								희망배송일 전일 오후 1시까지 취소 가능
								.</p>
													
					            <div class="q">주문은 어떻게 하나요?</div>
					            <p class="content">1. 주문방법

								- 홈페이지를 통한 주문 : 더반찬 홈페이지를 이용하여  상품구매 가능.
								
								- 모바일앱을 통한 주문 : 더반찬 앱을  설치하여 모바일로 상품구매 가능.
								
								2. 이용방법
								
								- 더반찬 회원가입 → 원하는 상품을 선택 → 주문서작성 (배송방법/ 희망배송일 지정) →결제완료(주문완료).<br>
													
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q">가상계좌로 입금 후 취소 했는데 언제 환불되나요?</div>
					            <p class="content">가상계좌 입금 환불은 주문 취소후 요청일로부터 영업일 기준 3~5일 소요되며, 요청하신 고객님의 본인계좌로 자동 입금됩니다. 예금주명은 (주)동원홈푸드 또는 LG U+로 입금될 수 있습니다.</p>
					           
				       		</div>
						
						
						<a href="#tab_con3" class="tab t3" data-prop_dtl_no="14">배송</a>
						 <div class="content1">

					            <div class="q">배송비는 얼마인가요?</div>
					            <p class="content">실결제금액 45,000원 이상 주문 시 무료배송

									실결제금액 45,000원 미만 주문 시 일반택배배송 2,500원 / 새벽직배송 2,900원 배송비 부과
									
									※ 최소 주문금액 : 10,000원 이상
									
									※ 실결제금액 = 주문합계금액 - 쿠폰/할인금액.</p>
					
					            <div class="q">상품 위치를 알고싶습니다.</div>
					            <p class="content">배송조회 해보세요. 거기 나와요</p>
					
					            <div class="q">이 사이즈 있나요?</div>
					            <p class="content">네 있습니다.</p>
					
					            <div class="q">아이스박스는 수거 하시나요?</div>
					            <p class="content">포장재인 아이스박스는 수거하지 않습니다.<br>
					
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q">신선식품인데 택배로 받아도 안전한가요?</div>
					            <p class="content">더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
					           
				       		</div>
						
						<a href="#tab_con4" class="tab t4" data-prop_dtl_no="21">쿠폰/기타</a>
						 <div class="content1">

					            <div class="q">반품 언제 되나요?</div>
					            <p class="content">지금 확인 중 입니다.</p>
					
					            <div class="q">상품 위치를 알고싶습니다.</div>
					            <p class="content">배송조회 해보세요. 거기 나와요</p>
					
					            <div class="q">이 사이즈 있나요?</div>
					            <p class="content">네 있습니다.</p>
					
					            <div class="q">아이스박스는 수거 하시나요?</div>
					            <p class="content">포장재인 아이스박스는 수거하지 않습니다.<br>
					
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q">신선식품인데 택배로 받아도 안전한가요?</div>
					            <p class="content">더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
					           
				       		</div>

						<a href="#tab_con5" class="tab t5" data-prop_dtl_no="31">회원정보</a>
						 <div class="content1">

					            <div class="q">반품 언제 되나요?</div>
					            <p class="content">지금 확인 중 입니다.</p>
					
					            <div class="q">상품 위치를 알고싶습니다.</div>
					            <p class="content">배송조회 해보세요. 거기 나와요</p>
					
					            <div class="q">이 사이즈 있나요?</div>
					            <p class="content">네 있습니다.</p>
					
					            <div class="q">아이스박스는 수거 하시나요?</div>
					            <p class="content">포장재인 아이스박스는 수거하지 않습니다.<br>
					
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q">신선식품인데 택배로 받아도 안전한가요?</div>
					            <p class="content">더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
					           
				       		</div>
						
						
						<a href="#tab_con6" class="tab t6" data-prop_dtl_no="80">제품</a>
						 <div class="content1">

					            <div class="q">반품 언제 되나요?</div>
					            <p class="content">지금 확인 중 입니다.</p>
					
					            <div class="q">상품 위치를 알고싶습니다.</div>
					            <p class="content">배송조회 해보세요. 거기 나와요</p>
					
					            <div class="q">이 사이즈 있나요?</div>
					            <p class="content">네 있습니다.</p>
					
					            <div class="q">아이스박스는 수거 하시나요?</div>
					            <p class="content">포장재인 아이스박스는 수거하지 않습니다.<br>
					
							             아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,  당장의 회수 약속을 드리기에 어려움이 있습니다.<br>
							             더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.</p>
					
					            <div class="q">신선식품인데 택배로 받아도 안전한가요?</div>
					            <p class="content">더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을 동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다</p>
					           
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
            	 
                 $(".tab").click(function(){
        		 	$(this).siblings("a").css("color","gray");
                   $(this).css("color", "rgb(247, 112, 46)");
      
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