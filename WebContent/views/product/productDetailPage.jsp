<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/productDetailPage.css">
<style>
	/*리뷰 영역 버튼*/
	div.detailBtns{
		width:1020px;
		height:55px;
		margin:auto;
	}
	div.detailBtns>*{
		float:left;
		text-decoration:none;
		margin-right:5px;
	}
	div#detailReview{
		width:1000px;
		margin:auto;
	}
	
	/* 리뷰 리스트 */
	#reviewList{
		margin:auto;
	}
	#reviewList tr{
		height:50px;
	}
	#reviewList, #reviewList tr, #reviewList td{
		border-top:1px solid lightgrey;
		border-bottom:1px solid lightgrey;
		border-collapse:collapse;
	}
	.reviewTitle{cursor:pointer;}
	
	/* 리뷰 내용 */
	.reviewContent{display:none;}
	
	#reviewImgs{
		width:420px;
		height:530px;
		margin:10px 0px 0px 50px;
		float:left;
		/*border:1px solid red;*/
	}
	#reviewImgs img{
		cursor:pointer;
		margin-left:10px;
	}
	#bigImg~img{margin-top:10px;}
	#reviewDetails{
		width:500px;
		height:450px;
		margin:10px 0px 0px 10px;
		float:left;
	}
	#reviewDetails>span{
		font-size:15px;
		margin-bottom:8px;
	}
	#reviewAvg{
		color:hsl(28, 100%, 50%);
		font-weight:bold;
		font-size:18px;
		margin:0px;
	}
	#reviewDetails>textarea{
		margin-top:15px;
		background:#f5f5f5;
	}
	
	/*리뷰 좋아요 신고 버튼*/
	#likeReportBtns{
		width:135px;
		height:40px;
		margin-left:320px;
	}
	
	#reportBtn{margin-top:3px;}
	#reviewDetails button{
		background:white;
		border:none;
		cursor:pointer;
		float:left;
	}
	#reviewDetails button+p{
		width:25px;
		font-size:12px;
		cursor:pointer;
		margin-top:10px;
		float:left;
	}

	/* 리뷰 수정,삭제버튼 */	
	#reviewBtns>button{
		border:1px solid grey;
		background:white;
		width:60px;
		height:40px;
		margin-left:20px;
		cursor:pointer;
	}
	#reviewBtns{
		width:170px;
		height:50px;
		float:left;
		margin:20px 10px 0px 280px;
	}
	
	/* 리뷰 작성 버튼 */
	#detailReviewBtn{margin-left:270px;}
	
