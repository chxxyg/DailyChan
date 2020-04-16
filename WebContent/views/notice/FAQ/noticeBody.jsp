<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

#cst_content{
    width: 852px;
    height: 98px;
    margin-bottom: 38px;
    padding: 20px 0;
    border: 4px solid #efefef;
}
.cst_quick li{
    float: left;
    list-style: none;
    width: 211px;
    height: 97px;
}
.cst_quick a{
    text-decoration: none;
}

.cat_quick li+li{
    border-left: 1px solid #ededed;
    float: left;
}

.cst_faq{
    width: 822px;
    height: 301px;

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
    /* border: 1px solid #efefef; */
    font-size: 12px;
    border-radius: 1px;
}
.cst_faq{
    width:822px;
    cursor: pointer;
}

p.content{
    border:1px solid #efefef;
    width: 760px;
    height: auto;
    margin-top:5px;
    border-radius: 10px;
    display: none;
}
.cst_quick img{
    border:2px;
    width:90px;
    height:90px;
    padding: 10PX;
    margin-top: -50PX;
    float: left;
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

</style>
</head>
<body>
<div id="cst_content" class="sub_cont">
        <ul class="cst_quick">
            <li class="q01"><img src="image/lock.png"><a href="" onclick="loginCheck('MBFIND')">아이디/비밀번호 찾기</a></li>
            <li class="q02"><img src="image/delivery.png"><a href="" onclick="overpass.link('ORDER')">주문/배송 조회</a></li>
            <li class="q03"><img src="image/returnback.png"><a href="" onclick="overpass.mypage.goClaimList()">취소/반품 내역</a></li>
            <li class="q04"><img src="image/Account.png"><a href="" onclick="loginCheck('NMBLOGIN')">비회원 주문조회</a></li>
        </ul>
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
        <div class="cst_noti_main">
            <h3>공지사항</h3>
            <ul class="list">
            
                <li><a href="">[공지] 4월 국회의원선거일 배송 안내<span class="date thm">2020-04-08</span></a></li>
            
                <li><a href="">[공지] 업체 신선 배송 오픈 안내<span class="date thm">2020-04-07</span></a></li>
            
                <li><a href="">[공지] 빠른도착 카테고리 오픈 안내<span class="date thm">2020-04-07</span></a></li>
            
            </ul>
            <a href="javascript:;" onclick="overpass.custcenter.goNoticeList()" class="arrow_btn01">전체보기</a>
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
</body>
</html>