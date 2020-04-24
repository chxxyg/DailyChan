<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list"); 
	String keyword = (String)request.getAttribute("keyword");

	String proCode = (String)request.getAttribute("proCode");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/searchResultPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>


	<div id="searchWrap"><span id="searchKeyword"><%= keyword %></span> 검색어로 총 <span id="searchTotal"><%= list.size() %></span>개의 상품을 찾았습니다. </div>


	<div id="productListWrap">
		       
		<% for(Product p : list){ %>
		<table class="searchInnerTable" style="display: inline-block;">
			<tr>
				<td>
					<a href="<%= request.getContextPath() %>/pDetail.pro?proCode=<%= p.getProCode() %>"><img class="searchProductImg" src="<%= request.getContextPath() %>/resources/attachment_product/<%= p.getAtFileName() %>"></a>
				</td>
			</tr>
			<tr>
				<td>
					<div class="searchProductName"><a href="<%= request.getContextPath() %>/pDetail.pro?proCode=<%= p.getProCode() %>"><%= p.getProName() %></a></div>
				</td>
			</tr>
			
			<% if(p.getProSaleYn().equals("Y")){ %>
			<tr>
				<td>
					<div class="searchProductInfo">
						<span class="searchProductPrice" style="text-decoration: line-through; color: gray;"><%= p.getProPrice() %>원</span>
						<span class="searchProductPrice" style="color: red;"><%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %> 원</span>
						<span>|</span>
						<span class="searchProductFor"><%= p.getProStandard() %>인분</span>
					</div>
				</td>
			</tr>
			<% } else { %>
			<tr>
				<td>
					<div class="searchProductInfo">
						<span class="searchProductPrice"><%= p.getProPrice() %>원</span>
						<span>|</span>
						<span class="searchProductFor"><%= p.getProStandard() %>인분</span>
					</div>
				</td>
			</tr>
			<% } %>
			
			<tr>
				<td>
					<div class="searchProductBtn">
						<button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png"></button>
						<button type="button" style="border: none; background-color: white;"><img class="searchLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png"></button>
					</div>
				</td>
			</tr>
		</table>
		<% } %>   
	</div>
	

	                        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
</body>
</html>