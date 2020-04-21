<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

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

    <table id="searchWrap">
        <tr>
            <td colspan="4">
                <div id="searchInputWrap">
                    <form id="searchInputForm">
                        <div id="searchInputArea">
                            <input id="searchInput" type="search" placeholder="찾고 싶은 상품을 검색해보세요.">
                            <a href=""><img id="searchResultBtn" src="<%= request.getContextPath() %>/resources/img/searchlogo.png"></a>
                        </div>
                    </form>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <div id="searchKeywordWrap"><span id="searchKeyword">키워드</span> 검색어로 총 <span id="searchTotal">8</span>개의 상품을 찾았습니다. </div>
            </td>
        </tr>
        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right;">
                <div id="searchFilter">
                    <span><a href="">인기순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">최신순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">낮은가격순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">높은가격순</a></span>
                    <span>&nbsp; | &nbsp;</span>
                    <span><a href="">고객리뷰순</a></span>
                </div>
            </td>
        </tr>
    </table>

	<div id="productListWrap">
		       
		<% for(Product p : list){ %>
		<table class="searchInnerTable">
			<tr>
				<td>
					<a href=""><img class="searchProductImg" src="<%= request.getContextPath() %>/resources/attachment_product/<%= p.getAtFileName() %>"></a>
				</td>
			</tr>
			<tr>
				<td>
					<div class="searchProductName"><a href=""><%= p.getProName() %></a></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="searchProductInfo">
						<span class="searchProductPrice"><%= p.getProPrice() %>원</span>
						<span>|</span>
						<span class="searchProductFor"><%= p.getProStandard() %>인분</span>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="searchProductBtn">
						<button type="button" style="border: none; background-color: white;"><img class="searchCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png"></button>
						<button type="button" style="border: none; background-color: white;"><<img class="searchLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png"></button>
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