<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.cst_top{

    background-color: #79aff1;
    width: 890px;
    height: 120px;
    position: absolute;
    top: 48px;
    left: 553px;
}

.cst_top dd{
    float: left;
    width: 283px;
    height: 26px;
    font-size: 13px;
    line-height: 24px;

}
#topSearchBtn{

    width: 68px;
    height: 32px;
    background: #383a42;
    color: white;
    text-align: center;
    float: left;
}
button{
    margin:0;
    cursor: pointer;
    padding: 0;
    border: 0;
    display: block;
    overflow: visible;
}
.fav_word{
    position: absolute;
    top: 48px;
    left: 553px;
}
.fav_word li{
    list-style: none;
    float: left;
    padding: 5px;
    text-align: center;
    font-size: 12px;
    font-weight: normal;
}
#sch_faq{
    padding: 5px;
    width:371px;
    height: 32px;
    float: left;
}
.cst_top dd{
    margin-top: 20px;
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
    color: white;
    margin-left: 40px;
    margin-right: -20px;
}
</style>
</head>
<body>
		<div class="cst_top">
		        <div>
		            <p id="faq_logo">FAQ</p>
		        </div>
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
</body>
</html>