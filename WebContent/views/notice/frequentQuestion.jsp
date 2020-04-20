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
		    
		    <!--  search 폼 -->
		    <form id="searchForm" method="post">
				<input type="hidden" id="tab" name="faq_large_divi_cd" value="9999">
				<input type="hidden" id="tabName" name="tabName" value="">
			</form>
		    
		    <!-- 자주하는 질문 리스트  -->
		     <div class="cst_faq">
            <h3 class="thm">자주 하는 질문 <span>TOP5</span></h3>

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
        </script>
			
			
		    </script>
		    
<%@ include file="../common/mainFooter.jsp" %>
</body>
</html>