<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
	.writtenRWrap{
		width:800px;
		height:650px;
	}
	#writtenInfo{
		width:780px;
		height:90px;
		margin:10px 0px 0px 10px;
		border-bottom:1px solid grey;
	}
	#writtenInfo>*{float:left;}
	#writtenInfo img{
		float:left;
		margin-left: 15px;
		cursor:pointer;
	}
	#writtenInfo p{
		float:left;
		margin:25px 0px 0px 15px;
		cursor:pointer;
	}
	#reviewImgs{
		width:420px;
		height:560px;
		margin:10px 0px 0px 10px;
		float:left;
	}
	#reviewImgs img{
		cursor:pointer;
		margin-left:10px;}
	#bigImg~img{margin-top:10px;}
	#reviewDetail{
		width:350px;
		height:450px;
		margin:10px 0px 0px 10px;
		float:left;
	}
	#reviewAvg{color:hsl(28, 100%, 50%); font-weight:bold;}
	#reviewDetail>textarea{
		margin-top:15px;
		background:#f5f5f5;
	}
	#likeReportBtns{
		width:170px;
		height:40px;
		margin-left:180px;
	}
	
	#reportBtn{margin-top:3px;}
	#reviewDetail button{
		background:white;
		border:none;
		cursor:pointer;
		float:left;
	}
	#reviewDetail button+p{
		width:40px;
		font-size:12px;
		cursor:pointer;
		margin-top:10px;
		float:left;
	}
	
	#reviewBtns>button{
		border:1px solid grey;
		background:white;
		width:60px;
		height:40px;
		margin-right:20px;
		cursor:pointer;
	}
	#reviewBtns{
		width:260px;
		height:50px;
		float:left;
		margin:20px 10px 0px 100px;
	}
	
</style>
</head>
<body>

	<div class="writtenRWrap">
	
		<div id="writtenInfo">
			<input type="hidden" class="pCode" value="ITC202"><!-- 상품코드 -->
			<img class="pName" src="" width="80" height="80">
			<p class="pName"><b>데일리찬 상품명</b> | 2인분<br>
		</div>
		
		<div id="reviewImgs">
			<img id="bigImg" src="" width="400" height="400">
			<img src="" width="100" height="100"><img src="" width="100" height="100">
		</div>
		<div id="reviewDetail">
			<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span><br>
			<span id="reviewAvg">★★★★☆ 4.7</span>
			<textarea rows="23" cols="45" id="reviewContent" style="resize:none;" readonly></textarea>
			<div id="likeReportBtns">
				<button type="button"><img src="<%= contextPath %>/resources/img/thumbsuplogo.png" width="30" height="30"></button><p>좋아요</p>
				<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
			</div>
		</div>
		<div id="reviewBtns">
		<button type="button" onclick="deleteReview();">삭제</button>
		<button type="button" onclick="updateReview();">수정</button>
		<button type="button" onclick="closeReview();">닫기</button>
		</div>
	</div>

	<script>
		
		$(function(){
			$(".pName").click(function(){
				var pCode = $(this).siblings(".pCode").val();
				opener.parent.location="<%= contextPath %>/pDetail.pro?pCode=" + pCode;
	        	window.close();
			});
		});
	
		function closeReview() {
			window.close();
		}
		
		function toProductDetail(){
        	opener.parent.location="<%= contextPath %>/pDetail.pro";
        	window.close();
        }
	
	</script>


</body>
</html>