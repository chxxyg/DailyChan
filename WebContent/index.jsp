<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#mainBanner, #bestWrap, #newSaleWrap, #instaWrap{
	    width: 1000px;
	    margin: auto;
	    box-sizing: border-box;
	}
	
	/* 메인배너 */
	#mainBanner{
		width: 1100px;
	    height: 420px;
		margin: auto;
		text-align: center;
	    margin-top: 30px;
	    margin-bottom: 50px;
	}
	#mainBanner img{
		width: 1100px;
	    height: 420px;
	}
	
	/* BEST */
	#bestWrap{
	    height: 1000px;
	    margin-bottom: 100px;
	}
	#bestLabel{
	    height: 60px;
	    font-size: 40px;
	    font-weight: 600;
	    padding: 25px;
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
	    height: 870px;
	    margin-bottom: 100px;
	}
	#newLabel, #saleLabel{
	    height: 40px;
	    font-size: 40px;
	    font-weight: 600;
	    padding: 25px;
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
	    padding-left: 5px;
	}
	
	/* 인스타그램 */
	#instaWrap{
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
	    width: 500px;
	    height: 40px;
	    font-size: 20px;
	    font-weight: 500;
	    text-align: right;
	    padding-right: 10px;
	}
	.instaImg{
	    width: 245px;
	    height: 245px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>데일리찬</title>
</head>
<body>
	<%@ include file="views/common/mainHeader.jsp" %>
	<%@ include file="views/common/mainSideBar.jsp" %>
	
	
	<script>
		$(function(){
			
			$(document).ready(function(){
				$.ajax({
					url:"pList.pro"
				});
			});
			
		});
	</script>
	
	<!-- 메인 바디 영역 -->
    <div id="mainBanner">
        <img id="mainBannerImg1" src="resources/mainBannerImg/mainbanner1.jpg">
    </div>
    
    <div id="bestWrap">
        <div id="bestLabel"><a class="aLabel" href="">실시간 베스트</a></div>
        <div id="bestTable">
        
        	<% for(int i=0; i<6; i++){ %>
        		<input type="hidden" class="proCode" value="">
                <table class="bestInnerTable">
                	<tr>
                    	<td><a href=""><img class="bestImg" src="<%= request.getContextPath() %>/resources/attachment_product/"></a></td>
                    </tr>
                    <tr>
                        <td><div class="bestName"><a href=""></a></div></td>
                    </tr>
                    <tr>
                         <td>
                         	<div class="bestInfo">
                             	<span class="bestPrice"></span><span>원</span>
                                <span>|</span>
                                <span class="bestFor">인분</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="bestBtn1" class="bestBtn">
                                <button type="button" style="border: none; background-color: white;"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png"></button>
                                <button type="button" style="border: none; background-color: white;"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png"></button>
                            </div>
                        </td>
                    </tr>
                </table>
			<% } %>
			
        </div>
    </div>

    <div id="newSaleWrap">
        <div id="newWrap">
            <div id="newLabel"><a class="aLabel" href="">NEW</a></div>
            <table id="newTable">
                <tr>
                    <td>
                        <table class="newInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="newImg1" class="newImg" src=""></a>
                                </td>
                                <td>
                                    <div id="newName1" class="newName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo1" class="newInfo">
                                        <span id="newPrice1" class="newPrice">12,000원</span>
                                        <span>|</span>
                                        <span id="newFor1" class="newFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn1" class="newBtn">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="newInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="newImg2" class="newImg" src=""></a>
                                </td>
                                <td>
                                    <div id="newName2" class="newName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo2" class="newInfo">
                                        <span id="newPrice2" class="newPrice">12,000원</span>
                                        <span>|</span>
                                        <span id="newFor2" class="newFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn2" class="newBtn">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="newInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="newImg3" class="newImg" src=""></a>
                                </td>
                                <td>
                                    <div id="newName3" class="newName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo3" class="newInfo">
                                        <span id="newPrice3" class="newPrice">12,000원</span>
                                        <span>|</span>
                                        <span id="newFor3" class="newFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn3" class="newBtn">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="newInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="newImg4" class="newImg" src=""></a>
                                </td>
                                <td>
                                    <div id="newName4" class="newName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newInfo4" class="newInfo">
                                        <span id="newPrice4" class="newPrice">12,000원</span>
                                        <span>|</span>
                                        <span id="newFor4" class="newFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="newBtn4" class="newBtn">
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
            <div id="saleLabel"><a class="aLabel" href="">SALE</a></div>
            <table id="saleTable">
                <tr>
                    <td>
                        <table class="saleInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="saleImg1" class="saleImg" src=""></a>
                                </td>
                                <td>
                                    <div id="saleName1" class="saleName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo1" class="saleInfo">
                                        <span id="salePrice1" class="salePrice">12,000원</span>
                                        <span>|</span>
                                        <span id="saleFor1" class="saleFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="salevBtn1" class="saleBtn">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="saleInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="saleImg2" class="saleImg" src=""></a>
                                </td>
                                <td>
                                    <div id="saleName2" class="saleName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo2" class="saleInfo">
                                        <span id="salePrice2" class="salePrice">12,000원</span>
                                        <span>|</span>
                                        <span id="saleFor2" class="saleFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleBtn2" class="saleBtn">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="saleInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="saleImg3" class="saleImg" src=""></a>
                                </td>
                                <td>
                                    <div id="saleName3" class="saleName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo3" class="saleInfo">
                                        <span id="salePrice3" class="salePrice">12,000원</span>
                                        <span>|</span>
                                        <span id="saleFor3" class="saleFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleBtn3" class="saleBtn">
                                        <button type="button"><img class="cartLogo" src="<%=contextPath%>/resources/img/cartlogo.png" alt=""></button>
                                        <button type="button"><img class="likeLogo" src="<%=contextPath%>/resources/img/likelogo.png" alt=""></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="saleInnerTable">
                            <tr>
                                <td rowspan="3">
                                    <a class="aProductImg" href=""><img id="saleImg4" class="saleImg" src=""></a>
                                </td>
                                <td>
                                    <div id="saleName4" class="saleName"><a class="aProductLabel">데일리찬 상품명</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleInfo4" class="saleInfo">
                                        <span id="salePrice4" class="salePrice">12,000원</span>
                                        <span>|</span>
                                        <span id="saleFor4" class="saleFor">1인분</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="saleBtn4" class="saleBtn">
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

    <div id="instaWrap">
        
        <table id="instaTable">
            <tr>
                <td colspan="2" style="height: 100px;">
                <img id="instaLogo" src="<%=contextPath%>/resources/img/instalogo.png" alt="">
                <div id="instaLabel">&nbsp;Instagram</div>
                </td>
                <td colspan="2">
                    <div class="instaDetail">@dailychan_fotd</div>
                    <div class="instaDetail">#dailychan #fotd</div>
                </td>
            </tr>
            <tr>
                <td>
                    <img id="instaImg1" class="instaImg" src="">
                </td>
                <td>
                    <img id="instaImg2" class="instaImg" src="">
                </td>
                <td>
                    <img id="instaImg3" class="instaImg" src="">
                </td>
                <td>
                    <img id="instaImg4" class="instaImg" src="">
                </td>
            </tr>
            <tr>
                <td>
                    <img id="instaImg5" class="instaImg" src="">
                </td>
                <td>
                    <img id="instaImg6" class="instaImg" src="">
                </td>
                <td>
                    <img id="instaImg7" class="instaImg" src="">
                </td>
                <td>
                    <img id="instaImg8" class="instaImg" src="">
                </td>
            </tr>
        </table>
    </div>
	
	<%@ include file="views/common/mainFooter.jsp" %>	
	
	
</body>
</html>