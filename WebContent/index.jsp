<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

	/* BEST */
	#bestWrap{
	    width: 1000px;
	    margin: auto;
	    box-sizing: border-box;
	    height: 1000px;
	    margin-top: 50px;
	    margin-bottom: 100px;
	}
	#bestLabel{
	    height: 60px;
	    font-size: 40px;
	    font-weight: 600;
	    padding: 25px;
	    margin-bottom: 50px;
	}
	#bestTable{
	    width: 1000px;
	    text-align: center;
	}
	.bestInnerTable{
	    display: inline-block;
	    padding-bottom: 30px;
	}
	.bestImg{
	    width: 300px;
	    height: 300px;
	}
	.bestName{
	    width: 300px;
	    height: 40px;
	    font-size: 20px;
	    font-weight: 600;
	    text-align: left;
	    padding-left: 20px;
	    margin-top: 5px;
	}
	.bestInfo{
	    width: 300px;
	    height: 30px;
	    font-size: 15px;
	    font-weight: 600;
	    text-align: left;
	    padding-left: 20px;
	}
	.bestPrice{padding-right: 5px;}
	.bestFor{padding-left: 5px;}
	.bestBtn{
	    height: 40px;
	    text-align: right;
	    padding-right: 30px;
	}
	
	
	/* NEW/SALE */
	#newSaleWrap{
	    width: 1000px;
	    margin: auto;
	    box-sizing: border-box;
	    height: 870px;
	    margin-bottom: 100px;
	}
	#newLabel, #saleLabel{
	    height: 40px;
	    font-size: 40px;
	    font-weight: 600;
	    padding: 25px;
	    margin-bottom: 40px;
	}
	#newWrap{
	    width: 500px;
	    display: inline-block;
	}
	#saleWrap{
	    width: 500px;
	    display: inline-block;
	    position: absolute;
	}
	#newTable, #saleTable{
	    box-sizing: border-box;
	}
	.newInnerTable, .saleInnerTable{
	    padding: 5px;
	    box-sizing: border-box;
	    padding-top: 10px;
	    padding-bottom: 10px;
	}
	.newImg, .saleImg{
	    width: 150px;
	    height: 150px;
	    padding: 10px;
	}
	.newName, .saleName{
	    width: 300px;
	    height: 40px;
	    font-size: 20px;
	    font-weight: 600;
	}
	.newInfo, .saleInfo{
	    width: 300px;
	    height: 40px;
	    font-size: 15px;
	    font-weight: 600;
	}
	.newBtn, .saleBtn{
	    width: 300px;
	    height: 40px;
	    text-align: right;
	    padding-right: 30px;
	}
	
	/* 공통 */
	.aLabel, .aProductLabel{
	    text-decoration: none;
	    color: black;
	}
	.aLabel:hover{
	    color: hsl(28, 100%, 50%);
	}
	.aProductLabel:hover{
	    color: black;
	    cursor: pointer;
	}
	.bestBtn>button, .newBtn>button, .saleBtn>button{
	    border: none;
	    background: white;
	    cursor: pointer;
	}
	.cartLogo, .likeLogo{
	    width: 30px;
	    height: 30px;
	}
	
	/* 인스타그램 */
	#instaWrap{
	    width: 1000px;
	    margin: auto;
	    box-sizing: border-box;
	    height: 600px;
	    margin-bottom: 100px;
	}
	#instaLabel{
	    width: 300px;
	    height: 100px;
	    font-size: 50px;
	    font-weight: 600;
	    box-sizing: border-box;
	    display: inline-block;
	    vertical-align: top;
	    padding-bottom: 30px;
	}
	#instaLogo{
	    width: 80px;
	    height: 80px;
	}
	.instaDetail{
	    width: 490px;
	    height: 40px;
	    font-size: 20px;
	    font-weight: 500;
	    text-align: right;
	    padding-right: 10px;
	}
	
	.instaImg{
	    width: 250px;
	    height: 250px;
	}

	
	/* mainBanner slideShow */
	* {box-sizing: border-box;}
	.mySlides {display: none;}
	
	/* Slideshow container */
	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active {
	  background-color: #717171;
	}
	
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	/* On smaller screens, decrease text size */
	@media only screen and (max-width: 300px) {
	  .text {font-size: 11px}
	}
	

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>데일리찬</title>
</head>
<body>
	<%@ include file="views/common/mainHeader.jsp" %>
	<%@ include file="views/common/mainSideBar.jsp" %>

	
	<!-- 메인 바디 영역 -->
    <!-- <div id="mainBanner">
        <img id="mainBannerImg1" src="resources/mainBannerImg/mainbanner1.jpg">
    </div> -->
    
	    
	<div class="slideshow-container">
	
	<div class="mySlides fade">
	  <img src="<%=contextPath%>/resources/mainBannerImg/mainbanner1.jpg" style="width:100%">
	</div>
	
	<div class="mySlides fade">
	  <img src="<%=contextPath%>/resources/mainBannerImg/mainbanner2.png" style="width:100%">
	</div>
	
	<div class="mySlides fade">
	  <img src="<%=contextPath%>/resources/mainBannerImg/mainbanner3.png" style="width:100%">
	</div>
	
	<div class="mySlides fade">
	  <img src="<%=contextPath%>/resources/mainBannerImg/mainbanner4.png" style="width:100%">
	</div>
	
	<div class="mySlides fade">
	  <img src="<%=contextPath%>/resources/mainBannerImg/mainbanner5.png" style="width:100%">
	</div>
	
	<div class="mySlides fade">
	  <img src="<%=contextPath%>/resources/mainBannerImg/mainbanner6.jpg" style="width:100%">
	</div>
	
	</div>
	<br>
	
	<div style="text-align:center">
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span>
	  <span class="dot"></span>
	  <span class="dot"></span>
	</div>
	
	<script>
	var slideIndex = 0;
	showSlides();
	
	function showSlides() {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  for (i = 0; i < slides.length; i++) {
	    slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if (slideIndex > slides.length) {slideIndex = 1}    
	  for (i = 0; i < dots.length; i++) {
	    dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " active";
	  setTimeout(showSlides, 2000); // Change image every 2 seconds
	  }
	</script>
	    
    <div id="bestWrap">
        <div id="bestLabel"><a class="aLabel" href="<%= contextPath %>/pList.pro?category=best&currentPage=1">실시간 베스트</a></div>
        <table id="bestTable">
            <tr>
                <td>
                    <table class="bestInnerTable"> <!-- KOA138 -->
                        <tr>
                            <td>
                                <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA138"><img id="bestImg1" class="bestImg" src="<%=contextPath%>/resources/attachment_product/3마리 꽃게탕.jpg"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestName1" class="bestName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA138">3마리 꽃게탕</a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestInfo1" class="bestInfo">
                                    <span id="bestPrice1" class="bestPrice">17000 원</span>
                                    <span>|</span>
                                    <span id="bestFor1" class="bestFor">2인분</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestBtn1" class="bestBtn">
                                	<input type="hidden" class="pCode" value="KOA138">
                                	<input type="hidden" class="pPrice" value="17000">
                                    <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                    <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                
                    <table class="bestInnerTable"> <!-- ITB203 -->
                        <tr>
                            <td>
                                <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=ITB203"><img id="bestImg2" class="bestImg" src="<%=contextPath%>/resources/attachment_product/감바스 알리오올리오.jpg"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestName2" class="bestName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=ITB203">감바스 알리오올리오</a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestInfo2" class="bestInfo">
                                    <span id="bestPrice2" class="bestPrice">11500 원</span>
                                    <span>|</span>
                                    <span id="bestFor2" class="bestFor">2인분</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestBtn2" class="bestBtn">
                                	<input type="hidden" class="pCode" value="ITB203">
                                	<input type="hidden" class="pPrice" value="11500">
                                    <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                    <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="bestInnerTable"> <!-- ITC201 -->
                        <tr>
                            <td>
                                <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=ITC201"><img id="bestImg3" class="bestImg" src="<%=contextPath%>/resources/attachment_product/감바스 알아히오.jpg"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestName3" class="bestName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=ITC201">감바스 알아히오</a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestInfo3" class="bestInfo">
                                    <span id="bestPrice3" class="bestPrice">17800 원</span>
                                    <span>|</span>
                                    <span id="bestFor3" class="bestFor">2인분</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestBtn3" class="bestBtn">
                                	<input type="hidden" class="pCode" value="ITC201">
                                	<input type="hidden" class="pPrice" value="17800">
                                    <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                    <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="bestInnerTable"> <!-- ASA307 -->
                        <tr>
                            <td>
                                <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=ASA307"><img id="bestImg4" class="bestImg" src="<%=contextPath%>/resources/attachment_product/고추잡채&꽃빵.jpg"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestName4" class="bestName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=ASA307">고추잡채&꽃빵</a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestInfo4" class="bestInfo">
                                    <span id="bestPrice4" class="bestPrice">15500 원</span>
                                    <span>|</span>
                                    <span id="bestFor4" class="bestFor">2인분</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestBtn4" class="bestBtn">
                                	<input type="hidden" class="pCode" value="ASA307">
                                	<input type="hidden" class="pPrice" value="15500">
                                    <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                    <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="bestInnerTable"> <!-- KOA107 -->
                        <tr>
                            <td>
                                <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA107"><img id="bestImg5" class="bestImg" src="<%=contextPath%>/resources/attachment_product/곱도리탕.jpg"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestName5" class="bestName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA107">곱도리탕</a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestInfo5" class="bestInfo">
                                    <span id="bestPrice5" class="bestPrice">16500 원</span>
                                    <span>|</span>
                                    <span id="bestFor5" class="bestFor">2인분</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestBtn5" class="bestBtn">
                                	<input type="hidden" class="pCode" value="KOA107">
                                	<input type="hidden" class="pPrice" value="16500">
                                    <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                    <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="bestInnerTable"> <!-- KOB112 -->
                        <tr>
                            <td>
                                <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOB112"><img id="bestImg6" class="bestImg" src="<%=contextPath%>/resources/attachment_product/구름치즈 안동식찜닭.jpg"></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestName6" class="bestName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOB112">구름치즈 안동식찜닭</a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestInfo6" class="bestInfo">
                                    <span id="bestPrice6" class="bestPrice">17000 원</span>
                                    <span>|</span>
                                    <span id="bestFor6" class="bestFor">2인분</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="bestBtn6" class="bestBtn">
                                	<input type="hidden" class="pCode" value="KOB112">
                                	<input type="hidden" class="pPrice" value="17000">
                                    <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                    <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>


    <div id="newSaleWrap">
        <div id="newWrap">
            <div id="newLabel"><a class="aLabel" href="<%= contextPath %>/pList.pro?category=new&currentPage=1">NEW</a></div>
            <table id="newTable">
                <tr>
                    <td>
                        <table class="newInnerTable"> <!-- ITD221 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=ITD221"><img id="newImg1" class="newImg" src="<%=contextPath%>/resources/attachment_product/훈제연어 샐러드.png"></a>
                                </td>
                                <td>
                                    <div id="newName1" class="newName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=ITD221">훈제연어 샐러드</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo1" class="newInfo">
                                        <span id="newPrice1" class="newPrice">8900 원</span>
                                        <span>|</span>
                                        <span id="newFor1" class="newFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn1" class="newBtn">
                                    	<input type="hidden" class="pCode" value="ITD221">
                                    	<input type="hidden" class="pPrice" value="8900">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="newInnerTable"> <!-- KOA132 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA132"><img id="newImg2" class="newImg" src="<%=contextPath%>/resources/attachment_product/황태해장국.jpg"></a>
                                </td>
                                <td>
                                    <div id="newName2" class="newName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA132">황태해장국</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo2" class="newInfo">
                                        <span id="newPrice2" class="newPrice">9900 원</span>
                                        <span>|</span>
                                        <span id="newFor2" class="newFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn2" class="newBtn">
                                    	<input type="hidden" class="pCode" value="KOA132">
                                    	<input type="hidden" class="pPrice" value="9900">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="newInnerTable"> <!-- KOA114 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA114"><img id="newImg3" class="newImg" src="<%=contextPath%>/resources/attachment_product/해물짬뽕순두부.jpg"></a>
                                </td>
                                <td>
                                    <div id="newName3" class="newName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA114">해물짬뽕순두부</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo3" class="newInfo">
                                        <span id="newPrice3" class="newPrice">18000 원</span>
                                        <span>|</span>
                                        <span id="newFor3" class="newFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn3" class="newBtn">
                                    	<input type="hidden" class="pCode" value="KOA114">
                                    	<input type="hidden" class="pPrice" value="18000">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="newInnerTable"> <!-- ITB207 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=ITB207"><img id="newImg4" class="newImg" src="<%=contextPath%>/resources/attachment_product/트리플머쉬룸로제파스타.jpg"></a>
                                </td>
                                <td>
                                    <div id="newName4" class="newName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=ITB207">트리플머쉬룸로제파스타</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo4" class="newInfo">
                                        <span id="newPrice4" class="newPrice">8900 원</span>
                                        <span>|</span>
                                        <span id="newFor4" class="newFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn4" class="newBtn">
                                    	<input type="hidden" class="pCode" value="ITB207">
                                    	<input type="hidden" class="pPrice" value="8900">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>

        <div id="saleWrap">
            <div id="saleLabel"><a class="aLabel" href="<%= contextPath %>/pList.pro?category=sale&currentPage=1">SALE</a></div>
            <table id="saleTable">
                <tr>
                    <td>
                        <table class="saleInnerTable"> <!-- KOA101 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA101"><img id="saleImg1" class="saleImg" src="<%=contextPath%>/resources/attachment_product/어복쟁반.jpg"></a>
                                </td>
                                <td>
                                    <div id="saleName1" class="saleName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA101">어복쟁반</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo1" class="saleInfo">
                                        <span id="salePrice1" class="salePrice" style="text-decoration: line-through; color: gray;">18000 원</span>
										<span class="salePrice" style="color: red;">16200 원</span>
                                        <span>|</span>
                                        <span id="saleFor1" class="saleFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="salevBtn1" class="saleBtn">
                                    	<input type="hidden" class="pCode" value="KOA101">
                                    	<input type="hidden" class="pPrice" value="16200">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="saleInnerTable"> <!-- KOA102 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA102"><img id="saleImg2" class="saleImg" src="<%=contextPath%>/resources/attachment_product/사골만두전골.jpg"></a>
                                </td>
                                <td>
                                    <div id="saleName2" class="saleName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA102">사골만두전골</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo2" class="saleInfo">
                                        <span id="salePrice2" class="salePrice" style="text-decoration: line-through; color: gray;">16500 원</span>
										<span class="salePrice" style="color: red;">14850 원</span>
                                        <span>|</span>
                                        <span id="saleFor2" class="saleFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleBtn2" class="saleBtn">
                                    	<input type="hidden" class="pCode" value="KOA102">
                                    	<input type="hidden" class="pPrice" value="14850">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="saleInnerTable"> <!-- ASA303 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=ASA303"><img id="saleImg3" class="saleImg" src="<%=contextPath%>/resources/attachment_product/홍콩식 마파두부.jpg"></a>
                                </td>
                                <td>
                                    <div id="saleName3" class="saleName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=ASA303">홍콩식 마파두부</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo3" class="saleInfo">
                                        <span id="salePrice3" class="salePrice" style="text-decoration: line-through; color: gray;">13000 원</span>
										<span class="salePrice" style="color: red;">11700 원</span>
                                        <span>|</span>
                                        <span id="saleFor3" class="saleFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleBtn3" class="saleBtn">
                                    	<input type="hidden" class="pCode" value="ASA303">
                                    	<input type="hidden" class="pPrice" value="11700">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="saleInnerTable"> <!-- KOA109 -->
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href="<%=contextPath%>/pDetail.pro?proCode=KOA109"><img id="saleImg4" class="saleImg" src="<%=contextPath%>/resources/attachment_product/햄듬뿍 부대찌개.jpg"></a>
                                </td>
                                <td>
                                    <div id="saleName4" class="saleName"><a class="aProductLabel" href="<%=contextPath%>/pDetail.pro?proCode=KOA109">햄듬뿍 부대찌개</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo4" class="saleInfo">
                                        <span id="salePrice4" class="salePrice" style="text-decoration: line-through; color: gray;">12500 원</span>
										<span class="salePrice" style="color: red;">11250 원</span>
                                        <span>|</span>
                                        <span id="saleFor4" class="saleFor">2인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleBtn4" class="saleBtn">
                                    	<input type="hidden" class="pCode" value="KOA109">
                                    	<input type="hidden" class="pPrice" value="11250">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    
    <script>
	
		$(function(){
			$(".cartLogo").click(function(){
				var proCode = $(this).parent().siblings(".pCode").val();
				var proPrice = Number($(this).parent().siblings(".pPrice").val());
				
				console.log(proCode);
				console.log(proPrice);
				
				$.ajax({
					url:"toCart.pro",
					data:{proCode:proCode, proPrice:proPrice},
					type:"post",
					success:function(msg){
						if(msg == 0){
							alert("상품이 장바구니에 이미 존재합니다.");
						}else{
							var result = confirm("상품이 장바구니에 담겼습니다. 장바구니를 확인하시겠습니까?");
							if(result){
								location.href="cartList.pro";
							}
						}
					}, error:function(){
						alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
					}
				});
				
			});
			
			/* $(".likeLogo").click(function(){
				
			}); */
			
		});
	</script>
	
	
	<%@ include file="views/common/mainFooter.jsp" %>	
	
</body>
</html>