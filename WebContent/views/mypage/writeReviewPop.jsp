<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<% 
	String contextPath = request.getContextPath(); 
	Product p = (Product)request.getAttribute("p");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
	/* 리뷰작성 팝업 틀 */
	.writeReviewWrap{
		width:490px;
		height:680px;
		margin-top: 10px;
	}
	/* 상품정보 */
	.writeReview{
		margin-left:5px;
	}
	.writeReview, .writeReview tr{
		border-top:collapse;
		border-bottom:1px solid lightgrey;
		border-collapse: collapse;
	}
	.writeReview td{
		font-size:13px;
	}
	.writeReview a{
		text-decoration:none;
		font-size:15px;
		cursor:pointer;
	}
	#writeReview_tr1{
		padding:15px 15px;
	}
	#writeReview_tr1 img{
		float:left;
		margin-left: 15px;
		cursor:pointer;
	}
	#writeReview_tr1 p{
		float:left;
		margin:25px 0px 0px 15px;
		cursor:pointer;
	}
	
	/*별점 선택 영역 */
	#writeReview_tr2>td>div{text-align:center; color:grey;}
	#writeReview_tr2 a{font-size:30px;}
	#writeReview_tr2 p{font-size:13px;}
	
	/* 리뷰작성 영역 */
	#reviewInfo{margin-left:25px;}
	#reviewCounter{margin-left:170px;}
	#writeReview_tr3>td>div{text-align:center;}
	
	/* 사진,동영상 첨부 */
	#writeReview_tr3>td>img{margin:10px 0px 0px 24px; cursor:pointer;}
	#attachmentBtn{
		width:250px;
		height:40px;
		margin:10px 0px 0px 125px;
		background:white;
		border:1px solid lightgrey;
		padding: 0;
		cursor:pointer;
	}
	#attachmentBtn>div{
		width:200px;
		margin-left:50px;
	}
	#attachmentBtn img{float:left;}
	#attachmentBtn p{float:left; width:120px; height:20px; margin:8px 0;}

	#reviewcancelBtn{
		width:100px;
		height:40px;
		border:1px solid lightgrey;
		background:none;
		cursor:pointer;
	}
	#reviewSubmitBtn{
		width:100px;
		height:40px;
		background:tomato;
		color:white;
		border:none;
		margin-left:50px;
		cursor:pointer;
	}
	
	/* 취소, 등록 버튼 */
	#reviewBtns{
		width:260px;
		margin:15px 0px 0px 120px;
	}
</style>
</head>
<body>
	<div class="writeReviewWrap">
		<form action="<%= request.getContextPath() %>/insertReview.re" >
			<table class="writeReview" width="490px">
				<tbody>
					<tr id="writeReview_tr1" height="100px">
						<td>
							<input type="hidden" class="pCode" value="<%=p.getProCode()%>"><!-- 상품코드 -->
							<img class="pName" src="<%= request.getContextPath() %>/resources/attachment_product/<%= p.getAtFileName() %>" width="80" height="80">
							<p class="pName" style="color: gray;"><b><%=p.getProName() %></b></p>
							<% if(p.getProSaleYn().equals("Y")){ %>
								<p class="pPrice" style="text-decoration: line-through; color: gray;"><%=p.getProPrice() %></p>
                            	<p class="pPrice" style="color: red;"><%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %></p>
                            <% }else{ %>
								<p class="pPrice" style="color: gray;"><%=p.getProPrice() %></p>
							<% } %>
						</td>
					</tr>
					<tr id="writeReview_tr2" height="50px">
						<td>
							<div>
								<label>상품에 대한 평점을 선택하세요. &nbsp; </label>
								<select name="reviewSum" style="width: 50px; height: 20px; color: gray;">
									<option value=5>★★★★★</option>
									<option value=4>★★★★☆</option>
									<option value=3>★★★☆☆</option>
									<option value=2>★★☆☆☆</option>
									<option value=1>★☆☆☆☆</option>
									<option value=0>☆☆☆☆☆</option>
								</select>
							</div>
						</td>
					</tr>
					<tr id="writeReview_tr3" height="450px" >
						<td>
							<span id="reviewInfo" style="color: gray;">후기를 남겨주세요. (최소 10자 이상)</span><span id="reviewCounter" style="color: gray;">0</span><span style="color: gray;"> / 1000</span>
							<div><textarea rows="12" cols="55" id="reviewContent" style="resize:none; padding: 12px; margin-top: 10px; color: gray; border: 1px solid lightgray;"></textarea></div>
							<img src="" width="130" height="130"><img src="" width="130" height="130"><img src="" width="130" height="130">
							<button id="attachmentBtn">
								<div>
									<img src="<%= request.getContextPath() %>/resources/img/cameralogo.png" width="35" height="35">
									<p>사진/동영상 첨부</p>
								</div>
							</button>
						</td>
					</tr>
				</tbody>
			</table>
			<div id="reviewBtns">
				<button id="reviewcancelBtn" type="button">취소</button>
				<button id="reviewSubmitBtn" type="submit">등록</button>
			</div>
		</form>
	</div>
<!-- 
	<script>
        $(function(){
            $("#reviewContent").keyup(function(){
                var inputLength = $(this).val().length;
                $("#reviewCounter").text(inputLength);

                if(1000-inputLength<0){
                    $("#reviewCounter").css("color", "red");
                }else {
                    $("#reviewCounter").css("color", "gray");
                }
            });
            
            $(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				opener.parent.location="<%= request.getContextPath() %>/pDetail.pro?pCode=" + pCode;
	        	window.close();
			});
            
            $("#reviewcancelBtn").click(function(){
        		window.close();
            })
        });
        
        function toProductDetail(){
        	opener.parent.location="<%= request.getContextPath() %>/pDetail.pro";
        	window.close();
        }
        
        
    </script>
 -->
</body>
</html>