<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>사이드</title>
<style>
  .nav-side-menu {
  overflow: auto;
  font-family: verdana;
  font-size: 12px;
  font-weight: 200;
  background-color: #2e353d;
  position: fixed;
  top: 0px;
  width: 15%;
  height: 100%;
  color: #e1ffff;
}
.nav-side-menu .brand {
  background-color: #2e353d;
  line-height: 50px;
  display: block;
  text-align: center;
  font-size: 16px;
}
.nav-side-menu .toggle-btn {
  display: none;
}
.nav-side-menu ul,
.nav-side-menu li {
  list-style: none;
  padding: 0px;
  margin: 0px;
  line-height: 35px;
  cursor: pointer;
  /*    
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
}
.nav-side-menu ul :not(collapsed) .arrow:before,
.nav-side-menu li :not(collapsed) .arrow:before {
  font-family: FontAwesome;
  content: "\f078";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
  float: right;
}
.nav-side-menu ul .active,
.nav-side-menu li .active {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
}
.nav-side-menu ul .sub-menu li.active,
.nav-side-menu li .sub-menu li.active {
  color: #d19b3d;
}
.nav-side-menu ul .sub-menu li.active a,
.nav-side-menu li .sub-menu li.active a {
  color: #d19b3d;
}
.nav-side-menu ul .sub-menu li,
.nav-side-menu li .sub-menu li {
  background-color: #181c20;
  border: none;
  line-height: 28px;
  border-bottom: 1px solid #23282e;
  margin-left: 0px;
}
.nav-side-menu ul .sub-menu li:hover,
.nav-side-menu li .sub-menu li:hover {
  background-color: #020203;
}
.nav-side-menu ul .sub-menu li:before,
.nav-side-menu li .sub-menu li:before {
  font-family: FontAwesome;
  content: "\f105";
  display: inline-block;
  padding-left: 10px;
  padding-right: 10px;
  vertical-align: middle;
}
.nav-side-menu li {
  padding-left: 0px;
  border-left: 3px solid #2e353d;
  border-bottom: 1px solid #23282e;
}
.nav-side-menu li a {
  text-decoration: none;
  color: #e1ffff;
}
.nav-side-menu li a i {
  padding-left: 10px;
  width: 20px;
  padding-right: 20px;
}
.nav-side-menu li:hover {
  border-left: 3px solid #d19b3d;
  background-color: #4f5b69;
  -webkit-transition: all 1s ease;
  -moz-transition: all 1s ease;
  -o-transition: all 1s ease;
  -ms-transition: all 1s ease;
  transition: all 1s ease;
}
@media (max-width: 0px) {
  .nav-side-menu {
    position: relative;
    width: 100%;
    margin-bottom: 10px;
	height:inherit;
  }
  .nav-side-menu .toggle-btn {
    display: block;
    cursor: pointer;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 10 ;
    padding: 3px;
    background-color: #ffffff;
    color: #000;
    width: 40px;
    text-align: center;
  }
  .brand {
    text-align: left;
    font-size: 22px;
    padding-left: 20px;
    line-height: 50px ;
  }
}
@media (min-width: 0px) {
  .nav-side-menu .menu-list .menu-content {
    display: block;
  }
}
body {
  margin: 0px;
  padding: 0px;
}
</style>
</head>
<body>

 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">

<div class="nav-side-menu">
    <div class="brand">Daily Chan</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">

                <li  data-toggle="collapse" data-target="#product" class="collapsed">
                  <a href="#"><i class="fa fa-gift fa-lg"></i> 상품관리 <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="product">
                    <li><a href="">상품등록</a></li>
                    <li><a href="">상품관리</a></li>
                    <li><a href="">결제관리</a></li>
                    <li><a href="">XXX</a></li>
                </ul>


                <li  data-toggle="collapse" data-target="#member" class="collapsed">
                  <a href="#"><i class="fa fa-user"></i> 회원관리 <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="member">
                    <li><a href="">회원관리</a></li>
                    <li><a href="">블랙리스트</a></li>
                    <li><a href="">신고내역</a></li>
                    <li><a href="">XXX</a></li>
                </ul>


                <li  data-toggle="collapse" data-target="#answer" class="collapsed">
                  <a href="#"><i class="fa fa-question"></i> 문의관리 <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="answer">
                    <li><a href="">자주하는질문</a></li>
                    <li><a href="">1:1상담</a></li>
                    <li><a href="">공지사항</a></li>
                    <li><a href="">XXX</a></li>
                </ul>


                <li  data-toggle="collapse" data-target="#company" class="collapsed">
                  <a href="#"><i class="fa fa-building-o"></i> 업체관리 <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="company">
                    <li><a href="">택배업체</a></li>
                    <li><a href="">납품업체</a></li>
                </ul>

                <li  data-toggle="collapse" data-target="#insta" class="collapsed">
                  <a href="#"><i class="fa fa-instagram"></i> 인스타그램 <span class=""></span></a>
                </li>
            </ul>
     </div>
</div>
  
</body>
</html>