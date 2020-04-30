<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.admin.adminCoupon.model.vo.AdCoupon"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>쿠폰추가</title>
    <style>
    /*content*/
    	body{margin:0px;padding:0px; left:0; top:0; box-sizing:border-box;}
        #adproductEnroll{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        #adcate{
            margin-left:80px;
            margin-top:30px;
            line-height: 40px;
            font-weight: bolder;
            height:200px;
        }
        #outer{
			margin:15px;
         	padding:15px;
         	width:700px;
         	height:90%;
         	background:rgba(255,240,240,0.6);
         	opacity:0.7;  
         	border-radius:50px; 
         	margin-left:50px;  
         	box-shadow:inset 1px 2px 5px 5px #aeb2b7;    
        }
        #enrollsubmit{
        	text-align:center;
        	margin-top:50px;
        }
       Button {
			box-shadow:inset 0px 1px 0px 0px #181c20;
			background:linear-gradient(#181c20);
			background-color:#181c20;
			border-radius:6px;
			border:1px solid #181c20;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:13px;
			font-weight:bold;
			padding:6px 11px;
			text-decoration:none;
			text-shadow:0px 1px 0px #181c20;
		}
		Button:hover {
			background:linear-gradient(to bottom, #1d1d1d 5%, #e9e7e5 100%);
			background-color:#5554547e;
		}
		Button:active {
			position:relative;
			top:1px;
		}
		}
        
        
        
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>



    <div id="adproductEnroll">
       <div id="outer">
        <h1>&nbsp;&nbsp;&nbsp;쿠폰추가</h1>
       <form id="blackListForm" action="<%=contextPath%>/couponInsert.ad" method="post">      
        <table id="adcate">
            <tr>
                <td width="200" >쿠폰코드</td>
                <td><input type="text" value="" name="couponCode"></td>
            </tr>
            <tr>
                <td width="200">쿠폰이름</td>
                <td><textarea cols="30" rows="3" style="resize:none" name="couponName" required></textarea></td>
            </tr>
            <tr>
                <td width="200">사용조건</td>
                <td><textarea cols="30" rows="3" style="resize:none" name="condition" required></textarea></td>
            </tr>  
            <tr>
                <td width="200">유효기간</td>
                <td><input type="text" value="" name="date"></td>
            </tr>
            <tr>
                <td width="200">쿠폰금액</td>
                <td><input type="text" value="" name="price"></td>
            </tr>
                   
        </table>
       		 <div id="enrollsubmit">
        		<button type="submit" onclick="">추가하기</button>&nbsp;&nbsp;
        		<button type="button" onclick="location.href='<%=contextPath%>/couponList.ad?currentPage=1';">목록으로</button>
        	</div>        
        
       </form>
       </div>
    </div>

   
</body>
</html>
