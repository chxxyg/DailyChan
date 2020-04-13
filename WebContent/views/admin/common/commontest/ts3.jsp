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
        #sibal{
            width:100%;height:100%; background-color: white;
            position: fixed; left: 15%; top:5%;
        }
        #adcate{
            margin-left:80px;
            margin-top:50px;
            line-height: 40px;
            font-weight: bolder;
        }
        
    </style>
</head>
<body>
    <div id="sibal">
       
        <h1>&nbsp;&nbsp;&nbsp;상품등록</h1>
        <table id="adcate">
            <tr>
                <td width="200">* 카테고리</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td width="200">* 상품명</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td width="200">상품코드</td>
                <td><input type="text" placeholder="자동 부여됩니다."></td>
            </tr>
            <tr>
                <td width="200">업체명</td>
                <td><input type="text"></td>
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
                <td width="200">* 판매가</td>
                <td><input type="text" ></td>
            </tr>
            <tr>
                <td width="200">* 수량</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td width="200">상품 상세정보</td>
                <td><input type="file"></td>
            </tr>
                
        </table>
       
    </div>
</body>
</html>