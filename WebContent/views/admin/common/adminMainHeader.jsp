<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인헤더</title>
<style>
    .nav-top-menu {
  overflow: auto;
  font-family: verdana;
  font-size: 12px;
  font-weight: 200;
  background-color: #31353D;
  position: fixed;
  top: 0px;
  width: 100%;
  height: 60px;
  margin-left:220px;;
  color: #e1ffff;
}


        #header{
            
            
            margin-left: 1400px;
        }
        #head{
            list-style-type:none;
            padding:0;
            margin:0;
            height:100%;
        }
        #head>li{
            float:left;
            height:100%;
            width:17%;
            text-align:right;
        }
        #head a{
            text-decoration:none;
            font-size:18px;
            color:white;
            font-weight:900;
            padding-top:10px;
            display:block;
            height:100%;
            line-height:30px;
        }
        #head a:hover{
            color:#4f5b69;
        }
        #head>li>ul{
            list-style-type:none;
            padding:0;
            display:none;
            
        }
        #head>li>a:hover+ul{
            display:block;
        }
        #head>li>ul:hover{
            display:block;
        }
        #head>li>ul>li>a{
            font-size:15px;
        }
</style>
</head>
<body>

<div class="nav-top-menu">
  <div id="header">
    <ul id="head">
        <li><a href="">관리자</a></li>
        <li><a href="">로그아웃</a></li>
        <li><a href="">홈페이지</a>
   
</div>
    
</body>
</html>