<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
	    width:1000px;
	    margin:auto;
	    padding-top:70px;
	}
	
	#deliverySite{
		width:320px;
		float:right;
		border:1px solid black;
	}
	
	#mypageBrief td{
		width:830px;
		border:1px solid black;
	}

	#mypageBrief img{
		width:15px;
		margin-top:8px;
		margin-right:3px;
		float:left;
	}
	#mypageBrief p{
		width:300px;
		font-size:11px;
	    float:left;
	}
	#mypageCategory{
		width:200px;
		height:800px;
		border:1px solid black;
		float:left;
	}
	#mypageCategory>table{
		border:1px solid black;
		height:40px;
	}
	#mypageCategory>table>tr>th, #mypageCategory>table>tr>td{
		text-align:center;
		vertical-align:middle;
		height:40px;
		border:1px solid black;
	}
	#mypageCategory>table>.first{
		padding-top:20px;
	}
	
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
	
	<div class="outer">
        <h1 style="text-align:center";>마이페이지</h1>
        <br>
        <hr>

        <div id="mypageBrief" align="center">
            <table>
                <tr>
                    <td colspan="4">
                    	<div id="deliverySite">
	                        <img src="../../resources/images/positionlogo.png">
	                        <p>기본 배송지 정보 넣을 곳</p>
                        </div>
                    </td>
                </tr>
                <tr>
                	<td rowspan="2">'로그인한회원이름'님</td>
                	<td>주문/배송></td>
                	<td>쿠폰></td>
                	<td>적립금></td>
                </tr>
                <tr>
                	<td>0건</td>
                	<td>0개</td>
                	<td>0원</td>
                </tr>
            </table>
           
        </div>
       <br>
       <br>

		<div id="mypageCategory">
			<table>
				<tr class="first">
					<th>주문정보</th>
				</tr>
				<tr>
					<td>주문/배송 조회</td>
				</tr>
				<tr>
					<td>취소/반품 조회</td>
				</tr>
				<tr class="first">
					<th>구매혜택</th>
				</tr>
				<tr>
					<td>쿠폰/적립금 조회</td>
				</tr>
				<tr class="first">
					<th>활동내역</th>
				</tr>
				<tr>
					<td>최근 본 상품</td>
				</tr>
				<tr>
					<td>고객 후기</td>
				</tr>
				<tr>
					<td>나의 문의 내역</td>
				</tr>
				<tr class="first">
					<th>회원정보</th>
				</tr>
				<tr>
					<td>배송지 관리</td>
				</tr>
				<tr>
					<td>개인정보수정</td>
				</tr>
			</table>
		</div>
    </div>

</body>
</html>