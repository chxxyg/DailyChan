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
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <style>
       
body {
    left:0px; top:0px;
            box-sizing:border-box;
            margin:0px;
            padding:0px;
            overflow: auto;
}
.sidebar-toggle {
  margin-left: -240px;
}
.sidebar {
  
  width: 15%;
  height: 100%;
  background: #2e353d;
  position: absolute;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
  z-index: 100;
}
.sidebar #leftside-navigation ul,
.sidebar #leftside-navigation ul ul {
  margin: -2px 0 0;
  padding: 0;
}
.sidebar #leftside-navigation ul li {
  list-style-type: none;
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}
.sidebar #leftside-navigation ul li.active > a {
  color: #d19b3d;
}
.sidebar #leftside-navigation ul li.active ul {
  display: block;
}
.sidebar #leftside-navigation ul li a {
  color: #e1ffff;
  font-weight: 200;
  text-decoration: none;
  display: block;
  padding: 18px 0 18px 25px;
  font-size: 14px;
  outline: 0;
  -webkit-transition: all 200ms ease-in;
  -moz-transition: all 200ms ease-in;
  -o-transition: all 200ms ease-in;
  -ms-transition: all 200ms ease-in;
  transition: all 200ms ease-in;
}
.sidebar #leftside-navigation ul li a:hover {
  color: #d19b3d;
}
.sidebar #leftside-navigation ul li a span {
  display: inline-block;
}
.sidebar #leftside-navigation ul li a i {
  width: 20px;
}
.sidebar #leftside-navigation ul li a i .fa-angle-left,
.sidebar #leftside-navigation ul li a i .fa-angle-right {
  padding-top: 3px;
}
.sidebar #leftside-navigation ul ul {
  display: none;
}
.sidebar #leftside-navigation ul ul li {
  background: #181c20;
  margin-bottom: 0;
  margin-left: 0;
  margin-right: 0;
  border-bottom: none;
  
}
.sidebar #leftside-navigation ul ul li a {
  font-size: 14px;
  padding-top: 13px;
  padding-bottom: 13px;
  color: #aeb2b7;
  color: #e1ffff;
}
    </style>
</head>
<body>

	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
  

    <aside class="sidebar">
        <div id="leftside-navigation" class="nano">
            <ul class="nano-content">
                <li>
                    <a href="" style="font-weight:900; font-size:20px;"><i class="fa fa-home"></i><span>HOME</span></a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:void(0);"><i class="fa fa-shopping-basket"></i><span>상품관리</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                    <ul>
    
                        <li><a href="<%=contextPath%>/pdEnrollForm.ad">상품등록</a></li>
                        <li><a href="<%=contextPath%>/productList.ad?currentPage=1">상품관리</a></li>
                        <li><a href="<%=contextPath%>/paymentList.ad?currentPage=1">결제관리</a></li>
                        <li><a href="">XXX</a>
                        </li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:void(0);"><i class="fa fa-user"></i></i><span>회원현황</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                    <ul>
                        <li><a href="<%=contextPath%>/memberList.ad">회원관리</a></li>
                        <li><a href="<%=contextPath%>/blackList.ad">블랙리스트관리</a></li>
                        <li><a href="<%=contextPath%>/reportList.ad">신고내역</a></li>
                        <li><a href="">XXX</a>
                        </li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:void(0);"><i class="fa fa-question"></i><span>문의관리</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                    <ul>
                        <li><a href="http://localhost:9999/dailyChan/views/admin/adminInquiry/adminFaqControl.jsp">FAQ 관리</a></li>
                        <li><a href="<%=contextPath%>//adOneInquiryList.ad">1:1 상담 관리</a></li>
                        <li><a href="http://localhost:9999/dailyChan/views/admin/adminInquiry/adminNoticeList.jsp">공지사항 관리</a></li>
                        <li><a href="">XXXX</a>
                        </li>
                    </ul>
                </li>

                <li class="sub-menu">
                  <a href="javascript:void(0);"><i class="fa fa-gift"></i><span>이벤트관리</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                  <ul>
                      <li><a href="http://localhost:9999/dailyChan/views/admin/adminProductDiscount/adminProductDiscountList.jsp">할인관리</a>
                      </li>
                      <li><a href="">쿠폰관리</a>
                      </li>
                      <li><a href="http://localhost:9999/dailyChan/views/admin/adminEvent/adminEventList.jsp">이벤트 리스트</a>
                      </li>
                  </ul>
              </li>

                <li class="sub-menu">
                    <a href=""><i class="fa fa-envelope"></i><span>XXX</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                </li>

                <li class="sub-menu">
                    <a href="<%=contextPath%>/reviewList.ad"><i class="fa fa-comment"></i><span>리뷰관리</span><i class="arrow fa fa-angle-right pull-right"></i></a>

                </li>
                <li class="sub-menu">
                    <a href=""><i class="fa fa-instagram"></i><span>인스타그램</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                </li>             
            </ul>
        </div>
    </aside>

    <script>
        $("#leftside-navigation .sub-menu > a").click(function (e) {
    $("#leftside-navigation ul ul").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(),
        e.stopPropagation()
})
    </script>
    
</body>
</html>