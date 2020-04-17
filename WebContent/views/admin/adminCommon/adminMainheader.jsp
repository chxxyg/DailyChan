<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String contextPath = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
<style>
	/*header*/
     #header a{
            text-decoration:none;
            color : white;
        }
    div{    
            
           left:0px; top:0px;
           box-sizing:border-box;
           margin:0px;
           padding:0px;
           overflow: auto;
       }
      #header{width:85%;height:5%; background-color: #2e353d; position:fixed; left:15%;}
      #header>div{
            height:100%;
            float:left;
            text-align:center;
        }
      	#header1{width:15%;font-size:25px;}
        #header2{width:55%;}
        #header3{width:10%; font-size:25px; padding-top:6px; color:white;}
        #header4,#header5{width:10%;font-size:25px; padding-top: 6px;}

        #header a:hover{
            color:rgb(161, 152, 113);
        }
</style>
</head>
<body>
    <div id="header">
        <div id="header1"><a href=""></a></div>
        <div id="header2"></div>
        <div id="header3">관리자★</div>
        <div id="header4"><a href="">로그아웃</a></div>
        <div id="header5"><a href="">홈페이지</a></div>           
    </div>
</body>
</html>