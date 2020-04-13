<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
    /*sidebar*/
    #content{height:100%; width:15%; background-color: rgb(64,64,64);color:white;position:fixed; }
    div{    
            
            left:0px; top:0px;
            box-sizing:border-box;
            margin:0px;
            padding:0px;
            overflow: auto;
            
        }
    #content a{
        text-decoration:none;
        color : white;
    }
    #admenubar{
            list-style-type:none;
            padding:0;
            width:100%;
        }
        #admenubar>li{
            text-align:center;
            font-size:20px;
            cursor:pointer;
          
        }
    #admenubar>li>ul{
            list-style-type:none;
            padding:0;
            font-size:16px;
            text-align:center;
            display:none;
        }       
 	#homebtn{font-size:35px; text-align:center; }
</style>   
</head>
<body>
        <div id="content">
            <ul id="admenubar">
            	<div id="homebtn"><a href="">home</a></div>
            	<br><br>
                <li id="adslidedown1">메뉴관리 &nbsp;> 
                    <ul class="adslide" id="adslid1">
                        <li><a href="">상품등록</a></li>
                        <li><a href="">상품관리</a></li>
                        <li><a href="">결제관리</a></li>
                    </ul>
                </li><br><br><br>
                <li id="adslidedown2">회원현황 &nbsp;>  
                    <ul class="adslide" id="adslid2">
                        <li><a href="">회원관리</a></li>
                        <li><a href="">블랙리스트관리</a></li>
                        <li><a href="">신고내역</a></li>
                    </ul>
                </li><br><br><br>
                <li><a href="">이벤트관리</a></li><br><br><br>
                <li id="adslidedown3">문의관리 &nbsp;>  
                    <ul class="adslide" id="adslid3">
                        <li><a href="">FAQ 관리</a></li>
                        <li><a href="">1:1 상담 관리</a></li>
                        <li><a href="">공지사항 관리</a></li>
                    </ul>
                </li><br> <br>  <br>
                <li><a href="">리뷰관리</a></li>  <br> <br> <br>
                <li><a href="">상품할인관리</a></li><br><br><br>
                <li><a href="">인스타그램</a></li>
            </ul>
        </div>
        <script>
         $(function(){
            $("#adslidedown1").click(function(){
                

                var p = $("#adslid1");
 
                if(p.css("display") == "none"){
                    $(this).siblings("p").slideUp();
                    p.slideDown();
                }else{
                    p.slideUp();
                }

            });
            $("#adslidedown2").click(function(){
                

                var p = $("#adslid2");
 
                if(p.css("display") == "none"){
                    $(this).siblings("p").slideUp();
                    p.slideDown();
                }else{
                    p.slideUp();
                }

            });
            $("#adslidedown3").click(function(){
                

                var p = $("#adslid3");
 
                if(p.css("display") == "none"){
                    $(this).siblings("p").slideUp();
                    p.slideDown();
                }else{
                    p.slideUp();
                }

            });
        })

        </script>

</body>
</html>