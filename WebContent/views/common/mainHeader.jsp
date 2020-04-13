<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	 /* 전체 윤곽 */
	#hd_wrap, #hd_wrap div{
	    box-sizing:border-box;
	    vertical-align:middle;
	}
	#hd_wrap{width:1004px; margin:auto;}

	#hd_navi{
	    width:1000px;
	    height:240px;
	}
	#header{height:200px;}
	#navigator{width:1000px; height:40px; background:white;}
	
	#header>div{float:left;}
	
	#header_1{width:1000px; height:30px;}
	#header_2{width:300px; height:170px; position:relative;}
	#header_3{width:400px; height:170px; position:relative;}
	#header_4{width:296px; height:170px; position:relative;}
	
	#hd_top>a, #navi a{
	    text-decoration:none;
	    color: black;
	}
	
	/* header : 회원가입 로그인 마이페이지 고객센터 */
	#hd_top{
	    width:314px;
	    height:30px;
	    float:left;
	    margin-left:690px;
	}
	
	#hd_top>a{
	    width:80px;
	    height:30px;
	    display:table-cell;
	    font-size:12px;
	    text-align:center;
	    vertical-align:middle;
	    border:none;
	    background:white;
	    margin-top:7.5px;
	    float:left;
	}
	
	#hd_top>button{
	    width:70px;
	    height:30px;
	    display:table-cell;
	    font-size:12px;
	    text-align:center;
	    border:none;
	    background:white;
	    float:left;
	}
	
	/* header : 검색창 폼 관련 스타일 */
	#search-form{
	    width:240px;
	    height:30px;
	    margin:auto;
	    position:absolute;
	    top:0px;
	    bottom:0px;
	    left:0;
	    right:0;
	}
	
	#search-form>div{
	    height:30px;
	    float:left;
	}
	#search-text-area{
	    width:200px;
	    border-bottom: hsl(28, 100%, 50%) 2px solid;
	}
	#search-btn-area{width:40px;}
	
	#search-input, #search-btn{
	    width:100%;
	    height:100%;
	}
	
	#search-input{
	    border:none;
	    border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
	}
	
	#search-btn{
	    border:none;
	    background:white;
	}
	
	/* header : 브랜드 로고 */
	#home_logo{
	    margin-top:20px;
	}
	
	/* header : 장바구니 찜하기 스타일 */
	#hd_right{
	    width:220px;
	    height:40px;
	    margin-top:60px;
	    margin-left:35px;
	}
	
	#hd_right>a>img, #hd_right>a>p{
	    float:left;
	    margin-right:10px;
	}
	#hd_right>a>p{
	    margin-top:10px;
	    font-size:14px;
	    font-weight:600;
	    margin-right:25px;
	}
	
	/* 네비게이터 */
	/* navigator관련 스타일 */
	#navi{
	    list-style-type:none;
	    padding:0;
	    margin:auto;
	    height:100%;
	    border-bottom: 1px lightgrey solid;
	}
	#navi>li{
	    float: left;
	    height: 40px;
	    width: 124px;
	    text-align: center;
	    margin:auto;
	}
	#navi a{
	    text-decoration: none;
	    font-size: 18px;
	    color: black;
	    font-weight: 900;
	    padding-top: 3px;
	    display: block;
	    height: 100%;
	    line-height: 30px;
	    transform:scale(1.1); /*통합 시 이 작업 필수 요함*/
	
	}
	#navi a:hover{
	    color: hsl(28, 100%, 50%);
	}
	#navi li>ul{
	    list-style-type: none;
	    padding:0px;
	    display: none;
	    background:white;
	}
	#navi>li>a:hover+ul{
	    display: block;
	}
	#navi>li>ul:hover{
	    display: block;
	}
	#navi>li>ul>li>a{
	    font-size: 15px;
	    margin-top: 10px;
	}
	
	.naviFixed {
	    position: fixed;
	    top: 0px;
	    z-index:10000;
	}
