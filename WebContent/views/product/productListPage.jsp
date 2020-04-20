<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 
	String category = (String)request.getAttribute("category");
	String title = (String)request.getAttribute("title");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list"); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/productListPage.css">
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
                        <td><a href="<%= contextPath %>/pList.pro?category=KO"><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOA"><div class="categoryBtns">국/탕/찌개</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOB"><div class="categoryBtns">조림/볶음/구이</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOC"><div class="categoryBtns">면요리</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=KOD"><div class="categoryBtns">분식</div></a></td>
                    </tr>
                    <% } else if(title.equals("양식")) { %>
                    <tr>
                        <td><a href="<%= contextPath %>/pList.pro?category=IT"><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITA"><div class="categoryBtns">스테이크</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITB"><div class="categoryBtns">파스타</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITC"><div class="categoryBtns">사이드</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ITD"><div class="categoryBtns">샐러드</div></a></td>
                    </tr>
                    <% } else if(title.equals("아시안")) {%>
                    <tr>
                        <td><a href="<%= contextPath %>/pList.pro?category=AS"><div class="categoryBtns">전체보기</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASA"><div class="categoryBtns">중식</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASB"><div class="categoryBtns">일식</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASC"><div class="categoryBtns">베트남</div></a></td>
                        <td><a href="<%= contextPath %>/pList.pro?category=ASD"><div class="categoryBtns">퓨전</div></a></td>
                    </tr>
                    <% } %>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right;">
                <div id="categoryFilter">
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
		<table class="categoryInnerTable" style="display:inline-block">
			<tr>
				<td>
					<a href=""><img class="productImg" src="<%= request.getContextPath() %>/resources/attachment_product/<%= p.getAtFileName() %>"></a>
				</td>
			</tr>
			<tr>
				<td>
					<div class="productName"><a href=""><%= p.getProName() %></a></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="productInfo">
						<span class="productPrice"><%= p.getProPrice() %>원</span>
						<span>|</span>
						<span class="productFor"><%= p.getProStandard() %>인분</span>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="productBtn">
						<button type="button" style="border: none; background-color: white;"><img class="cpCartLogo" src="<%= request.getContextPath() %>/resources/img/cartlogo.png"></button>
						<button type="button" style="border: none; background-color: white;"><img class="cpLikeLogo" src="<%= request.getContextPath() %>/resources/img/likelogo.png"></button>
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