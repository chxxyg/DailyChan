<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
    /*content*/
    	body{margin:0px;padding:0px; left:0; top:0; box-sizing:border-box;}
        #adproductEnroll{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        #adcate{
            margin-left:80px;
            margin-top:50px;
            line-height: 40px;
            font-weight: bolder;
            height:600px;
        }
        #outer{
			margin:15px;
         	padding:15px;
         	width:700px;
         	height:90%;
         	background:rgb(255,240,240);
         	opacity:0.7;      
        }
        #enrollsubmit{
        	text-align:center;
        	margin-top:50px;
        }
       
        Button {
			box-shadow:inset 0px 1px 0px 0px #fce2c1;
			background:linear-gradient(to bottom, #ffc477 5%, #fb9e25 100%);
			background-color:#ffc477;
			border-radius:6px;
			border:1px solid #eeb44f;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:13px;
			font-weight:bold;
			padding:6px 11px;
			text-decoration:none;
			text-shadow:0px 1px 0px #cc9f52;
		}
		Button:hover {
			background:linear-gradient(to bottom, #fb9e25 5%, #ffc477 100%);
			background-color:#fb9e25;
		}
		Button:active {
			position:relative;
			top:1px;
		}
        
        
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>

    <div id="adproductEnroll">
       <div id="outer">
        <h1>&nbsp;&nbsp;&nbsp;이벤트 작성</h1>
        <table id="adcate">
            <tr>
                <td width="200" >* 이벤트명</td>
                <td><input type="text" required></td>
            </tr>
            <tr>
                <td width="200">* 이벤트기간</td>
                <td><input type="date" required></td>
            </tr>
         
            <tr>
                <td width="200">기본이미지</td>
                <td><input type="file"></td>
            </tr>
            <tr>
                <td width="200">세부 이미지 01</td>
                <td><input type="file"></td>
            </tr>
            <tr>
                <td width="200">세부 이미지 02</td>
                <td><input type="file" ></td>
            </tr>
            <tr>
                <td width="200">세부 이미지 03</td>
                <td><input type="file"></td>
            </tr>
            
            <tr>
                <td width="200">이벤트 상세내용</td>
                <td><textarea cols="40" rows="20" style="resize:none"></textarea></td>
            </tr>
        </table>
       		 <div id="enrollsubmit">
        		<button type="submit">이벤트 등록</button>&nbsp;&nbsp;
        		<button onclick="location.href='http://localhost:9999/dailyChan/views/admin/adminEvent/adminEventList.jsp'">목록으로</button>
        	</div>        
       </div>
    </div>
</body>
</html>