</style>
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
    <!-- 전체 윤곽 -->
    <div id="hd_wrap">
        <!-- header + navi  -->
        <div id="hd_navi">
            <!-- header -->
            <div id="header">
                <!-- 헤더_회원가입,로그인,마이페이지,고객센터  -->
                <div id="header_1">
                    <div id="hd_top">
                        <button onclick="loginPop();">로그인</button>
                        <a href="<%=contextPath%>/enrollForm.me">회원가입</a>
                        <a href="">마이페이지</a>
                        <a href="">고객센터</a>
                    </div>
                </div>
                
                <!-- 헤더(좌)_검색창 -->
                <div id="header_2">
                    <form id="search-form">
                        <div id="search-text-area">
                            <input type="search" id="search-input">
                        </div>
                        <div id="search-btn-area">
                            <button type="submit" id="search-btn"><img src="<%=contextPath%>/resources/img/searchlogo.png" width="30px" height="30px"></button>
                        </div>
                    </form>
                </div>

                <!-- 헤더(가운데)_브랜드로고 -->
                <div id="header_3" align="center">
                    <a href="<%= contextPath %>">
                        <img id="home_logo" src="<%=contextPath%>/resources/img/brandlogo.png" height="120px">
                    </a>
                </div>

                <!-- 헤더(우)_장바구니,찜 -->
                <div id="header_4">
                    <div id="hd_right">
                        <!-- 장바구니 -->
                        <a href="" class="a_cart">
                            <img id="cart_img" src="<%=contextPath%>/resources/img/cartlogo.png" width="35px" height="35px">
                            <p>장바구니</p>                
                        </a>
                        <!-- 찜 -->
                        <a href="" class="a_wish">
                            <img id="wish_img" src="<%=contextPath%>/resources/img/likelogo.png" width="30px" height="30px" style="margin-bottom:5px;">
                            <p>찜</p>
                        </a>
                    </div>
                </div>
            </div> <!-- header 영역 닫힘-->

            <!-- navigator -->
            <div id="navigator">
                <ul id="navi">
                    <li><a href="">NEW</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">한식</a></li>
                            <li><a href="">양식</a></li>
                            <li><a href="">아시안</a></li>
                            <li><a href="">기타</a></li>
                        </ul>
                    </li>
                    
                    <li><a href="">BEST</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">한식</a></li>
                            <li><a href="">양식</a></li>
                            <li><a href="">아시안</a></li>
                            <li><a href="">기타</a></li>

                        </ul>
                    </li>

                    <li><a href="">SALE</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">한식</a></li>
                            <li><a href="">양식</a></li>
                            <li><a href="">아시안</a></li>
                            <li><a href="">기타</a></li>

                        </ul>
                    </li>

                    <li><a href="">한식</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">국/탕/찌개</a></li>
                            <li><a href="">조림/볶음/구이</a></li>
                            <li><a href="">면요리</a></li>
                            <li><a href="">기타</a></li>

                        </ul>
                    </li>

                    <li><a href="">양식</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">스테이크</a></li>
                            <li><a href="">파스타</a></li>
                            <li><a href="">버거</a></li>
                            <li><a href="">기타</a></li>
                        </ul>
                    </li>

                    <li><a href="">아시안</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">중식</a></li>
                            <li><a href="">알식</a></li>
                            <li><a href="">베트남/대만</a></li>
                            <li><a href="">기타</a></li>

                        </ul>
                    </li>

                    <li><a href="">찬DAY</a>
                        <ul>
                            <li><a href="">전체보기</a></li>
                            <li><a href="">나물</a></li>
                            <li><a href="">밑반찬</a></li>
                            <li><a href="">김치</a></li>
                            <li><a href="">기타</a></li>

                        </ul>
                    </li>
                    <li><a href="">EVENT</a></li>

                </ul>

            </div> <!-- navigator 영역 닫힘-->
        </div> <!-- header+navi 닫힘-->
    </div>    
        
        <script>

        	<!-- navigator 고정 function  -->
            $( document ).ready( function() {
                var jbOffset = $( '#navigator' ).offset();
                $( window ).scroll( function() {
                if ( $( document ).scrollTop() > jbOffset.top ) {
                    $( '#navigator' ).addClass( 'naviFixed' );
                }
                else {
                    $( '#navigator' ).removeClass( 'naviFixed' );
                }
                });
            });

            <!-- 로그인 팝업 function -->
			function loginPop(){
	            window.open("<%=contextPath%>/loginPop.me", "로그인팝업창", "width=500, height=700, top = 50, left = 500, location = no");
	        }

          </script>
</body>
</html>