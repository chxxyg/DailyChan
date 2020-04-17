<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 리뷰작성 팝업 틀 */
	.writeReviewWrap{
		width:500px;
		height:780px;
		border:1px solid red;
	}
	/* 상품정보 */
	.writeReview{
		margin-left:5px;
	}
	.writeReview, .writeReview tr{
		border-top:1px solid lightgrey;
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
		padding:15px 0px 15px 0px;
	}
	#writeReview_tr1 img{
		float:left;
		margin-left:30px;
	}
	#writeReview_tr1 div{
		width:230px;
		text-align:left;
		float:left;
		margin:30px 0px 0px 25px;
	}
	
	/*별점 선택 영역 */
	#writeReview_tr2>td>div{text-align:center; color:grey;}
	#writeReview_tr2 a{font-size:30px;}
	#writeReview_tr2 p{font-size:13px;}
	
	/* 리뷰작성 영역 */
	#reviewInfo{margin-left:25px;}
	#writeReview_tr3 #counter{margin-left:170px;}
	#writeReview_tr3>td>div{text-align:center;}
	
	/* 사진,동영상 첨부 */
	#writeReview_tr3>td>img{margin:10px 0px 0px 24px; cursor:pointer;}
	#attachmentBtn{
		width:250px;
		height:40px;
		margin:10px 0px 0px 125px;
		background:white;
		border:1px solid grey;
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
		border:1px solid black;
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
		<form>
			<table class="writeReview" width="490px">
				<tbody>
					<tr id="writeReview_tr1" height="100px">
						<td>
							<a><img src="" width="80px" height="80px"></a>
							<div>
								<a href=""><b>데일리찬 상품명</b></a> | 2인분<br>
							</div>
						</td>
					</tr>
					<tr id="writeReview_tr2" height="100px">
						<td>
							<div>
								<span><a>☆</a><a>☆</a><a>☆</a><a>☆</a><a>☆</a></span>
								<p>별점을 선택하세요.</p>
							</div>
						</td>
					</tr>
					<tr id="writeReview_tr3" height="500px" >
						<td>
							<span id="reviewInfo">후기를 남겨주세요. (최소 10자 이상)</span><span id="counter">0</span> / 1000
							<div><textarea rows="17" cols="60" id="reviewContent" style="resize:none;"></textarea></div>
							<img src="" width="130" height="130"><img src="" width="130" height="130"><img src="" width="130" height="130">
							<button id="attachmentBtn">
								<div>
									<img src="<%= request.getContextPath() %>/resources/img/cameralogo.png" width=35" height="35">
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

	<script>
        $(function(){
            $("#reviewContent").keyup(function(){
                var inputLength = $(this).val().length;
                $("#reviewContent").text(inputLength);

                if(150-inputLength<0){
                    $("#reviewContent").css("color", "red");
                }else {
                    $("#reviewContent").css("color", "black");
                }
            });
        });
    </script>

</body>
</html>