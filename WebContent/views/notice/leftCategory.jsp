<%@ page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Member loginUser1 = (Member)session.getAttribute("loginUser");
	
 	String ableAttr = "";
	if(loginUser1 == null){
		ableAttr = "disabled='disabled'";
	}
 
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터 카테고리</title>

<style>
#cst_lnb {
	float: left;
	width: 170px;
	height: 623px;
	font-size: 12px;
	text-decoration: none;
	margin-left: 150px;
	margin-top: 0;
}

#cst_lnb ul {
	width: 169px;
	height: 243px;
	margin-top: 10px;
}

.cst {
	border: 1px solid #ededed;
	width: 170px;
	height: 170px;
	margin-top: 50px;
}

.cst a {
	color: black;
}

li {
	list-style: none;
}

#left-category {
	border: 1px solid #ededed;
	background-color: #f9f9f9;;
	text-decoration: none;
	margin-top: 30px;
}

#left-category a {
	color: black;
	font-weight: 600;
	font-size: 15px;
}

#left-category ul {
	width: 100%;
	position: relative;
	list-style: none;
	margin-top: 30px;
}

#left-category li {
	position: relative;
	height: 65px;
	width: 100px;
	float: left;
	font-size: 15px;
}

.cst dt {
	margin-bottom: 10px;
	font-size: 13px;
}

.cst dd {
	padding-bottom: 12px;
	align: center;
}

#cst_lnb a {
	text-decoration: none;
}

.lnb h2 {
	background: #5f99f0;;
	font-size: 28px;
	width: 172px;
	height: 120px;
	color: #fff;
	margin-bottom: 30px;
	text-align: center;
	line-height: 114px;
	letter-spacing: -1px;
	font-weight: normal;
	margin-top: 0;
}

.cst_num {
	margin-left: 25px;
}

#cst_center {
	margin-left: -55px;
	margin-top: 20px;
	font-weight: 500;
	font-size: 17px;
}

#cst_num1 {
	font-size: 20px;
	margin-left: 23px;
	font-weight: 600;
}

#left-category a:hover {
	color: hsl(28, 100%, 50%);
}
</style>
</head>

<body>

	<div id="cst_lnb" class="lnb">
		<a href="<%= request.getContextPath() %>/noticeMain.no"><h2 align="center">고객센터</h2></a>
		<div id="left-category">
			<ul>
				<li><a id="left_01"
					href="<%= request.getContextPath() %>/Frequestion.fq" onclick="">자주하는
						질문</a></li>
				<li><a id="left_02"
					href="<%= request.getContextPath() %>/detail.bo">1:1 친절상담</a></li>
				<li><a id="left_03"
					href="<%-- <%= request.getContextPath() %>/NoticeInquiryList.no --%>">1:1
						상담내역</a></li>
				<li><a id="left_04"
					href="<%= request.getContextPath() %>/noticeList.no">공지사항</a></li>
			</ul>
		</div>

		<dl class="cst">
			<dt align="center" id="cst_center">
				<a href="<%= request.getContextPath() %>/noticeMain.no">고객센터</a>
			</dt>
			<dd id="cst_num1">
				<b>1644-6844</b>
			</dd>
			<dd class="cst_num">
				<div style="color: #5f99f0;">▲ 단체구매문의</div>
			</dd>
			<dd class="cst_num">
				평일 9:00~18:00<br>점심시간 12:00~13:00<br>(토/일/공휴일은 휴무)
			</dd>
		</dl>
	</div>

	<script>
// a 쿼리스트링으로!!!!!

		$("#left_03").click(function(){
			console.log("test");
			if(<%=loginUser1%> != null )
			{ 
				response.sendRedirect("<%= request.getContextPath()%>/NoticeInquiryList.no"); 
			}
			else
			{ 
				window.open("<%=request.getContextPath()%>/loginPop.me", "로그인팝업창", "width=500, height=700, top = 50, left = 500, location = no");
			
			}		
		});
	
	

</script>

</body>
</html>