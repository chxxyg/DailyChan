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
            height:280px;
            
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
        
        #dailyList{height:20px;}
        
    </style>
</head>
<body>
		<%@ include file="../adminCommon/adminMainPage.jsp" %>

    <div id="adproductEnroll">
       <div id="outer">
        <h1>&nbsp;&nbsp;&nbsp;상품등록</h1>
        <table id="adcate">
            <tr>
            <form id="PdinsertForm" action="<%= contextPath %>/pdinsert.ad" method="post" enctype="multipart/form-data">
            
                <td width="200" >* 카테고리</td>
                <td>
			        <select id="dailyList"  name="pdcategoryList" style="width:174px" >
			            <option value="KOA100">한식 - 국/탕/찌개</option>
			            <option value="KOB100">한식 - 조림/볶음/구이</option>
			            <option value="KOC100">한식 - 면요리</option>
			            <option value="KOD100">한식 - 분식</option>
			            <option value="ITA200">양식 - 스테이크</option>
			            <option value="ITB200">양식 - 파스타</option>
			            <option value="ITC200">양식 - 사이드</option>		
			            <option value="ITD200">양식 - 샐러드</option>
			            <option value="ASA300">아시안 - 중식</option>
			            <option value="ASB300">아시안 - 일식</option>
			            <option value="ASC300">아시안 - 베트남</option>
			            <option value="ASD300">아시안 - 퓨전</option>
			            <option value="CDA400">찬Day - 메인반찬</option>
			            <option value="CDB400">찬Day - 밑반찬</option>
			            <option value="CDC400">찬Day - 김치</option>
			            <option value="CDD400">찬Day - 나물</option> 
			        </select>
        		</td>
            </tr>
            <tr>
                <td width="200">* 상품명</td>
                <td><input type="text" required name="pdtitle"></td>
            </tr>
            <tr>
                <td width="200">상품코드</td>
                <td><input type="text" placeholder="자동 부여됩니다." name="pdcode"></td>
            </tr>
            <tr>
                <td width="200">납품업체명</td>
                <td><select name="pdenterprise" style="width:174px">
						<option value="1234567890">집반찬연구소</option>
						<option value="1111111111">동원홈푸드</option>                
                	</select>
                </td>
            </tr>
            <tr>
                <td width="200">기본이미지</td>
                <td><input type="file" style="cursor:pointer;" name="pdupfile"></td>
            </tr>
            <tr>
                <td width="200">세부 이미지 01</td>
                <td><input type="file" style="cursor:pointer;" name="pdupfile2"></td>
            </tr>

            <tr>
                <td width="200">* 판매가</td>
                <td><input type="text" required name="pdprice"></td>
            </tr>
            <tr>
                <td width="200">* 수량</td>
                <td><input type="text" required name="pdstock"></td>
            </tr>
            <tr>
                <td width="200">상품 정보 이미지</td>
                <td><input type="file" style="cursor:pointer;" name="pdupfile3"></td>
            </tr>
       		 </table>
       		 <div id="enrollsubmit">
        		<button type="submit">등록하기</button>&nbsp;&nbsp;
        		<button onclick="location.href='http://localhost:9999/dailyChan/views/admin/adminProduct/adminProductList.jsp'">목록으로</button>
        	</div> 
        	</form>       
       </div>
    </div>
</body>
</html>