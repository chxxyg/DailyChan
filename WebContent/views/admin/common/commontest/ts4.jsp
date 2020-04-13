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
           
            border: 1px solid yellow;
            position:relative;
            
            
        }
        .listProduct>thead>tr>th{
            border:1px solid red;
        }
        #allcount{width:1400ps; }
        .listProduct>tbody>tr>td{
            border: 1px solid blue;
        }
        .outer{
         	margin:20px;
         	width:100%;
         	height:100%;
        }
        
    </style>
</head>
<body>
		<%@ include file="adminMainPage.jsp" %>
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;상품관리</h1>
        <br>
        	상품명 <input type="text"> <button type="button" onclick="">조회</button><br>
        <div id="allcount">
            <div id="countcontent">
                <div style="width:30%;">총 상품 수 :  <input type="text" id="adproductcount"> 개</div>
                <div style="width:70%;"><button>상품등록</button> <button>선택삭제</button></div>
            </div>
        </div>  
        <table class="listProduct">
            <thead>
                <tr>
                    <th><input type="checkbox" checked style="cursor: pointer;" ></th>
                    <th width="50">번호</th>
                    <th width="200">상품코드</th>
                    <th width="250">업체명</th>
                    <th width="300">상품명</th>
                    <th width="100">판매가</th>
                    <th width="150">판매수량</th>
                    <th width="100">상품노출</th>
                    <th width="150">재고수량</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" ></td>
                    <td>1</td>
                    <td>ADFINTLNS</td>
                    <td>KH음식배달</td>
                    <td>관리자테스트용</td>
                    <td>329,000</td>
                    <td>421</td>
                    <td>노출</td>
                    <td>5,230</td>
                </tr>
                
                
            </tbody>

        </table>  
       </div>
    </div>
</body>
</html>