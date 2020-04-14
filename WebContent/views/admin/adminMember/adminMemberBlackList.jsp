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
         	width:1400px;
         	height:90%;
         	background:rgb(255,240,240);
         	opacity:0.7;
        }
        
        
        /*count 수량*/
        #adproductcount{
            width:25px;
            border:none;
            color:red;
        }
        
        #allcount{
            margin-top: 10px;
        }
        
        /*테이블 영역*/
        .listMember{
            margin-top:30px;
            text-align:center;
            width:1350px;
            border: 1px solid yellow;
            position:relative;
            max-height:600px;
            /*border-collapse:collapse; 테이블 간격 없애는구문*/
            
        }
      	/*상품 등록 삭제 버튼css*/
        #allcount{width:1350px; }
        #allcount>div{float:left;}
        
        /*테이블 헤드*/
        .listMember>thead>tr>th{
            border:1px solid red;
            
        }
       
        
        .listMember>tbody>tr>td{
            border: 1px solid blue;
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
        <h1>&nbsp;&nbsp;&nbsp;블랙리스트</h1>
        <br>
        	회원 ID <input type="text"> <button type="button" onclick="">조회</button><br>
        <div id="allcount">
                <div style="width:30%;">총 인원 수 :  <input type="text" id="adproductcount"> 명</div>
                <div style="width:70%; text-align:right;"><button onclick="">추가하기</button> <button>회원삭제</button></div>
        </div>  
        <table class="listMember">
            <thead>
                <tr>
                    <th width="30"><input type="checkbox" checked style="cursor: pointer;" ></th>
                    <th width="50">번호</th>
                    <th width="120">아이디</th>
                    <th width="350">제제 사유</th>
                    <th width="50">상태</th>
                    <th width="80">제제 날짜</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" ></td>
                    <td>1</td>
                    <td>ADFINTLNS</td>
                    <td>아무 이유 없이 그냥 내맘대로</td>
                    <td>탈퇴</td>
                    <td>2020-03-20</td>
                   
                </tr>
                 <tr>
                    <td><input type="checkbox" ></td>
                    <td>1</td>
                    <td>ADFINTLNS</td>
                    <td>아무 이유 없이 그냥 내맘대로</td>
                    <td>탈퇴</td>
                    <td>2020-03-20</td>
                   
                </tr>
               
                
                
            </tbody>

        </table>  
       </div>
    </div>
</body>
</html>