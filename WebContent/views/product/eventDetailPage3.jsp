<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상세</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/eventDetailPage.css">
</head>
<body>

<!-- Header -->
<%@ include file="/views/common/mainHeader.jsp" %>

<!-- sidebar -->
<%@ include file="/views/common/mainSideBar.jsp" %>

    <table id="eventDetailWrap">
        <tr>
            <td colspan="3" style="font-size: 50px; font-weight: 600; text-align: center;">EVENT</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 70px;"></td>
        </tr>
         <tr>
            <td>
                <div id="eventDetailLabel">
                    <span id="eventDetailTitle">씻고, 볶고, 맛보고, 즐기고!</span>
                    <br><br>
                    <span id="eventDetailDate">2020-01-01 ~ 2020-12-31</span>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <img id="eventDetailImg" src="<%= request.getContextPath() %>/resources/eventImg/eventImg3.jpg">
            </td>
        </tr>
        <tr>
        	<td>
        		<p id="eventDetailP">
					<b>쿠폰 사용시 주의사항</b> <br>
					<br>
					  - 10,000원 할인 쿠폰 : 5만원 이상 구매 시 사용 가능 <br>
					<br>
					<br>
					<b>쿠폰 사용 기한</b> <br>
					<br>
					  - 10,000원 할인 쿠폰 : 쿠폰 다운로드 후 7일 이내 <br>
					<br>
					<br>
					<b>* 쿠폰 사용방법</b> <br>
					<br>
					<b>[ 10,000원 할인쿠폰 ]</b> <br>
					<br>
					1. 주문하실 상품을 50,000원 이상 장바구니에 담아주세요. <br>
					<br>
					2. 결제 시 총 금액 확인 후 [쿠폰조회 및 적용]에서 쿠폰을 선택해주세요. <br>
					<br>
					단, 사용기한이 지난 경우 쿠폰은 발행되었으나 쿠폰목록에서 확인 및 적용이 불가능합니다. <br>
					<br>
					<br>
					위와 같은 내용을 참고하시어 이용에 불편 없으시길 바랍니다.<br>
					<br>
					데일리찬을 이용해 주셔서 감사합니다.<br>
					<br>
					<br>
	        		<button type="button" id="couponBtn4" class="couponBtn">10,000원 할인 쿠폰 다운로드</button>
        		</p>
        	</td>
        </tr>
    </table>
    
      
    <script>
    	
    	$(function(){
    		
    		$("#couponBtn4").click(function(){
    			
    				<% if(loginUser != null){ %>
	    			$.ajax({
	    				url:"/dailyChan/insert.cp",
	    				data:{"cpno":"C0004"},
	    				type:"get",
	    				success:function(result){
	    					if(result > 0){
	    						alert("쿠폰이 성공적으로 담겼습니다.");
	    					}else{
	    						alert("이미 다운로드 받은 쿠폰입니다.");
	    					}
	    				}, error:function(){
	    					
	    				}
	    			});
	    			<% }else{%>
    				alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
    				<%}%>
    		});
    	});

    
    </script>
    
<!-- Footer -->
<%@ include file="/views/common/mainFooter.jsp" %>
    
</body>
</html>