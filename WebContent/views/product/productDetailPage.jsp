<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*, com.kh.mypage.model.vo.*, com.kh.inquiry.model.vo.*"%>
<% 
	Product p = (Product)request.getAttribute("p");
	ArrayList<AttachmentProduct> list = (ArrayList<AttachmentProduct>)request.getAttribute("list");
	String proCode = request.getParameter("proCode");
	ArrayList<Review> rList = (ArrayList<Review>)request.getAttribute("rList");
	ArrayList<Inquiry> iList = (ArrayList<Inquiry>)request.getAttribute("iList");
	int wishYn = (int)request.getAttribute("wishYn");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/productDetailPage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
                        <td>
                        	<input type="hidden" id="proCode" value="<%= p.getProCode() %>">
                        	<div id="productName"><%=p.getProName() %></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <% if(p.getProSaleYn().equals("Y")){ %>
                        	<table>
                                <tr>
                                    <td><div id="productPrice1">가격</div></td>
                                    <td>
                                    <div>
                                    	<input type="hidden" class="sale" value="sale">
                                    	<span class="productPrice2" style="text-decoration: line-through; color: gray; font-size: 20px; padding-left: 10px;"><%=p.getProPrice() %></span>
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
                                    <td>
                                    	<input type="hidden" class="sale" value="nonSale">
                                    	<div class="productPrice2"><%=p.getProPrice() %></div>
                                    </td>
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
                                    						<%=(Math.round(p.getProReviewSum()*10)/10.0) %>
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
                                            <button class="minus" name="change_qty_button" data-role="-" data-cart-seq="0" type="button" title="수량감소">-</button>
											<input name="cart_qty" class="input" data-cart-seq="0" type="text" maxlength="3" value="1" title="옵션수량입력">
											<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="0" type="button" title="수량증가">+</button>
                                        </div>
                                    </td>
                                    <td><div id="productTotal">총 상품 금액</div></td>
                                    <% if(p.getProSaleYn().equals("Y")){ %>
                                    <td>
                                    	<span class="productTotalPrice"><%=(int)(p.getProPrice()*(1-p.getDiscountRate()))%></span><span>원</span>
                                    </td>
                                    <% } else { %>	
                                    <td>
                                    	<span class="productTotalPrice"><%=p.getProPrice()%></span><span>원</span>
                                   	</td>
                                    <% } %>
                                    
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td width="150px;"></td>
                                    <td><button id="productBtn2" class="productBtn toCart" type="button">장바구니</button></td>
                                    <%
                                    	if(wishYn == 0)
                                    	{
                                    %>
	                                    <td><button id="productBtn3" class="productBtn cpLikeLogo wishList_N" type="button">찜하기</button></td>
                                    <%
                                    	}
                                    	else
                                    	{
                                    %>
                                    	<td><button id="productBtn3" class="productBtn cpLikeLogo wishList_Y" type="button">찜취소</button></td>
                                    <%
                                    	}
                                    %>
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
                        <td><div class="detailBtn" id="detailBtnA1">상세설명</div></td>
                        <td><div class="detailBtn" id="detailBtnB1">상품정보</div></td>
                        <td><div class="detailBtn" id="detailBtnC1">리뷰(<%=p.getProReviewCount() %>건)</div></td>
                        <td><div class="detailBtn" id="detailBtnD1">상품문의</div></td>
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
                        <td><div class="detailBtn" id="detailBtnA2">상세설명</div></td>
                        <td><div class="detailBtn" id="detailBtnB2">상품정보</div></td>
                        <td><div class="detailBtn" id="detailBtnC2">리뷰(<%=p.getProReviewCount() %>건)</div></td>
                        <td><div class="detailBtn" id="detailBtnD2">상품문의</div></td>
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
	    <div class="detailBtns" style="margin-top: 80px;">
			<div class="detailBtn" id="detailBtnA3">상세설명</div>
			<div class="detailBtn" id="detailBtnB3">상품정보</div>
			<div class="detailBtn" id="detailBtnC3">리뷰(<%=p.getProReviewCount() %>건)</div>
			<div class="detailBtn" id="detailBtnD3">상품문의</div>
	    </div>
	       
		<div id="detailReview" style="margin: auto;">
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
                                 <%=(Math.round(p.getProReviewSum()*10)/10.0) %></span>
			<span id="detailGpaInfo">등록된 리뷰 <%=p.getProReviewCount()%>건 기준</span>
		</div>
	    
	    <div style="width: 1000px;">
			<table class="reviewList" width="1000" style="text-align: center;">
			
			
			    <% for(int i=0; i<rList.size(); i++ ){ %>
				<tr>
					<td width="100"><%= rList.get(i).getReviewBoardNo() %></td>
					<td width="100">
									<% if(rList.get(i).getReviewRating()<1){ %>
										☆☆☆☆☆
									<% }else if(rList.get(i).getReviewRating()<2){ %>
										★☆☆☆☆ 
									<% }else if(rList.get(i).getReviewRating()<3){ %>
										★★☆☆☆ 
									<% }else if(rList.get(i).getReviewRating()<4){ %>
										★★★☆☆ 
									<% }else if(rList.get(i).getReviewRating()<5){ %>
										★★★★☆
									<% }else if(rList.get(i).getReviewRating()>=5){ %>
										★★★★★
									<% } %>
					</td>
					<td class="reviewTitle" width="500"><%=rList.get(i).getReviewTitle() %></td>
					<td width="150"><%= rList.get(i).getMemberId() %></td>
					<td width="150"><%= rList.get(i).getReviewCreateDate() %></td>
				</tr>
				
				<tr class="reviewContent">
					<td colspan="5">
						<div id="reviewDetails" style="padding-top: 30px; text-align: left; padding-left: 80px;">
							<b><%= rList.get(i).getMemberId() %></b> &nbsp;  &nbsp; 
							<span id="reviewAvg"><% if(rList.get(i).getReviewRating()<1){ %>
	                                    				☆☆☆☆☆
	                                 			<% }else if(rList.get(i).getReviewRating()<2){ %>
	                                    				★☆☆☆☆ 
				                                <% }else if(rList.get(i).getReviewRating()<3){ %>
				                                    	★★☆☆☆ 
				                                <% }else if(rList.get(i).getReviewRating()<4){ %>
				                                    	★★★☆☆ 
				                                <% }else if(rList.get(i).getReviewRating()<5){ %>
				                                    	★★★★☆
				                                <% }else if(rList.get(i).getReviewRating()>=5){ %>
				                                    	★★★★★
				                                <% } %>
				                                <%=rList.get(i).getReviewRating() %>
							</span> &nbsp;  &nbsp; 
							<span style="margin-left: 550px;"><%= rList.get(i).getReviewCreateDate() %></span>
							<textarea rows="7" cols="110" id="reviewContent" style="resize:none; margin-bottom: 15px; padding: 20px;" readonly><%=rList.get(i).getReviewContent() %></textarea>
						</div>
				</tr>
				<% } %>
				
				
			</table>
		         
			<button id="detailReviewBtn" type="button" onclick="insertReview();">리뷰 작성</button>
		</div>
	</div>
            
    <div class="qnaArea">       
		<div class="detailBtns" style="margin-top: 80px; margin-bottom: 40px;">
			<div class="detailBtn" id="detailBtnA4">상세설명</div>
			<div class="detailBtn" id="detailBtnB4">상품정보</div>
			<div class="detailBtn" id="detailBtnC4">리뷰(<%=p.getProReviewCount() %>건)</div>
			<div class="detailBtn" id="detailBtnD4">상품문의</div>
	    </div>

	    <div style="width: 1000px;">
			<table class="qnaList" width="1000" style="text-align: center;">
			
			
				<% for(int i=0; i<iList.size(); i++ ){ %>
				<tr>
					<td width="100"><%=iList.get(i).getInquiryBoardNo() %></td>
					<td width="100"><%=iList.get(i).getInquiryType() %></td>
					<td class="qnaTitle" width="500"><%=iList.get(i).getInquiryTitle() %></td>
					<td width="150"><%=iList.get(i).getMemberId() %></td>
					<td width="150"><%=iList.get(i).getInquiryCreateDate() %></td>
				</tr>
				
				<tr class="qnaContent">
					<td colspan="5">
						<div id="qnaDetails" style="padding-top: 30px; text-align: left; padding-left: 90px;">
							<b><%=iList.get(i).getMemberId() %></b> &nbsp;  &nbsp; 
							<span><%=iList.get(i).getInquiryType() %></span> &nbsp;  &nbsp; 
							<span style="margin-left: 550px;"><%=iList.get(i).getInquiryCreateDate() %></span>
							<textarea rows="7" cols="110" id="reviewContent" style="resize:none; margin-bottom: 15px; padding: 20px;" readonly><%=iList.get(i).getInquiryContent() %></textarea>
						</div>
					</td>
				</tr>
				<% } %>
				
			</table>     
        	<button id="detailQnaBtn" type="button" style="margin-bottom: 30px;">문의하기</button>
		</div>
    </div>
        
        
    <script>
    	$(function(){
    		
    		/* 수량 -+ */
    		$(".minus").click(function(){
    			
    			/* 수량 변경 */
    			var q = Number($(this).next().val());
    			$(this).next().val(q-1);
    			
    			/* 상품 세일 여부 */
        		var saleYN = $(this).parents("#productDetail").find(".sale").val();
    			
    			/* 총 상품 금액 변경 */
    			if(saleYN == "sale"){
    				$(".productTotalPrice").text((q-1)*<%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %>);
    			}else{
    				$(".productTotalPrice").text((q-1)*<%=p.getProPrice()%>);
    			}
    			
    			/* 수량 1 미만 선택 시 */
    			if(Number($(this).next().val())<1){
    				alert("1개 이상일 경우 주문이 가능합니다.");
    				$(this).next().val(1);
    				if(saleYN == "Y"){
    					$(".productTotalPrice").text(<%=(int)(p.getProPrice()*(1-p.getDiscountRate()))%>);
    				}else{
    					$(".productTotalPrice").text(<%=p.getProPrice()%>);
    				}
    			}
    			
    		});
    		
    		$(".plus").click(function(){
    			
    			/* 수량 변경 */
    			var q = Number($(this).prev().val());
    			$(this).prev().val(q+1);
    			
    			/* 상품 세일 여부 */
        		var saleYN = $(this).parents("#productDetail").find(".sale").val();
    			
    			/* 총 상품 금액 변경 */
    			if(saleYN == "sale"){
    				$(".productTotalPrice").text((q+1)*<%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %>);
    			}else{
    				$(".productTotalPrice").text((q+1)*<%=p.getProPrice()%>);
    			}
    			
    			/* 수량 10 초과 선택 시 */
    			if(Number($(this).prev().val())>10){
    				alert("한 상품 당 10개 이하로 주문이 가능합니다.");
    				$(this).prev().val(10);
    				
    				if(saleYN == "Y"){
    					$(".productTotalPrice").text(10*<%=(int)(p.getProPrice()*(1-p.getDiscountRate()))%>);
    				}else{
    					$(".productTotalPrice").text(10*<%=p.getProPrice()%>);
    				}
    			}
    			
    		});
    		
    		
    		/* 장바구니 */
    		$(".toCart").click(function(){
    			
    			var proCode = $("#proCode").val();
    			var qty = $(".input").val();
    			
    			var saleYN = $(this).parents("#productDetail").find(".sale").val();
    			var proPrice = 0;
    			
    			if(saleYN == "sale"){
    				proPrice = <%=(int)(p.getProPrice()*(1-p.getDiscountRate()))%>
    			}else{
    				proPrice = <%=p.getProPrice()%>
    			}
    			
    			$.ajax({
    				url:"detailToCart.pro",
    				data:{proCode:proCode, proPrice:proPrice, qty:qty},
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
    		
    		/* 리뷰 슬라이드 다운 */
    		$(".reviewTitle").click(function(){
    			var content = $(this).parent().next();
    			
				if(content.css("display") == "none") {
				    $(this).parent().siblings(".reviewContent").slideUp();
				    content.slideDown();
				}else {
				    content.slideUp();
				}
    		});
    		
    		$(".qnaTitle").click(function(){
    			var content = $(this).parent().next();
    			
				if(content.css("display") == "none") {
				    $(this).parent().siblings(".qnaContent").slideUp();
				    content.slideDown();
				}else {
				    content.slideUp();
				}
    		});
    	});
    	
		$("#detailReviewBtn").click(function(){
			<% if(loginUser != null){ %>
			window.open("<%=contextPath%>/reviewPop.re?proCode=<%=p.getProCode()%>", "후기 작성", "width=510, height=580, left=500");
    		<% }else{%>
				alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
			<%}%>
		});
    
		$(".wishList_N").click(function(){
			var proCode = "<%=proCode%>";
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
			var proCode = "<%=proCode%>";		
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
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
</body>
</html>