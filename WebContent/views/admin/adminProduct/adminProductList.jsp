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
    	/*content전체 영역 건들지말것*/
        #adproduct{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        /*div크기*/
          .outer{
         	margin:15px;
         	padding:15px;
         	width:1200px;
         	height:90%;
         	background:white;
         	opacity:0.7;
        }
        
        
        /*count 수량*/
        #adproductcount{
            width:25px;
            border:none;
            color:#181c20;
        }
        
        #allcount{
            margin-top: 10px;
        }
        
        /*테이블 영역*/
        .listProduct{
            margin-top:30px;
            text-align:center;
            width:1100px;
            border: 1px solid #181c20;
            position:relative;
            max-height:600px;
            /*border-collapse:collapse; 테이블 간격 없애는구문*/
            
        }
      	/*상품 등록 삭제 버튼css*/
        #allcount{width:1170px; }
        #allcount>div{float:left;}
        
        /*테이블 헤드*/
        .listProduct>thead>tr>th{
            border:1px solid #181c20;
            
        }
       
        
        .listProduct>tbody>tr>td{
            border: 1px solid #181c20;
            table-layout:fixed;
            
            
        }
        tbody{vertical-align: top;
        }
        table{table-layout:fixed;}
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
	
    <div id="adproduct">
      <div class="outer">
        <h1>&nbsp;&nbsp;&nbsp;상품관리</h1>
        <br>
        	상품명 <input type="text"> <button type="button" onclick="">조회</button><br>
        <div id="allcount">
                <div style="width:30%;">총 상품 수 :  <input type="text" id="adproductcount"> 개</div>
                <div style="width:70%; text-align:right;"><button onclick="location.href='http://localhost:9999/dailyChan/views/admin/adminProduct/adminProductEnrollForm.jsp'">상품등록</button> <button>선택삭제</button></div>
        </div>  
        <table class="listProduct">
            <thead>
                <tr>
                    <th width="30"><input type="checkbox" checked style="cursor: pointer;" ></th>
                    <th width="50">번호</th>
                    <th width="170">상품코드</th>
                    <th width="200">업체명</th>
                    <th width="320">상품명</th>
                    <th width="100">판매가</th>
                    <th width="100">판매수량</th>
                    <th width="80">상품노출</th>
                    <th width="80">재고수량</th>
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