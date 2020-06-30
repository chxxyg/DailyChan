<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();
	String msg = (String)session.getAttribute("msg");
	Member loginUser = (Member)session.getAttribute("loginUser");
	
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
	#hd_wrap{width:1104px; margin:auto; background:white;}

	#hd_navi{
	    width:1000px;
	    height:240px;
	    margin:auto;
	}
	#header{width:1000; height:200px; margin:auto;}
	#navigator{
		width:1000px;
		height:50px;
		background:white;
		margin:auto;
		padding-top:8px;
	}
	
	#header>div{float:left;}
	#header_1{width:1000px; height:30px;}
	#header_2{width:300px; height:170px; margin:auto;}
	#header_3{width:400px; height:170px; margin:auto;}
	#header_4{width:300px; height:170px; margin:auto;}
	
	#hd_top a, #navi a{
	    text-decoration:none;
	    color: black;
	}
	
	/* header : 회원가입 로그인 마이페이지 고객센터 */
	#hd_top{
	    width:500px;
	    height:30px;
	    float:left;
	    margin-left:620px;
	}
	#hd_top a, #hd_top b{
	    width:100px;
	    height:30px;
	    display:table-cell;
	    text-align:center;
	    vertical-align:middle;
	    border:none;
	    background:white;
	    margin-top:7.5px;
	    float:left;
	}
	#hd_top a{
		margin-top:9px;
		font-size:12px;
		cursor: pointer;
	}
	#hd_top b{
		font-size:13px;
	}
	
	/* header : 검색창 */
	#search-form{
	    width:240px;
	    height:30px;
	    margin: 65px; auto;
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
	
	/* header : 장바구니 찜하기 */
	#hd_right{
	    width:220px;
	    height:40px;
	    margin-top:60px;
	    margin-left:50px;
	}
	
	#hd_right img, #hd_right p{
	    float:left;
	    margin-right:10px;
	}
	#hd_right p{
	    margin-top:10px;
	    font-size:14px;
	    font-weight:600;
	    margin-right:25px;
	    color: black;
	}
	#hd_right p:hover, #hd_right img:hover{
		color: rgb(250, 142, 0);
		cursor:pointer;
	}
	
	
	/* 네비게이터 */
	#navi{
	    list-style-type:none;
	    padding:0;
	    margin:auto;
	    height:100%;
	    /* border-bottom: 2px lightgrey solid; */
	}
	#navi>li{
	    float: left;
	    height: 70px;
	    width: 142px;
	    text-align: center;
	    margin:auto;
	}
	#navi>li a{
	    text-decoration: none;
	    font-size: 18px;
	    color: black;
	    font-weight: 600;
	    padding-top: 3px;
	    display: block;
	    height: 94%;
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
	    position: relative;
	}
	#navi>li>a:hover+ul{
	    display: block;
	}
	#navi>li>ul:hover{
	    display: block;
	}
	/* #navi>li>ul>li>a{
	    font-size: 15px;
	} */
	
	.naviFixed {
	    position: fixed;
	    top: 0px;
	    z-index:10000;
	    border-bottom: 2px lightgrey solid;
	}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<script>
	$(function(){
		var message = "<%=msg%>";
		// var message = "회원가입 성공!!"; // "null"
		if(message != "null"){
			alert(message);
			<% session.removeAttribute("msg"); %>
		}
	});