</style>
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="productDetail">
        <tr>
            <td>
                <table id="productImg">
                    <tr>
                        <td colspan="4"><img id="productTitleImg" src=""></td>
                    </tr>
                </table>
            </td>
            <td>
                <table id="productInfo">
                    <tr>
                        <td><div id="productName">데일리찬 상품명</div></td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><div id="productPrice1">가격</div></td>
                                    <td><div id="productPrice2">10,000</div></td>
                                    <td><div id="productPrice3">원</div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="productLine"></div></td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><div id="productGpa">★★★★☆ 4.7</div></td>
                                    <td><div id="productReview">리뷰(120건)</div></td>
                                    <td><div id="productShare"><a href=""><img src="<%= request.getContextPath() %>/resources/img/sharelogo.png" width="30" height="30"></a></div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><div id="productPoint">적립금안내 &nbsp;&nbsp;|&nbsp;&nbsp; 구매 금액의 1% 포인트 적립</div></td>
                    </tr>
                    <tr>
                        <td><div id="productDelivery">배송비안내 &nbsp;&nbsp;|&nbsp;&nbsp; 3만원 이상 구매 시 무료배송 (배송비 3000원)</div></td>
                    </tr>
                    <tr>
                        <td><div class="productLine"></div></td>
                        
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <div id="productAmountWrap">
                                            <button id="productMinusBtn" type="button">-</button>
                                            <span id="productAmount">60</span>
                                            <button id="productPlusBtn" type="button">+</button>
                                        </div>
                                    </td>
                                    <td><div id="productTotal">총 제품 금액</div></td>
                                    <td><div id="productTotalPrice">600,000원</div></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><button id="productBtn1" class="productBtn" type="button">바로구매</button></td>
                                    <td><button id="productBtn2" class="productBtn" type="button">장바구니</button></td>
                                    <td><button id="productBtn3" class="productBtn" type="button">찜하기</button></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <div class="line"></div>

    <table id="detailWrap">
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA1">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB1">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC1">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD1">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div><img id="detailImg" src="" style="width:800px; margin-left:100px;"></div>
            </td>
        </tr>
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA2">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB2">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC2">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD2">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div><img id="detailInfo" src="" style="width:900px; margin-left:50px"></div>
            </td>
        </tr>
	</table>     


	<!-- 리뷰 영역 -->       
    <div class="detailBtns">
		<a href=""><div class="detailBtn" id="detailBtnA3">상세설명</div></a>
		<a href=""><div class="detailBtn" id="detailBtnB3">상품정보</div></a>
		<a href=""><div class="detailBtn" id="detailBtnC3">리뷰(120건)</div></a>
		<a href=""><div class="detailBtn" id="detailBtnD3">상품문의</div></a>
    </div>
       
	<div id="detailReview">
		<span id="detailGpaLabel">구매 고객 평점&nbsp;&nbsp;</span>
		<span id="detailGpa">★★★★☆ 4.7</span>
		<span id="detailGpaInfo">등록된 리뷰 120건 기준</span>
	</div>
      
	<table id="reviewList" width="1000">
		<tr>
			<td width="100">1234</td>
			<td width="100">★★★★☆</td>
			<td class="reviewTitle" width="600">데일리찬 리뷰 나야나~~!~!@!@#</td>
			<td width="100">writerID</td>
			<td width="100">2020-04-10</td>
		</tr>
		<tr class="reviewContent">
			<td colspan="5">
				<div id="reviewImgs">
					<img id="bigImg" src="" width="400" height="400">
					<img src="" width="100" height="100"><img src="" width="100" height="100">
				</div>
				<div id="reviewDetails">
					<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span>
					<p id="reviewAvg">★★★★☆ 4.7</p>
					<textarea rows="23" cols="60" id="reviewContent" style="resize:none;" readonly></textarea>
					<div id="likeReportBtns">
						<button type="button"><img src="<%= contextPath %>/resources/img/thumbsuplogo.png" width="30" height="30"></button><p>20</p>
						<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
					</div>
				</div>
				<div id="reviewBtns">
					<button type="button" onclick="deleteReview();">삭제</button>
					<button type="button" onclick="updateReview();">수정</button>
				</div>
	      	</td>
		</tr>
		<tr>
			<td width="100">1234</td>
			<td width="100">★★★★☆</td>
			<td class="reviewTitle" width="600">데일리찬 리뷰 나야나~~!~!@!@#</td>
			<td width="100">writerID</td>
			<td width="100">2020-04-10</td>
		</tr>
		<tr class="reviewContent">
			<td colspan="5">
				<div id="reviewImgs">
					<img id="bigImg" src="" width="400" height="400">
					<img src="" width="100" height="100"><img src="" width="100" height="100">
				</div>
				<div id="reviewDetails">
					<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span>
					<p id="reviewAvg">★★★★☆ 4.7</p>
					<textarea rows="23" cols="60" id="reviewContent" style="resize:none;" readonly></textarea>
					<div id="likeReportBtns">
						<button type="button"><img src="<%= contextPath %>/resources/img/thumbsuplogo.png" width="30" height="30"></button><p>20</p>
						<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
					</div>
				</div>
				<div id="reviewBtns">
					<button type="button" onclick="deleteReview();">삭제</button>
					<button type="button" onclick="updateReview();">수정</button>
				</div>
	      	</td>
		</tr>
		<tr>
			<td width="100">1234</td>
			<td width="100">★★★★☆</td>
			<td class="reviewTitle" width="600">데일리찬 리뷰 나야나~~!~!@!@#</td>
			<td width="100">writerID</td>
			<td width="100">2020-04-10</td>
		</tr>
		<tr class="reviewContent">
			<td colspan="5">
				<div id="reviewImgs">
					<img id="bigImg" src="" width="400" height="400">
					<img src="" width="100" height="100"><img src="" width="100" height="100">
				</div>
				<div id="reviewDetails">
					<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span>
					<p id="reviewAvg">★★★★☆ 4.7</p>
					<textarea rows="23" cols="60" id="reviewContent" style="resize:none;" readonly></textarea>
					<div id="likeReportBtns">
						<button type="button"><img src="<%= contextPath %>/resources/img/thumbsuplogo.png" width="30" height="30"></button><p>20</p>
						<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
					</div>
				</div>
				<div id="reviewBtns">
					<button type="button" onclick="deleteReview();">삭제</button>
					<button type="button" onclick="updateReview();">수정</button>
				</div>
	      	</td>
		</tr>
		<tr>
			<td width="100">1234</td>
			<td width="100">★★★★☆</td>
			<td class="reviewTitle" width="600">데일리찬 리뷰 나야나~~!~!@!@#</td>
			<td width="100">writerID</td>
			<td width="100">2020-04-10</td>
		</tr>
		<tr class="reviewContent">
			<td colspan="5">
				<div id="reviewImgs">
					<img id="bigImg" src="" width="400" height="400">
					<img src="" width="100" height="100"><img src="" width="100" height="100">
				</div>
				<div id="reviewDetails">
					<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span>
					<p id="reviewAvg">★★★★☆ 4.7</p>
					<textarea rows="23" cols="60" id="reviewContent" style="resize:none;" readonly></textarea>
					<div id="likeReportBtns">
						<button type="button"><img src="<%= contextPath %>/resources/img/thumbsuplogo.png" width="30" height="30"></button><p>20</p>
						<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
					</div>
				</div>
				<div id="reviewBtns">
					<button type="button" onclick="deleteReview();">삭제</button>
					<button type="button" onclick="updateReview();">수정</button>
				</div>
	      	</td>
		</tr>
		<tr>
			<td width="100">1234</td>
			<td width="100">★★★★☆</td>
			<td class="reviewTitle" width="600">데일리찬 리뷰 나야나~~!~!@!@#</td>
			<td width="100">writerID</td>
			<td width="100">2020-04-10</td>
		</tr>
		<tr class="reviewContent">
			<td colspan="5">
				<div id="reviewImgs">
					<img id="bigImg" src="" width="400" height="400">
					<img src="" width="100" height="100"><img src="" width="100" height="100">
				</div>
				<div id="reviewDetails">
					<span><b>작성자명*</b></span>&nbsp;<span>2020-03-31</span>
					<p id="reviewAvg">★★★★☆ 4.7</p>
					<textarea rows="23" cols="60" id="reviewContent" style="resize:none;" readonly></textarea>
					<div id="likeReportBtns">
						<button type="button"><img src="<%= contextPath %>/resources/img/thumbsuplogo.png" width="30" height="30"></button><p>20</p>
						<button type="button"><img id="reportBtn" src="<%= contextPath %>/resources/img/sirenlogo.png" width="25" height="25"></button><p>신고</p>
					</div>
				</div>
				<div id="reviewBtns">
					<button type="button" onclick="deleteReview();">삭제</button>
					<button type="button" onclick="updateReview();">수정</button>
				</div>
	      	</td>
		</tr>
	</table>
         
	<button id="detailReviewBtn" type="button" onclick="insertReview();">리뷰 작성</button>
            
        <!-- 상세조회(클릭 시 슬라이드 다운), 페이징 기능 추가하기 -->
	<table id="detailWrap">
        <tr>
            <td>
                <table class="detailBtns">
                    <tr>
                        <td><a href=""><div class="detailBtn" id="detailBtnA4">상세설명</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnB4">상품정보</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnC4">리뷰(120건)</div></a></td>
                        <td><a href=""><div class="detailBtn" id="detailBtnD4">상품문의</div></a></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="detailQnaList">
                    <tr>
                        <td>1234</td>
                        <td>배송문의</td>
                        <td>데일리찬 배송 빨리해주시조</td>
                        <td>writerID</td>
                        <td>2020-04-10</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <button id="detailQnaBtn" type="button">문의하기</button>
            </td>
        </tr>
        <!-- 상세조회(클릭 시 슬라이드 다운), 페이징 기능 추가하기 -->
    </table>
        
        
    <script>
    	<!--리뷰 슬라이드 다운-->
    	$(function(){
    		$(".reviewTitle").click(function(){
    			var content = $(this).parent().next();
    			
				if(content.css("display") == "none") {
				    $(this).parent().siblings(".reviewContent").slideUp();
				    content.slideDown();
				}else {
				    content.slideUp();
				}
    		});
    	});
    	
    	function insertReview(){
    		window.open("<%=contextPath%>/reviewPop.re", "후기 작성", "width=500, height=730, left=500");
    	}
    	
    
    
    </script>    
        
        
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
</body>
</html>