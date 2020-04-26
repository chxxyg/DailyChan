<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.mypage.model.vo.Mypage"%>
<%
	ArrayList<Mypage> myList = (ArrayList<Mypage>)request.getAttribute("myList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최근 구매한 상품</title>
<style>
	
	/* 최근 본 상품 */
	.recentProductViewWrap{
		width:800px;
		margin-bottom:200px;
		float:left;
	}
	.recentProductViewWrap>span{
		font-size:12px;
		margin-left:15px;
	}
	
	/* 최근 본 상품 테이블*/
	.recentProduct{
		margin:25px 0px 0px 5px;
	}
	.recentProduct, .recentProduct tr{
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
		border-collapse: collapse;
	}
	.recentProduct th{
		font-size:13px;
		background:#f5f5f5;
	}
	.recentProduct td{
		font-size:12px;
	}
	.recentProduct a{text-decoration:none; cursor:pointer;}
	.recentProduct_td1{
		padding:15px 15px;
	}
	.recentProduct_td1>img{
		float:left;
		margin-left: 25px;
		cursor:pointer;
	}
	.recentProduct_td1>p{
		float:left;
		margin:30px 0px 0px 20px;
		cursor:pointer;
	}
	.recentProduct_td2{padding-left:53px;}
	.shoppingcartBtn{
		width:60px;
		height:30px;
		background:tomato;
		border:none;
		font-size:10px;
		color:white;
		margin-left:45px;
	}
	.shoppingcartBtn:hover{cursor:pointer;}
	
	/* 최근 본 상품 없을 경우 */
	#empty{margin-left:230px; font-size:20px;}
	#caution{margin-left:340px;}
	
</style>
</head>
<body>

	<%@ include file="mypageMainOuter.jsp" %>
	<%@ include file="../common/mainSideBar.jsp" %>
	
	
	<div class="recentProductViewWrap">
		<h3>최근 구매한 상품</h3>
		<hr>
		<span><b><%= memberName %></b> 님의 최근 구매한 상품은 <b><%=myList.size()%></b>개 입니다.</span>

		<table class="recentProduct" width="790px">
			<thead>
				<tr height="35px">
					<th width="490px">제품명</th>
					<th width="150px">제품가격</th>
					<th width="150px">장바구니 담기</th>
				</tr>
			</thead>
			
			<tbody>
			<% if(myList.isEmpty()) { %>
				<tr height="300">
					<td colspan=3>
						<img id="caution" src="<%=contextPath%>/resources/img/cautionlogo.png" width="50" height="50"><br><br>
						<span id="empty">최근 구매하신 상품이 없습니다.</span>
					</td>
				</tr>
			<% }else { %>	
				<% for(int i=0; i<myList.size(); i++) { %>
					<tr>
						<td class="recentProduct_td1">
							<input type="hidden" class="pCode" value="<%=myList.get(i).getProCode()%>">
							<img class="pName" src="<%=contextPath%>/resources/attachment_product/<%=myList.get(i).getFileName()%>" width="80" height="80">
							<p class="pName"><b><%= myList.get(i).getProName() %></b><br>
								
							</p>
						</td>
						<td class="recentProduct_td2">
							<span class="pPrice" id="pPrice"><%= myList.get(i).getPrice() %></span> <span>원</span>
						</td>
						<td class="recentProduct_td3">
							<button type="button" class="shoppingcartBtn">장바구니</button>
						</td>
					</tr>
					<% } %>
			<% } %>
			</tbody>
		</table>

	</div>

	<script>
		$(function(){
			$("#selectRecent").css("color", "rgb(247, 112, 46)");
			
			$(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				location.href="<%=contextPath%>/pDetail.pro?pCode=" + pCode;
			});
			
			$(".shoppingcartBtn").click(function(){
				var proCode = $(this).parents(".recentProduct_td3").siblings(".recentProduct_td1").children(".pCode").val();
				var proPrice = $(this).parents(".recentProduct_td3").siblings(".recentProduct_td2").children(".pPrice").text();
				
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
						//alert("ajax 에러:장바구니 담기 실패");
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
					}
				});
			});
			
		});
		
			
		
		
	</script>
	
	<%@ include file="../../views/common/mainFooter.jsp" %>

</body>
</html>