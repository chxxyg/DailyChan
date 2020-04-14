<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
        /* 메뉴 버튼 테스트중 */
        input[id="menuicon"]{display: none;}
        input[id="menuicon"] + label
        {
            display: block;
            width: 40px;
            height: 30px;
            position: fixed;
            right: 0;
            top: calc(30% - 25px);
            transition: all .35s;
            cursor: pointer;
            z-index: 10;
        }
        input[id="menuicon"] + label span
        {
            display : block;
            position: absolute;
            width: 100%;
            height: 5px;
            border-radius: 30px;
            background-color: black;
            transform: all .35s;
        }
        input[id="menuicon"] + label span:nth-child(1){top:0;}
        input[id="menuicon"] + label span:nth-child(2)
        {
            top:50%;
            transform: translateY(-50%);
        }
        input[id="menuicon"] + label span:nth-child(3){bottom:0;}

        input[id="menuicon"]:checked + label
        {
            z-index:2;
            right: 126px;
        }
        input[id="menuicon"]:checked + label span:nth-child(1)
        {
            top:50%;
            transform: translateY(-50%) rotate(45deg);
        }
        input[id="menuicon"]:checked + label span:nth-child(2){opacity: 0;}
        input[id="menuicon"]:checked + label span:nth-child(3)
        {
            bottom: 50%;
            transform: translateY(50%) rotate(-45deg);
        }

        /* 사이드바 숨기기 */
        div[class="sidebar"]
        {
            width: 126px;
            height: 100%;
            background-color: rgba(194, 187, 187, 0.719);
            position: fixed;
            top: 0;
            right: -126px;
            z-index: 1;
            transition: all .35s;
        }
        input[id="menuicon"]:checked + label + div{right: 0;} 


        .sidebar div
        {
            width: 100px;
            height: 100px;
            background-color: white;
            border: 1px solid rgba(194, 187, 187, 0.719);
            text-align: center;
            padding: 12px;
            font-size: 12px;
        }

        #login
        {
        	height: 100px;
        }
		#sideBar_login_btn
		{
		margin-top: 10px;
	    display: inline-block;
	    background-color : white;
	    width: 64px;
	    height: 23px;
	    border: 1px solid #b6d4d0;
	    border-radius: 40px;
	    line-height: 22px;
	    color: #fe7600;
		}
		#btn_top
		{
			margin-top: 200px;
			height : 40px;
			border-radius: 30px;
			background: #fe7600;
		}
		#btn_top_click
		{
			font-weight: bold;
			background: #fe7600;
			color: white;
			border: none;
		}
		#menuicon button
		{
			position: fixed;
			margin-top: 100px;
		}

		#top_btn
		{
		    display: block;
		    width: 52px;
		    height: 52px;
		    background: #fe7600;
		    position:fixed;
		    right : 126px;
		    margin-top: 400px;
		    cursor: pointer;
		    border: 0;
		    color: white;
		    z-index: 10;
    </style>
</head>
<body>
	<!-- 사이드바 아이콘 -->
    <input type="checkbox" id="menuicon">
    <label for="menuicon">
        <span></span>
        <span></span>
        <span></span>
    </label>
    <!-- 사이드바 요소 -->
    <div class="sidebar">
        <div id="login">
        	로그인<br>
        	해 주세요
        	<button id="sideBar_login_btn" type="button" onclick="loginPop();"><strong>로그인</strong></button>
       	</div>
        <div id="cart">
        	장바구니<br>
        	<b>0</b>
       	</div>
        <div id="lately">
            	최근본제품
        </div>
        <div>xxxx</div>
    </div>
            <button id="top_btn" type="button" onClick="javascript:window.scrollTo(0,0)"><b>TOP</b></button>
            
	<script>
    <!-- 로그인 팝업 function -->
		function loginPop()
		{
        	window.open("<%= request.getContextPath()%>/loginPop.me", "로그인팝업창", "width=500, height=700, top = 50, left = 500, location = no");
    	}
	</script>            
</body>
</html>