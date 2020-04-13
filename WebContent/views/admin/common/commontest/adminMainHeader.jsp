<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300);

* {
  padding:0;margin:0;list-style:none;text-decoration:none;
}

body, html {
  width: 100%; height: 100%;
  font-family: 'Roboto', sans-serif;
}

body {
  background: #999;
}

.hp {
  background: #b0a9c1;  width: 100%; height: 100%;
}

nav {
  top:0;left:0;
  width:1298px;height:70px;line-height:70px;
  background: #fff;
  position: relative;
  margin-left: 220px;
}

a {
  opacity: 0.5;
  font-weight:500;
  color: #222230;
  text-transform:uppercase;
  transition:0.2s all ease-in-out;
  -webkit-transition:0.2s all ease-in-out;
}

nav ul {
  text-align:center;
  margin:0 auto;
}

nav ul li {
  display:inline-block;
  margin:0 40px;
}



    </style>
</head>
<body>

    <nav id="main-nav">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a class="active" href="#">Portfolio</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Contact</a></li>
        </ul> 
      </nav>
    
</body>
</html>