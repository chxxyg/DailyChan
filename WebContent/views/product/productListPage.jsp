<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 
	String category = (String)request.getAttribute("category");
	String title = (String)request.getAttribute("title");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list"); 
	ArrayList<WishList> wishListYN = (ArrayList<WishList>)request.getAttribute("wishList");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
	String proCode = (String)request.getAttribute("proCode");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/productListPage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="categoryWrap">
        <tr>
            <td colspan="4" style="font-size: 50px; font-weight: 600; text-align: center;"><%= title %></td>
        </tr>
        <tr>
            <td colspan="4">
                <table>
                	<% if(title.equals("한식")) { %>
                    <tr>
                        <td><a href="<%= contextPath %>/pList.pro?category=KO&currentPage=1"><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOA&currentPage=1"><div class="categoryBtns">국/탕/찌개</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOB&currentPage=1"><div class="categoryBtns">조림/볶음/구이</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOC&currentPage=1"><div class="categoryBtns">면요리</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOD&currentPage=1"><div class="categoryBtns">분식</div></a></td>
                    </tr>
                    <% } else if(title.equals("양식")) { %>
                    <tr>
                        <td><a href="<%= contextPath %>/pList.pro?category=IT&currentPage=1"><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITA&currentPage=1"><div class="categoryBtns">스테이크</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITB&currentPage=1"><div class="categoryBtns">파스타</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITC&currentPage=1"><div class="categoryBtns">사이드</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITD&currentPage=1"><div class="categoryBtns">샐러드</div></a></td>
                    </tr>
                    <% } else if(title.equals("아시안")) {%>
                    <tr>
                        <td><a href="<%= contextPath %>/pList.pro?category=AS&currentPage=1"><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASA&currentPage=1"><div class="categoryBtns">중식</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASB&currentPage=1"><div class="categoryBtns">일식</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASC&currentPage=1"><div class="categoryBtns">베트남</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASD&currentPage=1"><div class="categoryBtns">퓨전</div></a></td>
                    </tr>
                    <% } else if(title.equals("NEW")) {%>
                    <tr>
                    	<td style="height: 70px;"></td>
                    </tr>
                    <% } else if(title.equals("BEST")) {%>
                    <tr>
                    	<td style="height: 70px;"></td>
                    </tr>
                    <% } else if(title.equals("SALE")) {%>
                    <tr>
                    	<td style="height: 70px;"></td>
                    </tr>
                    <% } %>
                    
                </table>
            </td>
        </tr>

	</table>
	
	<div id="productListWrap">
		       
		<% for(Product p : list){ %>
		<input type="hidden" class="proCode" value="<%=p.getProCode()%>">
		<table class="categoryInnerTable" style="display:inline-block">
			<tr>
				<td>
					<a href="<%= request.getContextPath() %>/pDetail.pro?proCode=<%= p.getProCode() %>"><img class="productImg" src="<%= request.getContextPath() %>/resources/attachment_product/<%= p.getAtFileName() %>"></a>
				</td>
			</tr>
			<tr>
				<td>
					<div class="productName"><a href="<%= request.getContextPath() %>/pDetail.pro?proCode=<%= p.getProCode() %>"><%= p.getProName() %></a></div>
				</td>
			</tr>
			<% if(title.equals("SALE")){ %>
			<tr>
				<td>
					<input type="hidden" class="sale" value="sale">
					<div class="productInfo title">
						<span class="productPrice" style="text-decoration: line-through; color: gray;"><%= p.getProPrice() %>원</span>
						<span class="discountPrice" style="color: red;"><%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %></span><span>원</span>
						<span>|</span>
						<span class="productFor"><%= p.getProStandard() %>인분</span>
					</div>
				</td>
			</tr>
			<% } else { %>
			<tr>
				<td>
					<input type="hidden" class="sale" value="nonSale">
					<div class="productInfo">
						<span class="productPrice"><%= p.getProPrice() %></span><span>원</span>
						<span>|</span>
						<span class="productFor"><%= p.getProStandard() %>인분</span>
					</div>
				</td>
			</tr>
			<% } %>
			<tr>
				<td>
					<div class="productBtn">
						<button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png"></button>
						<%
							if(loginUser != null)
							{
								int wishListCount = 0;
								for(WishList w : wishListYN){
								    
								    if(p.getProCode().equals(w.getProCode()))
								    {
								        wishListCount = 1;
								    }
								}
								if(wishListCount == 1)
								{
						%>						
							    <button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo wishList_Y" src="<%= request.getContextPath() %>/resources/img/likelogo_orange.png"></button>
						<%
								}
								else
								{
						%>
								<button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo wishList_N" src="<%= request.getContextPath() %>/resources/img/likelogo.png"></button>
						<%    
								}
							}
							else
							{
					    %>
								<button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo wishList_N" src="<%= request.getContextPath() %>/resources/img/likelogo.png"></button>
						<%    
							}
						%>
					</div> 
				</td>
			</tr>
		</table>
		<% } %>
		
		<% if(maxPage <= 1){ %>

		<% } else { %>
				
		<!-- 현재 페이지에 보여질 페이징바 -->
		<div class="pagingArea" align="center">
			
			<% if(currentPage != 1){ %>
				<!-- 맨 처음으로(<<) -->
				<button onclick="location.href='pList.pro?category=<%=category%>&currentPage=1'"> &lt;&lt; </button>
				
				<!-- 이전페이지로 (<) -->
				<button onclick="location.href='pList.pro?category=<%=category%>&currentPage=<%=currentPage-1%>';"> &lt; </button>
			<% } %>
			
			<% for(int p=startPage; p<=endPage; p++){ %>
				<% if(currentPage != p){ %>
				<button onclick="location.href='pList.pro?category=<%=category%>&currentPage=<%=p%>';"> <%= p %> </button>
				<% }else{ %>
				<button disabled> <%= p %> </button>
				<% } %>
			<% } %>
			
			<% if(currentPage != maxPage){ %>
			<!-- 다음페이지로 (>) -->
			<button onclick="location.href='pList.pro?category=<%=category%>&currentPage=<%=currentPage+1%>';"> &gt; </button>
			
			<!-- 맨 마지막으로 (>>) -->
			<button onclick="location.href='pList.pro?category=<%=category%>&currentPage=<%=maxPage%>';"> &gt;&gt; </button>
			<% } %>
		</div>
		<% } %>
		             
	</div>
	
	<script>
	
		$(function(){
			$(".cpCartLogo").click(function(){
				var proCode = $(this).parents(".categoryInnerTable").prev().val();
				var proPrice = $(this).parents(".categoryInnerTable").find(".productPrice").text();
				
				var saleYN = $(this).parents(".categoryInnerTable").find(".sale").val();
				
				if(saleYN == "sale"){
					proPrice = $(this).parents(".categoryInnerTable").find(".discountPrice").text();		
				}
				
				<% if(loginUser != null) {%>
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
							console.log("ajax통신 에러");
						}
					});
				<% }else{ %>
					alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
				<%}%>
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