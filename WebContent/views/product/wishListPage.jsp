<%@page import="com.kh.product.model.dto.WishListDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<WishListDto> list = (ArrayList<WishListDto>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜하기</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/wishListPage.css">
</head>
<body>

	<!-- Header -->
	<%@ include file="/views/common/mainHeader.jsp"%>

	<!-- sidebar -->
	<%@ include file="/views/common/mainSideBar.jsp"%>

	<table id="wishListWrap">
		<tr>
			<td colspan="4"
				style="font-size: 50px; font-weight: 600; text-align: center; padding-bottom: 50px;">내가
				찜한 상품</td>
		</tr>
		<!-- 찜한 순서대로 담을거라 필터(인기순) 안만들었음 -->
		<tr>
			<td>
				<!-- 찜한 상품만 등록되어있기 때문에 주황색 하트로 표시 / 누르면 찜한 목록에서 상품 제거됨 -->
				<table>
				<%
					int size = list.size();
					int index = 0;
					int tdIndex = size;
					int id = 0;
					
					if(size % 4 == 0)
					{
						index = size / 4;
					}
					else if(size % 4 != 0)
					{
						index = size / 4 + 1;
					}
				
					for(int i = 0; i < index; i++)
					{
				%>
					<tr>
					<% 
						for(int j = 0; j < (tdIndex / 4 >= 1 ? 4 : tdIndex % 4); j++)
						{
					%>
							<td>
								<table class="wishListInnerTable">
									<tr><td><input type="hidden" id="pCode" value="<%= list.get(id).getProductCode() %>"></td></tr>
									<tr>
										<td><a href="<%= contextPath %>/pDetail.pro?proCode=<%= list.get(id).getProductCode() %>"><img id="wishListProductImg1"
												class="wishListProductImg" src="<%= contextPath %>/resources/attachment_product/<%= list.get(id).getFileName() %>"></a></td>
									</tr>
									<tr>
										<td>
											<div id="wishListProductName1" class="wishListProductName">
												<a href="<%= contextPath %>/pDetail.pro?proCode=<%= list.get(id).getProductCode() %>"><%= list.get(id).getProductName() %></a>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div id="wishListProductInfo1" class="wishListProductInfo">
												<span id="wishListProductPrice1" class="wishListProductPrice"><%= list.get(id).getProductPrice() %>원</span>
												<span>|</span> <span id="wishListProductFor1"
													class="wishListProductFor"><%= list.get(id).getProductStandard() %>인분</span>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div id="wishListProductBtn1" class="wishListProductBtn">
												<button type="button"
													style="border: none; background-color: white;">
													<img class="wishListCartLogo"
														src="<%=request.getContextPath()%>/resources/img/cartlogo.png"
														alt="">
												</button>
												<button type="button"
													style="border: none; background-color: white;">
													<img class="wishListLikeLogo"
														src="<%=request.getContextPath()%>/resources/img/likelogo_orange.png"
														alt="">
												</button>
											</div>
										</td>
									</tr>
								</table>
							</td>
					<%
							id++;
						}
						tdIndex -= 4;
					%>
					</tr>
				<%
					}
				%>
				</table>
			</td>
		</tr>
	</table>

	<!-- Footer -->
	<%@ include file="/views/common/mainFooter.jsp"%>


<script>
	$(".wishListLikeLogo").click(function(){
		
		var proCode = $(this).parents(".wishListInnerTable").children().children().eq(0).children().children().val();
		console.log(proCode);
		$.ajax({
			url:"deleteWishList.pro",
			data:{"proCode" : proCode},
			type: "post",
			success:function(result)
			{
				if(result > 0)
				{
					alert("상품이 찜목록에서 삭제되었습니다.");
					location.reload();
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
</body>
</html>