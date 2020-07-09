<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
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
	    font-size: 35px;
	    font-weight: 600;
	    padding: 25px;
	    margin-bottom: 35px;
	}
	#bestTable{
	    width: 1000px;
	    text-align: center;
	}
	.bestInnerTable{
	    display: inline-block;
	    padding-bottom: 30px;
	    padding-left: 10px;
	    padding-right: 10px;
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
	    padding-left: 5px;
	    margin-top: 5px;
	}
	.bestInfo{
	    width: 300px;
	    height: 30px;
	    font-size: 15px;
	    font-weight: 600;
	    text-align: left;
	    padding-left: 5px;
	}
	.bestPrice{padding-right: 5px;}
	.bestFor{padding-left: 5px;}
	.bestBtn{
	    height: 40px;
	    text-align: right;
	    padding-right: 20px;
	}
	
	
	/* NEW/SALE */
	#newSaleWrap{
	    width: 1000px;
	    margin: auto;
	    box-sizing: border-box;
	    height: 870px;
	}
	#newLabel, #saleLabel{
	    height: 40px;
	    font-size: 35px;
	    font-weight: 600;
	    padding: 25px;
	    margin-bottom: 25px;
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
	    padding-top: 10px;
	    padding-left: 5px;
	    font-size: 20px;
	    font-weight: 600;
	}
	.newInfo, .saleInfo{
	    width: 300px;
	    height: 40px;
	    padding-left: 5px;
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
        <div id="bestTable">
        </div>
    </div>

    <div id="newSaleWrap">
    
        <div id="newWrap">
            <div id="newLabel"><a class="aLabel" href="<%= contextPath %>/pList.pro?category=new&currentPage=1">NEW</a></div>
            <div id="newTable">
			</div>
        </div>

        <div id="saleWrap">
            <div id="saleLabel"><a class="aLabel" href="<%= contextPath %>/pList.pro?category=sale&currentPage=1">SALE</a></div>
            <div id="saleTable">
            </div>
        </div>
        
    </div>
    
 
    <!-- best ajax -->
    <script>
    	$(function(){
    		$.ajax({
    			url:"mainBest.pro",
    			type:"get",
    			success:function(list){
    				var value = "";
    				
    				for(var i=0; i<list.length; i++){
	    				value +=
			                "<input type='hidden' class='pCode' value='" + list[i].proCode + "'>" + 
	                        "<table class='bestInnerTable categoryInnerTable'>" +
			                    "<tr>" +
			                        "<td>" + 
			                            "<a class='aProductImg' href='${pageContext.servletContext.contextPath }/pDetail.pro?proCode=" + list[i].proCode + "'><img class='bestImg' src='${pageContext.servletContext.contextPath }/resources/attachment_product/" + list[i].atFileName + "'></a>" +
			                        "</td>" + 
			                    "</tr>" +
			                    "<tr>" + 
			                        "<td>" + 
			                            "<div class='bestName'><a class='aProductLabel' href='${pageContext.servletContext.contextPath }/pDetail.pro?proCode=" + list[i].proCode + "'>" + list[i].proName + "</a></div>" +
			                        "</td>" + 
			                    "</tr>" +
			                    "<tr>" +
			                        "<td>" +
			                            "<div class='bestInfo'>" + 
			                                "<span class='bestPrice'>" + list[i].proPrice + "원</span>" +
			                                "<span> | </span>" +
			                                "<span class='bestFor'>" + list[i].proStandard + "인분</span>" +
			                            "</div>" + 
			                        "</td>" + 
			                    "</tr>" + 
			                    "<tr>" + 
			                        "<td>" + 
			                            "<div class='bestBtn'>" + 
			                            	"<input type='hidden' class='pPrice' value='" + list[i].proPrice + "'>" +
			                                "<button type='button'><img class='cartLogo' src='${pageContext.servletContext.contextPath }/resources/img/cartlogo.png' alt=''></button>" + 
			                                "<button type='button'><img class='likeLogo' src='${pageContext.servletContext.contextPath }/resources/img/likelogo.png' alt=''></button>" +
			                            "</div>" + 
			                        "</td>" + 
			                    "</tr>" +
			                "</table>";
    				}
    				
    				$("#bestTable").html(value);
    				
    			}, error:function(){
    				console.log("main best ajax failed");
    			}
    		});
    	});
   	</script>
   	
   	<!-- new ajax -->
   	<script>
    	$(function(){
    		$.ajax({
    			url:"mainNew.pro",
    			type:"get",
    			success:function(list){
    				var value = "";
    				
    				for(var i=0; i<list.length; i++){
	    				value +=
		                    "<input type='hidden' class='pCode' value='" + list[i].proCode + "'>" +
	                        "<table class='newInnerTable categoryInnerTable'>" + 
		                        "<tr>" +
		                            "<td rowspan='3'>" + 
		                                "<a class='aProductImg' href='${pageContext.servletContext.contextPath }/pDetail.pro?proCode=" + list[i].proCode + "'><img class='newImg' src='${pageContext.servletContext.contextPath }/resources/attachment_product/" + list[i].atFileName + "'></a>" +
		                            "</td>" +
		                            "<td>" +
		                                "<div class='newName'><a class='aProductLabel' href='${pageContext.servletContext.contextPath }/pDetail.pro?proCode=" + list[i].proCode + "'>" + list[i].proName + "</a></div>" +
		                            "</td>" + 
		                        "</tr>" +
		                        "<tr>" +
		                            "<td>" +
		                                "<div class='newInfo'>" +
		                                    "<span class='newPrice'>" + list[i].proPrice + "원</span>" +
		                                    "<span> | </span>" +
		                                    "<span class='newFor'>" + list[i].proStandard + "인분</span>" +
		                                "</div>" +
		                            "</td>" +
		                        "</tr>" +
		                        "<tr>" +
		                            "<td>" +
		                                "<div class='newBtn'>" +
		                                	"<input type='hidden' class='pPrice' value='" + list[i].proPrice + "'>" +
		                                    "<button type='button'><img class='cartLogo' src='${pageContext.servletContext.contextPath }/resources/img/cartlogo.png' alt=''></button>" +
		                                    "<button type='button'><img class='likeLogo' src='${pageContext.servletContext.contextPath }/resources/img/likelogo.png' alt=''></button>" +
		                                "</div>" +
		                            "</td>" +
		                        "</tr>" +
		                    "</table>";
    				}
    				
    				$("#newTable").html(value);
    				
    			}, error:function(){
    				console.log("main new ajax failed");
    			}
    		});
    	});
   	</script>
   	
	<!-- sale ajax -->
   	<script>
    	$(function(){
    		$.ajax({
    			url:"mainSale.pro",
    			type:"get",
    			success:function(list){
    				var value = "";
    				
    				for(var i=0; i<list.length; i++){
	    				value +=
	                        "<input type='hidden' class='pCode' value='" + list[i].proCode + "'>" +
	    	                "<table class='saleInnerTable categoryInnerTable'>" + 
	                        "<tr>" +
	                            "<td rowspan='3'>" + 
	                                "<a class='aProductImg' href='${pageContext.servletContext.contextPath }/pDetail.pro?proCode=" + list[i].proCode + "'><img class='saleImg' src='${pageContext.servletContext.contextPath }/resources/attachment_product/" + list[i].atFileName + "'></a>" +
	                            "</td>" +
	                            "<td>" +
	                                "<div class='saleName'><a class='aProductLabel' href='${pageContext.servletContext.contextPath }/pDetail.pro?proCode=" + list[i].proCode + "'>" + list[i].proName + "</a></div>" +
	                            "</td>" + 
	                        "</tr>" +
	                        "<tr>" +
	                            "<td>" +
	                                "<div class='saleInfo'>" +
	                                "<input type='hidden' class='sale' value='sale'>" + 
	                                    "<span class='salePrice' style='text-decoration: line-through; color: gray;'>" + list[i].proPrice + "원</span>" +
	                                    "<span class='salePrice discountPrice' style='color: red;'>" + (list[i].proPrice * (1 - list[i].discountRate)) + "</span>" +
	                                    "<span>원 | </span>" +
	                                    "<span class='saleFor'>" + list[i].proStandard + "인분</span>" +
	                                "</div>" +
	                            "</td>" +
	                        "</tr>" +
	                        "<tr>" +
	                            "<td>" +
	                                "<div class='saleBtn'>" +
	                                	"<input type='hidden' class='pPrice' value='" + list[i].proPrice + "'>" +
	                                    "<button type='button'><img class='cartLogo' src='${pageContext.servletContext.contextPath }/resources/img/cartlogo.png' alt=''></button>" +
	                                    "<button type='button'><img class='likeLogo' src='${pageContext.servletContext.contextPath }/resources/img/likelogo.png' alt=''></button>" +
	                                "</div>" +
	                            "</td>" +
	                        "</tr>" +
	                    "</table>";
    				}
    				
    				$("#saleTable").html(value);
    				
    			}, error:function(){
    				console.log("main sale ajax failed");
    			}
    		});
    	});
   	</script>
    	
    	
   	<script>
   		
   		$(document).on("click", ".cartLogo", function(){
				var proCode = $(this).parents(".categoryInnerTable").prev().val();
				var proPrice = $(this).parent().prev().val();
				
				var saleYN = $(this).parents(".categoryInnerTable").find(".sale").val();
				
				if(saleYN == "sale"){
					proPrice = $(this).parents(".categoryInnerTable").find(".discountPrice").text();		
				}

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
   		
		
		$(".wishList_N").click(function(){
			var proCode = $(this).parents(".categoryInnerTable").prev().val();
			<% if(loginUser != null) {%>
				$.ajax({
					url:"toWishList.pro",
					data:{"proCode" : proCode},
					type: "post",
					success:function(result)
					{
						if(result == 0)
						{
							var sel = confirm("상품이 찜목록에 추가되었습니다. 찜목록을 확인하시겠습니까?");
							if(sel)
							{
								location.href="wishList.pro";
							}
							else
							{
								location.reload();
							}
						}
					},
					error:function()
					{
						console.log("ajax통신 에러");
					}
				});
			<% }else{ %>
				alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
			<%}%>
		});
		
		$(".wishList_Y").click(function(){
			var proCode = $(this).parents(".categoryInnerTable").prev().val();
			console.log(proCode);
			$.ajax({
				url:"deleteWishList.pro",
				data:{"proCode" : proCode},
				type: "post",
				success:function(result)
				{
					if(result > 0)
					{
						var sel = confirm("상품이 찜목록에서 삭제되었습니다. 찜목록을 확인하시겠습니까?");
						if(sel)
						{
							location.href="wishList.pro";
						}
						else
						{
							location.reload();
						}
					}
					else
					{
						console.log("DB삭제 오류");
					}
				},
				error:function()
				{
					console.log("ajax통신 에러");
				}
			});
		});
	</script>
	
	
	<%@ include file="views/common/mainFooter.jsp" %>	
	
</body>
</html>