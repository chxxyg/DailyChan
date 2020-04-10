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
	    padding-top:50px;
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
		width:250px;
		height:800px;
		border:1px solid black;
	}
	#mypageCategory>table>tr{
		text-align:center;
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
				<tr class="first">주문정보</tr>
				<tr>주문/배송 조회</tr>
			</table>
		</div>
    </div>

</body>
</html>