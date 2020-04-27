<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 
	Product p = (Product)request.getAttribute("p");
	ArrayList<AttachmentProduct> list = (ArrayList<AttachmentProduct>)request.getAttribute("list");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/productDetailPage.css">
</head>
<body>


<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="productDetail">
        <tr>
            <td>
                <table id="productImg">
                    <tr>
                        <td colspan="4"><img id="productTitleImg" src="<%=request.getContextPath()%>/resources/attachment_product/<%=list.get(0).getAtFileName() %>"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table id="productInfo">
                    <tr>
                        <td><div id="productName"><%=p.getProName() %></div></td>
                    </tr>
                    <tr>
                        <td>
                        <% if(p.getProSaleYn().equals("Y")){ %>
                        	<table>
                                <tr>
                                    <td><div id="productPrice1">가격</div></td>
                                    <td>
                                    <div>
                                    	<span id="productPrice2" style="text-decoration: line-through; color: gray; font-size: 20px; padding-left: 10px;"><%=p.getProPrice() %></span>
                                    	<span id="productPriceSale" style="color: red; font-size: 30px; padding-left:10px;"><%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %></span>
                                    </div>
                                    </td>
                                    <td><div id="productPrice3" style="padding-left: 55px;">원</div></td>
                                </tr>
                            </table>
                        <% }else{ %>
                            <table>
                                <tr>
                                    <td><div id="productPrice1">가격</div></td>
                                    <td><div id="productPrice2"><%=p.getProPrice() %></div></td>
                                    <td><div id="productPrice3">원</div></td>
                                </tr>
                            </table>
                        <% } %>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="productLine"></div></td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><div id="productGpa">
                                    						<% if(p.getProReviewSum()<1){ %>
                                    							☆☆☆☆☆
                                    						<% }else if(p.getProReviewSum()<2){ %>
                                    							★☆☆☆☆ 
                                    						<% }else if(p.getProReviewSum()<3){ %>
                                    							★★☆☆☆ 
                                    						<% }else if(p.getProReviewSum()<4){ %>
                                    							★★★☆☆ 
                                    						<% }else if(p.getProReviewSum()<5){ %>
                                    							★★★★☆
                                    						<% }else if(p.getProReviewSum()>=5){ %>
                                    							★★★★★
                                    						<% } %>
                                    						<%=p.getProReviewSum() %>
                                    	</div></td>
                                    <td><div id="productReview">리뷰(<%=p.getProReviewCount() %>건)</div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><div id="productPoint">적립금안내 &nbsp;&nbsp;|&nbsp;&nbsp; 구매 금액의 1% 포인트 적립</div></td>
                    </tr>
                    <tr>
                        <td><div id="productDelivery">배송비안내 &nbsp;&nbsp;|&nbsp;&nbsp; 3만원 이상 구매 시 무료배송 (배송비 3000원)</div></td>
                    </tr>
                    <tr>
                        <td><div class="productLine"></div></td>
                        
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <div id="productAmountWrap">
                                            <button id="productMinusBtn" type="button">-</button>
                                            <span id="productAmount">60</span>
                                            <button id="productPlusBtn" type="button">+</button>
                                        </div>
                                    </td>
                                    <td><div id="productTotal">총 제품 금액</div></td>
                                    <td><div id="productTotalPrice">600,000원</div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td width="150px;"></td>
                                    <td><button id="productBtn2" class="productBtn" type="button">장바구니</button></td>
                                    <td><button id="productBtn3" class="productBtn" type="button">찜하기</button></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <div class="line"></div>

    <table id="detailWrap">
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA1">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB1">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC1">리뷰(<%=p.getProReviewCount() %>건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD1">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div><img id="detailImg" src="<%=request.getContextPath()%>/resources/attachment_product/<%=list.get(1).getAtFileName() %>" style="width:800px; margin-left:100px;"></div>
            </td>
        </tr>
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA2">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB2">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC2">리뷰(<%=p.getProReviewCount() %>건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD2">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div><img id="detailInfo" src="<%=request.getContextPath()%>/resources/attachment_product/<%=list.get(2).getAtFileName() %>" style="width:1000px;"></div>
            </td>
        </tr>
	</table>     


	<!-- 리뷰 영역 -->
	<div class="reviewArea">       
	    <div class="detailBtns">
			<a href=""><div class="detailBtn" id="detailBtnA3">상세설명</div></a>
			<a href=""><div class="detailBtn" id="detailBtnB3">상품정보</div></a>
			<a href=""><div class="detailBtn" id="detailBtnC3">리뷰(<%=p.getProReviewCount() %>건)</div></a>
			<a href=""><div class="detailBtn" id="detailBtnD3">상품문의</div></a>
	    </div>
	       
		<div id="detailReview">
			<span id="detailGpaLabel">구매 고객 평점&nbsp;&nbsp;</span>
			<span id="detailGpa"><% if(p.getProReviewSum()<1){ %>
                                    	☆☆☆☆☆
                                 <% }else if(p.getProReviewSum()<2){ %>
                                    	★☆☆☆☆ 
                                 <% }else if(p.getProReviewSum()<3){ %>
                                    	★★☆☆☆ 
                                 <% }else if(p.getProReviewSum()<4){ %>
                                    	★★★☆☆ 
                                 <% }else if(p.getProReviewSum()<5){ %>
                                    	★★★★☆
                                 <% }else if(p.getProReviewSum()>=5){ %>
                                    	★★★★★
                                 <% } %>
                                 <%=p.getProReviewSum() %></span>
			<span id="detailGpaInfo">등록된 리뷰 <%=p.getProReviewCount()%>건 기준</span>
		</div>
	      
		<table id="reviewList" width="1000">
			<tr>
				<td width="100">1234</td>
				<td width="100">★★★★☆</td>
				<td class="reviewTitle" width="600">데일리찬 리뷰 나야나~~!~!@!@#</td>
				<td width="100">writerID</td>
				<td width="100">2020-04-10</td>
			</tr>
			
			<tr class="reviewContent">
				<td colspan="5">
					<div id="reviewDetails">
						<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span>
						<p id="reviewAvg">★★★★☆ 4.7</p>
						<textarea rows="10" cols="100" id="reviewContent" style="resize:none;" readonly></textarea>
						<div id="likeReportBtns">
							<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
						</div>
					</div>
			</tr>

		</table>
	         
		<button id="detailReviewBtn" type="button" onclick="insertReview();">리뷰 작성</button>
	</div>
            
        <!-- 상세조회(클릭 시 슬라이드 다운), 페이징 기능 추가하기 -->
	<table id="detailWrap">
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA4">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB4">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC4">리뷰(<%=p.getProReviewCount() %>건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD4">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="detailQnaList">
                    <tr>
                        <td>1234</td>
                        <td>배송문의</td>
                        <td>데일리찬 배송 빨리해주시조</td>
                        <td>writerID</td>
                        <td>2020-04-10</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <button id="detailQnaBtn" type="button">문의하기</button>
            </td>
        </tr>
        <!-- 상세조회(클릭 시 슬라이드 다운), 페이징 기능 추가하기 -->
    </table>
        
        
    <script>
    	<!--리뷰 슬라이드 다운-->
    	$(function(){
    		$(".reviewTitle").click(function(){
    			var content = $(this).parent().next();
    			
				if(content.css("display") == "none") {
				    $(this).parent().siblings(".reviewContent").slideUp();
				    content.slideDown();
				}else {
				    content.slideUp();
				}
    		});
    	});
    	
    	function insertReview(){
    		window.open("<%=contextPath%>/reviewPop.re?pno=<%=p.getProCode()%>", "후기 작성", "width=505, height=525, left=500");
    	}
    	
    
    
    </script>    
        
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
</body>
</html>