</script>
    <!-- 전체 윤곽 -->
    <div id="hd_wrap">
        <!-- header + navi  -->
        <div id="hd_navi">
            <!-- header -->
            <div id="header">
                <!-- 헤더_회원가입,로그인,마이페이지,고객센터  -->
                <div id="header_1">
                    <div id="hd_top">
                    
                    <% if(loginUser != null){ %> 

					<form id="loginForm" action="<%= contextPath %>/login.me" method="post">
						<div id="userInfo">
							<b> welcome <%=loginUser.getMemberName() %></b>
								<div class="btns" align="center">
									<a href="<%= contextPath %>/logout.me">로그아웃</a>
									<a href="<%= contextPath %>/orderList.my">마이페이지</a>	
								</div>
						 </div>
				   </form>
						<% }else{ %>
 					 		<a href="<%=contextPath%>/enrollForm.me">회원가입</a>
							<a onclick="loginPop();">로그인</a>
							<a onclick="loginPop();">마이페이지</a>
						<% } %>  
                    
                    	
                    
						<a href="<%=contextPath%>/noticeMain.no">고객센터</a>
						
						
						<% if(loginUser != null && loginUser.getMemberId().equals("admin")){  %>
							<a href="<%=contextPath%>/mainPage.ad" style="color:red;">관리페이지</a>
						<% } %>
                    
                   	 </div>
                </div>
               		 
                
                <!-- 헤더(좌)_검색창 -->
                <div id="header_2">
                    <form id="search-form" action="<%=contextPath%>/search.pro">
                        <div id="search-text-area">
                            <input type="search" id="search-input" name="keyword" placeholder="찾고 싶은 상품을 검색해보세요">
                        </div>
                        <div id="search-btn-area">
                        	<button type="button" id="search-btn"><img src="<%=contextPath%>/resources/img/searchlogo.png" width="30px" height="30px"></button>
                        </div>
                        <script>
                        	
                        $("#search-btn-area").click(function(){
                        	var searchInput = $("#search-input").val();
                        	console.log(searchInput);
                        	if(searchInput == '')
                       		{
                        		alert("검색어를 입력해주세요.");
                       		}
                        	else
                       		{
                       			$("#search-form").submit();
                       		}
                        });
                        
                        </script>
                    </form>
                </div>

				<br>

                <!-- 헤더(가운데)_브랜드로고 -->
                <div id="header_3" align="center">
                    <a href="<%= contextPath %>">
                        <img id="home_logo" src="<%=contextPath%>/resources/img/brandlogo.png" height="120px">
                    </a>
                </div>

                <!-- 헤더(우)_장바구니,찜 -->
                <div id="header_4">
                    <div id="hd_right">
                    
                    <% if(loginUser != null){ %> 
                        <!-- 장바구니 -->
                        <a href="<%=contextPath%>/cartList.pro" class="a_cart">
                            <img id="cart_img" src="<%=contextPath%>/resources/img/cartlogo.png" width="35px" height="35px">
                            <p>장바구니</p>                
                        </a>
                        <!-- 찜 -->
                        <a href="" class="a_wish">
                            <img id="wish_img" src="<%=contextPath%>/resources/img/likelogo.png" width="30px" height="30px" style="margin-bottom:5px;">
                            <p>찜</p>
                        </a>
                    <% } else { %>
                    	<!-- 장바구니 -->
                            <img class="block" src="<%=contextPath%>/resources/img/cartlogo.png" width="35px" height="35px">
                            <p class="block">장바구니</p>                
                        <!-- 찜 -->
                            <img class="block" src="<%=contextPath%>/resources/img/likelogo.png" width="30px" height="30px" style="margin-bottom:5px;">
                            <p class="block">찜</p>
                    <% } %>
                    </div>
                </div>
            </div> <!-- header 영역 닫힘-->

            <!-- navigator -->
            <div id="navigator">
                <ul id="navi">
                    <li><a href="<%= contextPath %>/pList.pro?category=new&currentPage=1">NEW</a></li>
                    
                    <li><a href="<%= contextPath %>/pList.pro?category=best&currentPage=1">BEST</a></li>

                    <li><a href="<%= contextPath %>/pList.pro?category=sale&currentPage=1">SALE</a></li>

                    <li><a href="<%= contextPath %>/pList.pro?category=KO&currentPage=1">한식</a></li>

                    <li><a href="<%= contextPath %>/pList.pro?category=IT&currentPage=1">양식</a></li>

                    <li><a href="<%= contextPath %>/pList.pro?category=AS&currentPage=1">아시안</a></li>

                    <li><a href="<%= contextPath %>/eMain.pro">EVENT</a></li>

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
			
			<!-- 장바구니, 찜하기 로그인 후 이용 안내-->
			$(function(){
				$(".block").click(function(){
					alert("로그인이 필요한 서비스입니다. 로그인 후 이용해주세요.");
				});
			});

          </script>
          
          
</body>
</html>