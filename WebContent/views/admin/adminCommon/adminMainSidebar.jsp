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
    #content{height:100%; width:15%; background-color: #2e353d;color:white;position:fixed;}
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
            width:95%;
            margin:0;
           
        }
        #admenubar>li{
            text-align:center;
            font-size:20px;
            cursor:pointer;
          
        }
        #admenubar>li:hover{
            color:#ffc477;
        }
         #admenubar>li>ul:hover{
         	color:#ffc477;
         }
    	#admenubar>li>ul{
            list-style-type:none;
            padding:0;
            padding-top:10px;
            font-size:18px;
            text-align:center;
            display:none;
        }       
 	#homebtn{font-size:45px; text-align:center; background:#2e353d; margin-top:7px  }
 	hr{border-top:1px solid pink; opacity:0.3; width:80%;}
</style>   
</head>
<body>
        <div id="content">
            <ul id="admenubar">
            	<div id="homebtn"><a href="">Home</a></div>
            	<br><br>
            	<hr><br>
                <li id="adslidedown1">메뉴관리 &nbsp;> 
                    <ul class="adslide" id="adslid1">
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminProduct/adminProductEnrollForm.jsp">상품등록</a></li>
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminProduct/adminProductList.jsp">상품관리</a></li>
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminProduct/adminProductPayment.jsp">결제관리</a></li>
                    </ul>
                    <br><br>
                    <hr>
                </li><br>
                <li id="adslidedown2">회원현황 &nbsp;>  
                    <ul class="adslide" id="adslid2">
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminMember/adminMemberList.jsp">회원관리</a></li>
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminMember/adminMemberBlackList.jsp">블랙리스트관리</a></li>
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminMember/adminMemberReport.jsp">신고내역</a></li>
                    </ul>
                    <br><br>
                    <hr>
                </li><br>
                <li><a href="http://localhost:9999/DailyChan/views/admin/adminEvent/adminEventList.jsp">이벤트관리</a></li><br>
                <hr><br>
                <li id="adslidedown3">문의관리 &nbsp;>  
                    <ul class="adslide" id="adslid3">
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminInquiry/adminFaqControl.jsp">FAQ 관리</a></li>
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminInquiry/adminOneControlList.jsp">1:1 상담 관리</a></li>
                        <li><a href="http://localhost:9999/DailyChan/views/admin/adminInquiry/adminNoticeList.jsp">공지사항 관리</a></li>
                    </ul>
                    <br><br>
                    <hr>
                </li><br> 
                <li><a href="http://localhost:9999/DailyChan/views/admin/adminReview/adminReviewList.jsp">리뷰관리</a></li>   <br>
                <hr><br>
                <li><a href="http://localhost:9999/DailyChan/views/admin/adminProductDiscount/adminProductDiscountList.jsp">상품할인관리</a></li><br><hr><br><br>
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