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
        #adproduct{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        #adproductcount{
            width:25px;
            border:none;
            color:red;
        }
        #allcount{
            margin-top: 10px;
        }
        .listProduct{
            margin-top:30px;
            text-align:center;
            width:1000px;
           	height:600px;
            border: 1px solid yellow;
            position:relative;
            
            
        }
        .listProduct>thead>tr>th{
            border:1px solid red;
        }
        #allcount{width:1050px; }
        .listProduct>tbody tr td{
            border: 1px solid blue;
        }
        .listProduct>tbody tr td th{
			height: 20px;
        }
        .outer{
         	margin:15px;
         	width:1050px;
         	height:800px;
         	background:rgb(255,240,240);
         	opacity:0.7;
        }
        
    </style>
</head>
<body>
		<%@ include file="adminMainPage.jsp" %>
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;결제관리</h1>
        <br>
        	아이디 <input type="text"> <button type="button" onclick="">조회</button><br>
        <div id="allcount">
            <div id="countcontent">
                <div style="width:30%;">총 결제 :  <input type="text" id="adproductcount"> 개</div>
               
            </div>
        </div>  
        <table class="listProduct">
            <thead>
                <tr>
                    <th width="50">번호</th>
                    <th width="250">상품코드</th>
                    <th width="300">결제 상품명</th>
                    <th width="250">회원 아이디</th>
                    <th width="150">총 가격</th>
                    <th width="150">주문시간</th>
                    <th width="100">입금유무</th>
                    <th width="100">배송상태</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>ADFINTLNS</td>
                    <td>KH음식배달</td>
                    <td>관리자테스트용</td>
                    <td>329,000</td>
                    <td>421</td>
                    <td>입금대기</td>
                    <td>입금대기</td>
                    <td><input type="button" value="변경"></td>
                </tr>
                                <tr>
                    <td>1</td>
                    <td>ADFINTLNS</td>
                    <td>KH음식배달</td>
                    <td>관리자테스트용</td>
                    <td>329,000</td>
                    <td>421</td>
                    <td>입금대기</td>
                    <td>입금대기</td>
                    <td><input type="button" value="변경"></td>
                </tr>
                
                
            </tbody>

        </table>  
       </div>
    </div>
</body>
</html>