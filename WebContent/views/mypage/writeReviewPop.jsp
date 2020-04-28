<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*, com.kh.mypage.model.vo.*"%>
<% 
	String contextPath = request.getContextPath(); 
	Product p = (Product)request.getAttribute("p");
	String proCode = (String)request.getAttribute("proCode");
	ArrayList<AttachmentProduct> list = (ArrayList<AttachmentProduct>)request.getAttribute("list");
	ArrayList<Review> rLsit = (ArrayList<Review>)request.getAttribute("rList");

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
		height:410px;
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
	#reviewInfo{margin-left:0px;}
	#reviewCounter{margin-left:120px;}

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
			<input type="hidden" name="proCode" value="<%=proCode %>">
			<table class="writeReview" width="490px">
				<tbody>
					<tr id="writeReview_tr1" height="100px">
						<td>

							<img class="pName" src="<%= request.getContextPath() %>/resources/attachment_product/<%=list.get(0).getAtFileName() %>" width="80" height="80">
							<p class="pName" style="color: gray;"><b><%=p.getProName() %></b></p>
							<% if(p.getProSaleYn().equals("Y")){ %>
								<p class="pPrice" style="text-decoration: line-through; color: gray;"><%=p.getProPrice() %>원</p>
                            	<p class="pPrice" style="color: red;"><%= (int)(p.getProPrice()*(1-p.getDiscountRate())) %>원</p>
                            <% }else{ %>
								<p class="pPrice" style="color: gray;"><%=p.getProPrice() %></p>
							<% } %>
						</td>
					</tr>
					<tr id="writeReview_tr2" height="50px">
						<td>
							<div>
								<label>상품에 대한 평점을 선택하세요. &nbsp; </label>
								<select name="rating" style="width: 100px; height: 35px; color: gray;">
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
					<tr id="writeReview_tr3" height="70px" style="text-align:center;" >
						<td>
							<input name="title" type="text" placeholder="상품평 제목을 입력해주세요." required style="width:400px; height:30px; border: 1px solid lightgray; padding-left: 10px;">
						</td>
					</tr>
					<tr id="writeReview_tr4" height="260px" style="text-align:center;">
						<td>
							<span id="reviewInfo" style="color: gray;">상품평을 남겨주세요. (최소 10자 이상)</span><span id="reviewCounter" style="color: gray;">0</span><span style="color: gray;"> / 1000</span>
							<div><textarea name="content" id="reviewContent" required rows="12" cols="55" style="resize:none; padding: 12px; margin-top: 10px; color: gray; border: 1px solid lightgray;"></textarea></div>
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

            $("#reviewcancelBtn").click(function(){
        		window.close();
            })
        });
    </script>

</body>
</html>