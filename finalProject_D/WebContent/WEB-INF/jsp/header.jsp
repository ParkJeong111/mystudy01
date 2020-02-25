<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- Header Start -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>GOGI_JAVA</title>
	
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Squada+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/magnific-popup.css">
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean" rel="stylesheet"> <!-- 로고폰트  Gugi -->
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet"> <!-- 헤더폰트  Jua -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"> <!--  추가 폰트  Noto Sans KR -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet"><!--  추가 폰트  Do Hyeon -->
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"> <!-- 추가 폰트 Poppins -->

    <style>
    .nav-link{font-family: Jua;}
    .form-controla{
    -webkit-box-shadow: none;
    box-shadow: none;
    border: transparent;
    background: #fff;
    color: #4d4d4d;
    border: 1px solid #e6e6e6;
    font-size: 14px;
    width: 300px;
    height: 35px;
    padding: 10px 20px;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0; 
    }
    .d-block{height: 200px}
    
    .submenumore{
     position: absolute;
     top: 100%;
    width: 150px;
    z-index: 2;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.02);
    opacity: 0;
    visibility: hidden;
    text-align: left;
    -webkit-transition: 0.6s;
    -moz-transition: 0.6s;
    -o-transition: 0.6s;
    transition: 0.6s;
    margin: 0px; padding: 0px;
    font-size: 16px; 
    background-color: white;
}
 li:hover .submenumore{
    opacity: 1;
    visibility: visible;
    top: 80%;
}  
    
   .hero-wrap{
   margin-top: -300px;
   } 
   
 .submenumore li{
	margin:5%;
	padding:0px;
   color: black;
   }
    .submenumore hr{
	margin:0px;
	padding:0px;
   color: black;
   }
   
   .submenumore > li > a{
   color: black;
   }
   
   .submenumore > li > a:hover{
   color: #f85959;
   }
 .shadow {
	box-shadow: 2px 2px 5px #999;
}
#autosearchlist {
	cursor: pointer;
	float: left;
	width: 292.67px;
	height: auto;
}
.autosearchlist:hover {
	color: red;
}
.autosearchlist {
	color : black;
	cursor: pointer;
	margin-left: 7px;
	
}
/* 날씨지역검색 */
.very-fast:hover {
	color: red;
}
.very-fast {
	margin-left: 7px;
}
.detail:hover {
	color: red;
}
.detail {
	margin-left: 7px;
}
/* .shadow {
	box-shadow: 2px 2px 5px #999;
} */
#toggle {
	cursor: pointer;
	float: left;
	width: 50px;
	height: 380px;
}
#location2 {
	cursor: pointer;
	float: left;
	width: 230px;
	height: 380px;
}

#serviceloc {
	
	margin-left: -5px;
}
#logo{
-webkit-filter: invert(100%);
filter: invert(100%);
}
.awake #logo{
-webkit-filter: invert(0%);
filter: invert(0%);
}
    </style>
<script
	src="https://ajax.googleapis.com/ajax/libs
	/jquery/3.4.1/jquery.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index" style="font-family: Gugi; font-size: 30px;"><img id="logo" alt="" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MTEuOTk5IDUxMS45OTkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMS45OTkgNTExLjk5OTsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTE2NC4zOTIsMTk3Ljc1NmMtMTEuMzA2LDAtMjAuNTA1LDkuMTk5LTIwLjUwNSwyMC41MDVzOS4xOTksMjAuNTA1LDIwLjUwNSwyMC41MDVzMjAuNTA1LTkuMTk5LDIwLjUwNS0yMC41MDUgICAgUzE3NS42OTgsMTk3Ljc1NiwxNjQuMzkyLDE5Ny43NTZ6IE0xNjQuMzkyLDIyMi45OTNjLTIuNjA5LDAtNC43MzItMi4xMjMtNC43MzItNC43MzJjMC0yLjYwOSwyLjEyMy00LjczMiw0LjczMi00LjczMiAgICBjMi42MDksMCw0LjczMiwyLjEyMyw0LjczMiw0LjczMkMxNjkuMTI0LDIyMC44NywxNjcuMDAxLDIyMi45OTMsMTY0LjM5MiwyMjIuOTkzeiIgZmlsbD0iIzAwMDAwMCIvPgoJPC9nPgo8L2c+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTUwNi45NTcsMC42MDFjLTQuMDYxLTEuNTc0LTguNjMsMC40NDUtMTAuMjAxLDQuNTA4Yy0yLjIzOSw1Ljc4My0xOS44Myw1Mi45MjMtMzguNTExLDEwNS42ODUgICAgYy0zLjg3Ni0wLjg4My03LjkwMi0xLjM2Ni0xMi4wNDItMS4zNjZjLTI5Ljg2LDAtNTQuMTU0LDI0LjI5My01NC4xNTQsNTQuMTU0YzAsMjEuOTM3LDEzLjExOSw0MC44NTYsMzEuOTE3LDQ5LjM1OCAgICBjLTAuNzc1LDIuNTc2LTEuNTA0LDUuMDQzLTIuMTY2LDcuMzQ0Yy0yMC42MzksNzEuNjQ0LTQ0LjYyMiw4MS44OTctNTEuNDgsODMuMzMzYy01LjkxLDEuMjQ1LTExLjE0Mi0wLjgxNy0xNS41MzgtNi4xMDkgICAgYy04LjU5OC0xMC4zNDktMTIuOTY0LTMzLjM1Ny0yLjIzMi01OS40MmMxNy4wODQtNDEuNDkxLDQzLjU3LTExNi4wOTQsMjguOTk5LTE0OS41NTJjLTMuNTIzLTguMDg4LTkuMTQtMTMuNjI4LTE2LjY5OC0xNi40NjIgICAgYy0yMi4yMzctOC4zNC00Ny4yNCw5LjAzNi03NC4zMDgsNTEuNjQzYy0xMy40OTIsMjEuMjM2LTI0LjA0NCw0My4yMzQtMjkuMTQyLDU0LjQ3NWMtMzIuNTc5LTE0LjA5OC03Ny4xNzktMTQuNTY0LTEyMS4zOTYtMC45MjQgICAgYy01Mi4yOTcsMTYuMTI5LTk1LjAxMiw0OS42NjYtMTE3LjE5Myw5Mi4wMTJDLTMuNTMzLDMxOS41NzItNy4yOTMsMzc1LjY0MSwxMi43NTIsNDE5LjI2NCAgICBjMTYuNzk1LDM2LjU1MSw0OS4xMDYsNjIuMDAyLDkwLjk4MSw3MS42NjVjMTAuMzQsMi4zODcsMjAuNzY1LDMuMzY2LDMwLjkyOCwzLjM2NmMzNi4zMzgtMC4wMDIsNjkuMjQxLTEyLjU0MSw4Mi4xOS0xOC4xNzUgICAgYzE4LjY5OCwyMS4yMTEsNDYuNDIsMzMuNDUsODAuNjE0LDM1LjUwMmMzLjYxMywwLjIxNyw3LjEyMywwLjMxMSwxMC41MDQsMC4zMTFjMjIuMDU3LDAsMzguNDEzLTQuMDE2LDM5LjItNC4yMTIgICAgYzYuMDI1LTEuNTA3LDcuOTc5LTkuNDExLDMuMzI2LTEzLjU0NmMtMzIuMTc3LTI4LjYwMi02OS43MTQtNTMuNzk0LTgxLjQ3NS02MS40ODd2LTU0LjU5NmMwLTUuMzc1LTUuNTIxLTkuMjUzLTEwLjU4Mi03LjQxMiAgICBjLTM5LjE4OCwxNC4yNTEtNTAuOTU1LDQ3LjI3NS01NC4zNCw2Mi4yNGwtNTYuNDYtMy4xMzZsOTMuNzQzLTE3OC40MTRjMi4wMjYtMy44NTYsMC41NDMtOC42MjQtMy4zMTMtMTAuNjUgICAgYy0zLjg1Ni0yLjAyNy04LjYyNC0wLjU0My0xMC42NDksMy4zMTNsLTI3LjM4NCw1Mi4xMTZjLTAuMjQ0LDAuMDM5LTAuNDg3LDAuMDg2LTAuNzMxLDAuMTQ5ICAgIGMtNi4xOSwxLjU5NC0xMi42MDUsMi40MDItMTkuMDY0LDIuNDAyYy00Mi4wMzcsMC03Ni4yMzYtMzQuMTk5LTc2LjIzNi03Ni4yMzZjMC0yLjI1OSwwLjA4NS00LjUyNSwwLjI5OC02Ljc3NCAgICBjMC4yMDItMi4xNDUsMC43OC00LjI4NywwLjYxMy02LjQ1NGMxMi4zMTYtNi44NDUsMjUuNjM5LTEyLjU0OSwzOS43MzctMTYuODk3YzM5LjgxNS0xMi4yODIsODEuMDEyLTEyLjEyNCwxMDkuODkxLDAuMDY3ICAgIGwtMTMuOTg3LDI2LjYyMmMtMi4wMjYsMy44NTYtMC41NDMsOC42MjQsMy4zMTMsMTAuNjVjMy44NTUsMi4wMjYsOC42MjIsMC41NDIsMTAuNjQ5LTMuMzEzYzAsMCwzMS4yMjMtNjUuNjgzLDQ5LjMzNi05NC4xOTIgICAgYzIxLjg4LTM0LjQzOCw0MS41NzQtNTAuNTMyLDU1LjQ1Ni00NS4zMzFjMy41MDQsMS4zMTMsNS45NzUsMy44NTMsNy43NzcsNy45OTFjOC44MTUsMjAuMjQzLTIuMDczLDcxLjU1MS0yOS4xMjQsMTM3LjI0OSAgICBjLTExLjUwNSwyNy45NDEtOS42MjEsNTguMjg1LDQuNjg2LDc1LjUwNWM3LjU3Niw5LjExOCwxOS4xMjgsMTMuOTM2LDMwLjkwNCwxMS40NjdjMjQuODQ4LTUuMjAyLDQ3LjM2NS0zOC43MjksNjMuNDA0LTk0LjQwNCAgICBjMC42NjUtMi4zMDgsMS40LTQuNzkyLDIuMTgyLTcuMzkxYzIuMzE0LDAuMzA0LDQuNjY5LDAuNDc2LDcuMDY0LDAuNDc2YzI5Ljg2LDAsNTQuMTU0LTI0LjI5Myw1NC4xNTQtNTQuMTU0ICAgIGMwLTIwLjEzNi0xMS4wNTUtMzcuNzI4LTI3LjQwNy00Ny4wNThjMTguNjg1LTUyLjc5MSwzNi4yODQtOTkuOTU3LDM4LjUxNS0xMDUuNzIyQzUxMy4wMzcsNi43NCw1MTEuMDE5LDIuMTczLDUwNi45NTcsMC42MDF6ICAgICBNMTgwLjIzOSwzMTQuNDc2YzMuNTEyLDAsNy4wMTMtMC4yMDksMTAuNDg1LTAuNjA0bC02Mi43NTYsMTE5LjQzOWMtMS4yNDksMi4zNzUtMS4yMDMsNS4yMjMsMC4xMjEsNy41NTggICAgYzEuMzI0LDIuMzM0LDMuNzQzLDMuODM1LDYuNDIzLDMuOTg0bDc1LjcxLDQuMjA2YzQuMjA0LDAuMjI3LDcuODc3LTIuOTI3LDguMjg5LTcuMTM0YzAuMTUtMS41MzIsMy43MzgtMzQuNDExLDM0LjczNi01MS42MTYgICAgdjQ2LjY3YzAsMi42OTUsMS4zNzgsNS4yMDUsMy42NTIsNi42NTNjMC40MDYsMC4yNTksMzYuNDYxLDIzLjI5NCw3MC4zNzcsNTEuNDExYy0yNS4yMzcsMi44MDUtNzQuMTM1LDIuNzM1LTEwMS45NTMtMzMuNDMgICAgYy0yLjMwMy0yLjk5My02LjQwMy0zLjkzMy05Ljc3OC0yLjI0NWMtMC41NjQsMC4yODItNTYuOTQxLDI4LjA0LTEwOC4yNjQsMTYuMTk0Yy0zNy41NDMtOC42NjQtNjUuMjc1LTMwLjQwOC04MC4xOTctNjIuODgyICAgIGMtMTguMDE5LTM5LjIxNC0xNC4zOTMtOTAuMDg0LDkuNjk5LTEzNi4wNzljMTEuNTY2LTIyLjA4MSwyOS4zNjUtNDEuNTYzLDUxLjUwMi01Ni45OTRjLTAuMDI5LDAuOTU0LTAuMDU0LDEuOTA3LTAuMDU0LDIuODYgICAgQzg4LjIzMSwyNzMuMjAxLDEyOS41MDUsMzE0LjQ3NiwxODAuMjM5LDMxNC40NzZ6IE00NDYuMjAyLDIwMS45NjJjLTE4LjgyOCwwLTM0LjUyMi0xMy42MzItMzcuNzU4LTMxLjU0Mmw1OS4yNDcsMjQuOTQ2ICAgIEM0NjEuNTU1LDE5OS41MjksNDU0LjE1OCwyMDEuOTYyLDQ0Ni4yMDIsMjAxLjk2MnogTTQ4NC4zMDMsMTY4LjEzNGMtMC42NDIsNS40MTUtMi40MTQsMTAuNDg3LTUuMDc4LDE0Ljk3NWwtNzAuMDgtMjkuNTA3ICAgIGMxLjQwNy01LjIxNywzLjg4Ni05Ljk5Niw3LjE4OS0xNC4wODZMNDg0LjMwMywxNjguMTM0eiBNNDgyLjEzNSwxNTAuMTA3bC01MS4zOTgtMjEuNjRjNC43MzUtMi4wOTQsOS45NjQtMy4yNjUsMTUuNDY1LTMuMjY1ICAgIEM0NjIuNjI2LDEyNS4yLDQ3Ni42NjcsMTM1LjU3Miw0ODIuMTM1LDE1MC4xMDd6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNODguMTc2LDMxMy4wNzljLTMuNDYyLTIuNjQxLTguNDEtMS45NzgtMTEuMDUzLDEuNDg1Yy00LjM5Nyw1Ljc2MS0xMi42NjIsNi44Ny0xOC40MjMsMi40NzUgICAgYy01Ljc2MS00LjM5Ny02Ljg3Mi0xMi42NjItMi40NzUtMTguNDI0YzIuNjQyLTMuNDYzLDEuOTc3LTguNDExLTEuNDg2LTExLjA1NGMtMy40NjItMi42NDQtOC40MTEtMS45NzktMTEuMDU0LDEuNDg1ICAgIGMtOS42NzMsMTIuNjc2LTcuMjMsMzAuODU4LDUuNDQ1LDQwLjUzMWM1LjIyOCwzLjk5MSwxMS4zOTEsNS45MTgsMTcuNTA5LDUuOTE4YzguNzE1LDAsMTcuMzM4LTMuOTE2LDIzLjAyMS0xMS4zNjMgICAgQzkyLjMwMywzMjAuNjcxLDkxLjYzOSwzMTUuNzIyLDg4LjE3NiwzMTMuMDc5eiIgZmlsbD0iIzAwMDAwMCIvPgoJPC9nPgo8L2c+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTE0Ny4wNjQsMzUwLjkzMmMtMy40NjItMi42NDMtOC40MTEtMS45NzgtMTEuMDU0LDEuNDg1Yy00LjM5OCw1Ljc2LTEyLjY2MSw2Ljg3LTE4LjQyMywyLjQ3NSAgICBjLTUuNzYxLTQuMzk3LTYuODcyLTEyLjY2Mi0yLjQ3NS0xOC40MjRjMi42NDMtMy40NjMsMS45NzctOC40MTEtMS40ODYtMTEuMDU0Yy0zLjQ2Mi0yLjY0NC04LjQxMS0xLjk3OC0xMS4wNTQsMS40ODUgICAgYy05LjY3MiwxMi42NzYtNy4yMywzMC44NTgsNS40NDYsNDAuNTMyYzUuMjI4LDMuOTg4LDExLjM5MSw1LjkxNywxNy41MDksNS45MTdjOC43MTYsMCwxNy4zMzgtMy45MTUsMjMuMDIxLTExLjM2MyAgICBDMTUxLjE5MSwzNTguNTI0LDE1MC41MjYsMzUzLjU3NSwxNDcuMDY0LDM1MC45MzJ6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNOTYuNjk0LDM3Ni4zMWMtMy40NjItMi42NDMtOC40MTEtMS45NzctMTEuMDU0LDEuNDg2Yy0yLjEyOSwyLjc5MS01LjIxOSw0LjU4NS04LjY5OCw1LjA1NCAgICBjLTMuNDgxLDAuNDYxLTYuOTM0LTAuNDQ5LTkuNzI1LTIuNTc4Yy01Ljc2MS00LjM5Ny02Ljg3Mi0xMi42NjEtMi40NzQtMTguNDI0YzIuNjQyLTMuNDYzLDEuOTc3LTguNDExLTEuNDg2LTExLjA1NCAgICBjLTMuNDYyLTIuNjQ0LTguNDEyLTEuOTc5LTExLjA1NCwxLjQ4NWMtOS42NzMsMTIuNjc2LTcuMjMsMzAuODU3LDUuNDQ1LDQwLjUzYzUuMjI4LDMuOTkxLDExLjM5MSw1LjkxOCwxNy41MSw1LjkxOCAgICBjOC43MTUsMCwxNy4zMzgtMy45MTYsMjMuMDIxLTExLjM2M0MxMDAuODIzLDM4My45MDEsMTAwLjE1NywzNzguOTUyLDk2LjY5NCwzNzYuMzF6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNMjczLjA1OSw1Ljg1OWMtMjEuNjg1LTcuMzc1LTQ1LjMyMyw0LjI3My01Mi42OTMsMjUuOTZjLTYuNDQ1LDE4Ljk2Miw3LjI2OCw2OS4zMzUsMTAuMDgzLDc5LjIzOSAgICBjMC43MDgsMi40OTEsMi41OTUsNC40NzcsNS4wNDgsNS4zMWMyLjQyOSwwLjgyOSw1LjE3OSwwLjM5NCw3LjIzOS0xLjEzNWM4LjI2OC02LjEzOSw0OS44MzctMzcuNzIsNTYuMjgxLTU2LjY4MyAgICBDMzA2LjM4OCwzNi44NjcsMjk0Ljc0NCwxMy4yMjgsMjczLjA1OSw1Ljg1OXogTTI4NC4wODQsNTMuNDc1bC0wLjAwMSwwLjAwMWMtMy4xNjYsOS4zMTgtMjQuMzI4LDI4LjMzNy00MS40NjYsNDEuOTUgICAgYy01LjQ3My0yMi4wMTctMTAuMzQ1LTQ5LjYyNC03LjMxOC01OC41MzFjMy4yNDItOS41MzksMTIuMDM1LTE2LjQ0MiwyMi4wNjMtMTcuMzY2YzMuNTc5LTAuMzMsNy4yMTYsMC4xMDcsMTAuNjE5LDEuMjY0ICAgIEMyODEuNDMyLDI1LjM2NCwyODguNjU1LDQwLjAyNiwyODQuMDg0LDUzLjQ3NXoiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik00MTUuOTY0LDM2My4zNTljLTE5LjA1MS02LjE3NS02OS4yMjQsOC4yNDctNzkuMDg5LDExLjIwMWMtNS4xOTEsMS41NTUtNy4zLDguMDMzLTQuMDAzLDEyLjM0NSAgICBjNi4yNTUsOC4xOCwzOC40Miw0OS4yOTksNTcuNDcxLDU1LjQ3N2MwLDAsMCwwLDAuMDAxLDBjNC4yNDEsMS4zNzUsOC41NDQsMi4wMjgsMTIuNzc5LDIuMDI4ICAgIGMxNy41MiwwLDMzLjg1Mi0xMS4xODYsMzkuNTQyLTI4LjczQzQ0OS43MjgsMzkzLjg5NSw0MzcuNzQ5LDM3MC40MjQsNDE1Ljk2NCwzNjMuMzU5eiBNNDI3LjY2MSw0MTAuODE2ICAgIGMtNC4zODIsMTMuNTE0LTE4LjkzNywyMC45NDItMzIuNDUyLDE2LjU2MmgwLjAwMWMtOS4zNjItMy4wMzYtMjguNjc3LTIzLjkyNi00Mi41MzEtNDAuODcxICAgIGMyMS45MzctNS43ODMsNDkuNDcxLTExLjA0OSw1OC40MjItOC4xNDJDNDI0LjYxMiwzODIuNzQ1LDQzMi4wNDIsMzk3LjMwNCw0MjcuNjYxLDQxMC44MTZ6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNMTEyLjQ3NiwxNDkuNzMyYy0xLjYwOC0xMC4xNzEtMTAuMzI3LTYxLjY0NC0yNC4xNDMtNzYuMTQzQzcyLjUzNSw1Ny4wMDksNDYuMTkxLDU2LjM3NSwyOS42MSw3Mi4xNzEgICAgYy0xNi41ODEsMTUuNzk4LTE3LjIxNyw0Mi4xNDEtMS40MTcsNTguNzIzYzEzLjgxNSwxNC41LDY0LjgwNiwyNS42OTQsNzQuODg3LDI3Ljc5MSAgICBDMTA4LjM5MSwxNTkuNzg3LDExMy4zMjEsMTU1LjA4OSwxMTIuNDc2LDE0OS43MzJ6IE0zOS42MTEsMTIwLjAxM2MtOS43OTktMTAuMjg1LTkuNDA1LTI2LjYyNCwwLjg3OS0zNi40MjMgICAgYzQuOTc5LTQuNzQ1LDExLjM3Ny03LjA5OSwxNy43NjctNy4wOTljNi44MDcsMCwxMy42MDMsMi42NzMsMTguNjU3LDcuOTc4YzYuNzksNy4xMjUsMTMuODM0LDM0LjY5MywxNy45NTQsNTYuMTg5ICAgIEM3My41OTcsMTM1LjUwOCw0Ni40MDEsMTI3LjEzOSwzOS42MTEsMTIwLjAxM3oiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" width="40px;"> 고기자바.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
      <input id="hname" type="text" class="form-controla" placeholder="검색어를 입력해주세요" style="margin-left: 2%; width: 30%" value="" name="hname">
      <input id="mainsearchlist" type="button" class="search-submit btn btn-primary" value="Search">

      
      <ul class="navbar-nav ml-auto" >
          <li class="nav-item"><a href="itemslist?type=1" class="nav-link">바다</a></li>
          <li class="nav-item"><a href="itemslist?type=2" class="nav-link">민물</a></li>
          <li class="nav-item" id = "ModalGameBtn"><a href="javascript:void(0)" class="nav-link" onclick="game()">게임</a></li>
          <li class="nav-item" id = "openModalBtn"><a href="#" class="nav-link">랜덤매칭</a></li>
          <li class="nav-item" id = "serviceBtn"><a href="#" class="nav-link">날씨</a></li>
          <li class="nav-item"><a href="#" class="nav-link"><span class="submenumorem">더보기</span><i class="ti-angle-down"></i></a>
              <ul class="submenumore scrolled awake">
          	  	<li class="nav-link"><a href="notice">공지사항</a></li>
          	  	<hr>
                <li class="nav-link"><a href="event">이벤트</a></li>
                <hr>
                <li class="nav-link"><a href="talklist?check=1">커뮤니티</a></li>
                <hr>
                <li class="nav-link"><a href="cs_faq">고객센터</a></li>
                <hr>
                <li class="nav-link" ><a href="uselow">이용약관</a></li>
              </ul>
           </li>
          <li class="nav-item cta">
         			 <c:choose>
						<c:when test="${sessionScope.mid==null }">
							<a href="login" class="nav-link"><span>로그인</span></a>
						</c:when>
						<c:otherwise>
							<a href="logout" class="nav-link"><span >로그아웃</span></a>
						</c:otherwise>
					</c:choose>
          
             <ul class="submenumore">
                <li class="nav-link" ><a href="my_passwordcheck">나의정보</a></li>
                <hr>
          	  	<li class="nav-link" ><a href="my_reservation">예약내역</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_matching">랜덤매칭내역</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_point">포인트</a></li>
          	  	<hr>
                <li class="nav-link"><a href="my_board" id="my_board">내글쓰기</a></li>
              </ul>
          
          
          </li>
        </ul>
      </div>
      
    </div>


  </nav>
     <div>
       	<div style="background-color: white; border-radius: 4px; display: none; margin-top: 20%; margin-left: 28.9%;" id="autosearchlist" class="divBox shadow">
      		<p class="autosearchlist"><a href="mainsearchlist"></a></p>
      	</div> 
	</div>
	<!-- 모달 기능 UI -->
<style>

input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}

input[type="radio"]:focus + label:before,
input[type="radio"]:hover + label:before {
    border-color: black;
}

input[type="radio"]:active + label:before {
    -webkit-transition-duration: 0;
    transition-duration: 0;
    -webkit-filter: brightness(0.2);
    filter: brightness(0.2);
}

input[type="radio"] + label {
    position: relative;
    padding: 10px;
    padding-left: 2em;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

input[type="radio"] + label:before {
    box-sizing: content-box;
    content: '';
    color: #900;
    position: absolute;
    top: 50%;
    left: 0;
    width: 14px;
    height: 14px;
    margin-top: -9px;
    border: 2px solid grey;
    text-align: center;
}

input[type="radio"] + label:after {
    box-sizing: content-box;
    content: '';
    background-color: #F85959;
    position: absolute;
    top: 50%;
    left: 4px;
    width: 10px;
    height: 10px;
    margin-top: -5px;
    -webkit-transform: scale(0);
    transform: scale(0);
    -webkit-transform-origin: 50%;
    transform-origin: 50%;
    -webkit-transition: -webkit-transform 200ms ease-out;
    transition: -webkit-transform 200ms ease-out;
    transition: transform 200ms ease-out;
    transition: transform 200ms ease-out, -webkit-transform 200ms ease-out;
}


input[type="radio"]:checked + label:before {
    -webkit-animation: borderscale 300ms ease-in;
    animation: borderscale 300ms ease-in;
    background-color: white;
}

input[type="radio"]:checked + label:after {
    -webkit-transform: scale(1);
    transform: scale(1);
}

input[type="radio"] + label:before,
input[type="radio"] + label:after {
    border-radius: 50%;
}

@-webkit-keyframes borderscale {
    50% {
        box-shadow: 0 0 0 2px #900;
    }
}

@keyframes borderscale {
    50% {
        box-shadow: 0 0 0 2px #900;
    }
}

.error-msg {
    display: block;
    color: red;
    max-height: 0;
    overflow: hidden;
    -webkit-transition: max-height 500ms ease-out;
    transition: max-height 500ms ease-out;
    will-change: max-height;
}

:required:not(:focus) ~ .error-msg,
:invalid:required ~ .error-msg {
    max-height: 9em;
}

/* input:focus {
    border: 1px solid black;
}

input:not(:focus):invalid {
    border: 1px solid red;
    outline: none;
}

input:not(:focus):valid {
    border: 1px solid green;
} */


form ul {
    list-style: none;
}

label {
    cursor: pointer;
    display: inline-block;
}
</style>
<div id="modalBox" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style = "font-family: Jua;">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="myModalLabel" style = "margin: auto; font-family: Jua;">랜덤 매칭</h4>
</div>
<form action="randommatching" method="post">
<div class="modal-body">
<p><strong><b>인원수</b></strong></p>
<input type = "radio" id = "radio1" name = "rmcount" value="2" checked="checked">
<label for="radio1">2</label>
<input type = "radio" id = "radio2" name = "rmcount" value="4">
<label for="radio2">4</label>
<input type = "radio" id = "radio3" name = "rmcount" value="6">
<label for="radio3">6</label>
<hr>
<p><strong><b>지역</b></strong></p>
<input type="radio" id = "radio4" name = "rmlocation" value="seoul" checked="checked">
<label for="radio4">서울</label>
<input type="radio" id = "radio5" name = "rmlocation"  value="Gyeonggi">
<label for="radio5">경기</label>
<input type="radio" id = "radio6" name = "rmlocation"  value="Incheon">
<label for="radio6">인천</label>
<input type="radio" id = "radio7" name = "rmlocation"  value="Gangwon">
<label for="radio7">강원</label>
<input type="radio" id = "radio8" name = "rmlocation"  value="Chungbuk">
<label for="radio8">충북</label>
<input type="radio" id = "radio9" name = "rmlocation"  value="Chungnam">
<label for="radio9">충남</label>
<input type="radio" id = "radio10" name = "rmlocation"  value="Gyeongbuk">
<label for="radio10">경북</label>
<input type="radio" id = "radio11" name = "rmlocation"  value="Gyeongnam">
<label for="radio11">경남</label>
<input type="radio" id = "radio12"name = "rmlocation"  value=" Jeolbuk">
<label for="radio12">전북</label>
<input type="radio" id = "radio13" name = "rmlocation"  value="Jeolnam">
<label for="radio13">전남</label>
<input type="radio" id = "radio14"name = "rmlocation"  value="jeju">
<label for="radio14">제주</label>
<hr>
<p><strong><b>유형</b></strong></p>
<input type="radio" id = "radio15" name = "rmtype" value="sea" checked="checked">
<label for="radio15">바다</label>
<input type="radio" id = "radio16" name = "rmtype"  value="freshwater">
<label for="radio16">민물</label>
<input type="radio" id = "radio17" name = "rmtype"  value="fishingcafe">
<label for="radio17">낚시카페</label>
<hr>
<p><strong><b>나이</b></strong></p>
<input type="radio" id = "radio18" name = "rmage" value="20" checked="checked">
<label for="radio18">20</label>
<input type="radio" id = "radio19" name = "rmage"  value="30">
<label for="radio19">30</label>
<input type="radio" id = "radio20" name = "rmage"  value="40">
<label for="radio20">40</label>
<input type="radio" id = "radio21" name = "rmage"  value="50">
<label for="radio21">50</label>
<input type="radio" id = "radio22" name = "rmage"  value="60">
<label for="radio22">60이상</label>
<hr>
<p><strong><b>시간대</b></strong></p>
<input type="radio" id = "radio23" name = "rmtime" value="am" checked="checked">
<label for="radio23">오전</label>
<input type="radio" id = "radio24" name = "rmtime"  value="pm">
<label for="radio24">오후</label>
<input type="radio" id = "radio25" name = "rmtime"  value="night">
<label for="radio25">야간</label>
<hr>
<p><strong><b>성별</b></strong></p>
<input type="radio" id = "radio26" name = "rmsex" value="man" checked="checked">
<label for="radio26">남자</label>
<input type="radio" id = "radio27" name = "rmsex"  value="woman">
<label for="radio27">여자</label>
<hr>
<div style = "margin-left: 282px;">
<button type="submit" class="btn btn-primary" style = "font-family: Jua;" >매칭하기</button>
<button type="button" class="btn btn-default" id="closeModalBtn1" style = "font-family: Jua;">매칭취소</button>
</div>
</div>
</div>
</form>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src='${pageContext.request.contextPath}/resources/js/jquery.keyframes.min_.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/script.js"></script> 
       <script>
       // 랜덤 매칭 모달을 노출시키기 위한 기능
       $('#openModalBtn').on('click', function(){
    	   $('#modalBox').modal('show');
    	   });
    	   // 모달 안의 취소 버튼에 이벤트를 건다.
    	   $('#closeModalBtn').on('click', function(){
    	   $('#modalBox').modal('hide');
    	   });
    	   
       
     //메인검색창에서 검색 후 이동
  	$(function() {
  		var hname = 0;
		$("#mainsearchlist").click(function() {
			hname = $("#hname").val();
			location.href = 'mainsearchlist?hname='+encodeURI($('#hname').val(),"UTF-8");
			
		});
		


		//검색어 자동완성 및 자동완성된 검색어 클릭 시 이동
		$('#hname').on("propertychange change keyup paste input",function(){
			searchhname = $(this).val();
			console.log($(this).val());
			if($(this).val() === ""){
				$('#autosearchlist').hide();
			}else{
				$('#autosearchlist').show();
				$('#autosearchlist').empty();
				$.ajax({
					url:"autosearchlist?hname="+encodeURI($('#hname').val(),"UTF-8"),
					dataType : 'json',
					cache:false,
					success:function(data){
						var auto = "";
						for(var i in data){
							if(i < 5){
							$('#autosearchlist').append('<p class="autosearchlist"><a href="mainsearchlist?hname='+encodeURI(data[i].hname,"UTF-8")+'"'+'>'+data[i].hname+"</a></p>");
						}
					}
				}
			});

			}
		});
		});
     function game() {
    	 var win = window.open("game", "_blank", "toolbar=yes,width=550,height=550");
	}	
  </script>
  
    <!-- 날씨 -->
<div id="servicemodalBox" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style = "font-family: Jua;">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<p><strong><b style="margin-top: 30px;"><img id="serviceloc" style="margin-left:30px;margin-top:20px; width: 40px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iQ2FwYV8xIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCA1MTIgNTEyIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgd2lkdGg9IjUxMnB4Ij48Zz48Zz48cGF0aCBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Im0xMjEuMjM0IDUxMmgyNzAuMTYyYzIuOTc1IDAgNi4yNzEtMi41NyA1LjM5Ni01LjQwMmwtMTkuNDU0LTY0LjA0Yy0uODc1LTIuODMzLTIuNDIxLTUuMzczLTUuMzk2LTUuMzczaC0yMzEuMjU1Yy0yLjk0NiAwLTQuNTIxIDIuNTQxLTUuMzk2IDUuMzczbC0xOS40NTQgNjQuMDRjLS44NzQgMi44MzIgMi40MjIgNS40MDIgNS4zOTcgNS40MDJ6IiBmaWxsPSIjYmNlYTczIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz48L2c+PGc+PHBhdGggY2xpcC1ydWxlPSJldmVub2RkIiBkPSJtMzM3Ljk2NCA0NDIuNTU3IDE5LjQ4MyA2NC4wNGMuODQ2IDIuODMzLTIuMzkyIDUuMzczLTUuMzM3IDUuNDAyaDM5LjI4NmMyLjk3NSAwIDYuMjcxLTIuNTcgNS4zOTYtNS40MDJsLTE5LjQ1NC02NC4wNGMtLjg3NS0yLjgzMy0yLjQyMS01LjM3My01LjM5Ni01LjM3M2gtMzkuMzQ1YzIuOTQ3IDAgNC41MjIgMi41NDEgNS4zNjcgNS4zNzN6IiBmaWxsPSIjOTlkNTNiIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz48L2c+PGc+PHBhdGggY2xpcC1ydWxlPSJldmVub2RkIiBkPSJtMjM1LjM4OSA0NTguMzU2Yy00OC4zNTctNTUuMDc1LTEyMi44NDYtMTI3LjIwNC0xNDcuMDI1LTE5NC40NTctNDguMDk0LTEzMy44MzMgMjMuODU4LTI2My44OTkgMTY3LjY0NS0yNjMuODk5IDE0My43NTggMCAyMTUuNzM5IDEzMC4wNjYgMTY3LjYxNiAyNjMuODk5LTI0LjE0OSA2Ny4yNTItOTguNjM5IDEzOS4zODItMTQ3LjAyNSAxOTQuNDU3LTE4Ljk4NyAyMS42MzktMjIuMTk1IDIxLjYzOS00MS4yMTEgMHoiIGZpbGw9IiNmZDQ3NTUiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvZz48Zz48cGF0aCBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Im0yNTYuMDA5IDMwMy45OTRjNjguNTk4IDAgMTI0LjUzOC01Ni4wMSAxMjQuNTM4LTEyNC42OTMgMC02OC43MTItNTUuOTQtMTI0LjcyMi0xMjQuNTM4LTEyNC43MjJzLTEyNC41NjcgNTYuMDEtMTI0LjU2NyAxMjQuNzIyYzAgNjguNjgzIDU1Ljk2OSAxMjQuNjkzIDEyNC41NjcgMTI0LjY5M3oiIGZpbGw9IiNmOGY2ZjYiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvZz48Zz48cGF0aCBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Im0xOTkuNTE1IDE4Mi4yMjEgMTEuNTIgMTYuODUuODQ2IDIxLjU4LjM3OSAxMy40OTFjLjM3OSA0LjU1NiA0LjA4MyA2LjkyMSA4LjM0MSA2LjA0NWwxMy42NS0zLjM1OCAyMS43NTgtNS4zNDQgMjEuNzU4IDUuMzQ0IDEzLjY1IDMuMzU4YzQuMjU4Ljg3NiA3Ljk2Mi0xLjQ4OSA4LjM0MS02LjA0NWwuMzc5LTEzLjQ5MS44NDYtMjEuNTggMTIuNDI1LTE4LjE2NCA3LjY3MS0xMS4zM2MyLjIxNy0zLjU5MiAxLjA3OS03LjcwOS0zLjMyNS05LjQ5MWwtMTMuMjQxLTQuNjQzLTIxLjA4Ny03LjQxNy0xNC0xNi44Mi04LjgwOC0xMC41NDJjLTEuMjgzLTEuNDMxLTIuOTE3LTIuMjc4LTQuNjA4LTIuNDUzLTEuNjkyLjE3NS0zLjMyNSAxLjAyMi00LjYwOCAyLjQ1M2wtOC44MDggMTAuNTQyLTE0IDE2LjgyLTIxLjExNiA3LjQxNy0xMy4yMTIgNC42NDNjLTQuNDA0IDEuNzgxLTUuNTQyIDUuODk5LTMuMzI1IDkuNDkxeiIgZmlsbD0iI2ZiODYyNyIgZmlsbC1ydWxlPSJldmVub2RkIi8+PC9nPjxnPjxwYXRoIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0ibTI2MS4xNzEgMTIxLjMwNWM1LjI3OSAxNS41NjUgOC4xOTYgMzIuNjE5IDguMTk2IDUwLjUyIDAgMjEuNjM5LTQuMjU4IDQyLjA1MS0xMS44MTIgNjAuMDM5bDIwLjIxMiA0Ljk2NCAxMy42NSAzLjM1OGM0LjI1OC44NzYgNy45NjItMS40ODkgOC4zNDEtNi4wNDVsLjM3OS0xMy40OTEuODQ2LTIxLjU4IDEyLjQyNS0xOC4xNjQgNy42NzEtMTEuMzNjMi4yMTctMy41OTIgMS4wNzktNy43MDktMy4zMjUtOS40OTFsLTEzLjI0MS00LjY0My0yMS4wODctNy40MTctMTQtMTYuODJ6IiBmaWxsPSIjZjI2NzFmIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz48L2c+PGc+PHBhdGggY2xpcC1ydWxlPSJldmVub2RkIiBkPSJtMzEzLjQwNyAxODAuOTA3LTEyLjQyNSAxOC4xNjQtLjg0NiAyMS41OC0uMzc5IDEzLjQ5MWMtLjM3OSA0LjU1Ni00LjA4MyA2LjkyMS04LjM0MSA2LjA0NWwtMTMuNjUtMy4zNTgtMjAuMjEyLTQuOTY0Yy0xMS4zNzUgMjcuMTg3LTMwLjI0NSA0OC44NTUtNTMuMjU3IDYwLjkxNiAxNS43NSA3LjIxMyAzMy4yNzggMTEuMjE0IDUxLjcxMSAxMS4yMTQgNjguNzczIDAgMTI0LjUzOC01NS44MzQgMTI0LjUzOC0xMjQuNjkzIDAtNjguODg4LTU1Ljc2NS0xMjQuNzIyLTEyNC41MzgtMTI0LjcyMi0xMi45MiAwLTI1LjQwMyAxLjk4Ni0zNy4xMjggNS42MzYgMTguNzgzIDE0LjM5NyAzMy42ODYgMzUuNzQzIDQyLjI5IDYxLjA5MWw4LjI1NCA5LjkgMTQgMTYuODIgMjEuMDg3IDcuNDE3IDEzLjI0MSA0LjY0M2M0LjQwNCAxLjc4MSA1LjU0MiA1Ljg5OSAzLjMyNSA5LjQ5MXoiIGZpbGw9IiNlMmUyZTIiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvZz48Zz48cGF0aCBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Im0zMzYuMjE1IDI3NC43MDRjLTIzLjIxNiA1NC45MjktNzcuMzE4IDExMi40NTctMTIxLjM4OCAxNjAuNzU3LjUyNS41ODQgMS4wNSAxLjEzOSAxLjU0NiAxLjcyMyA2LjY1IDcuMzAxIDEzLjAzNyAxNC4zNjcgMTkuMDE2IDIxLjE3MiAxOS4wMTYgMjEuNjM5IDIyLjIyNCAyMS42MzkgNDEuMjExIDAgNi4wMDgtNi44MDQgMTIuMzk1LTEzLjg3MSAxOS4wMTYtMjEuMTcyIDQ3LjA0NC01MS42ODggMTA2LjgzNC0xMTQuMzU1IDEyOC4wMDgtMTczLjI4NSA0OC4wNjUtMTMzLjcxNi0yMy43MTItMjYzLjY5NS0xNjcuMjM2LTI2My44OTloLS4zNzktLjM3OWMtMTYuMTg3LjAyOS0zMS40NDEgMS42OTQtNDUuNzMyIDQuODE4IDQ4LjM1NyA4LjQ5OCA4Ni4yMTQgMzMuMzIgMTExLjA2MyA2OC4wNDEgMzUuNzU3IDIxLjkwMiA1OS41ODYgNjEuMzgzIDU5LjU4NiAxMDYuNDQyLS4wMDEgMzguMjg0LTE3LjIwOCA3Mi41MzgtNDQuMzMyIDk1LjQwM3oiIGZpbGw9IiNmOTJjM2QiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvZz48L2c+PC9zdmc+Cg==" />지역선택</b></strong></p>
<h4 class="modal-title" id="myModalLabel" style = "margin: auto; font-family: Jua; padding-right: 70px;">날씨</h4>
</div>
<br>

<form action="searvice" method="post" style="margin-top: -30px;">

<div class="modal-body" style="padding-left: 70px;">

        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12" style="float: left; width: 50%;">
          <div class="teammembers" style="margin-left: 50px; width: 80px;">
            <div class="he-wrap tpl2 weather-img-first" id="weather-img-first" style="margin-left: 20px;">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <div class="center-bar">
                    <a href="#" class="twitter a0" data-animate="elasticInDown"></a>
                  </div>
                  <!-- center  bar -->
                </div>
              </div>
            </div>
            <div id="loc_first" style="margin-left: 20px;">인천</div>
            <div class="weather-date" style="margin-left: 20px;"></div>
            <div class="weather-state-text-first" style="margin-left: 20px;"></div>
						<div id="locationtoggle" style="margin-left: -100px;">
							<div style="margin-top:-95px;background-color: white; border-radius: 4px; height: 250px; width: 60px;"
								id="toggle" class="divBox" >
								<p class="very-fast">서해중부</p>
								<p class="very-fast">서해남부</p>
								<p class="very-fast">동해중부</p>
								<p class="very-fast">동해남부</p>
								<p class="very-fast">남해서부</p>
								<p class="very-fast">남해동부</p>
							</div>
						</div>
            <div>
           	<ul style="list-style: none; margin-left: -20px; width: 130px;">
           		<li><b>기온&nbsp;</b><a class="temp-first">-</a></li>
            	<li><b>강수 확률&nbsp;</b><a class="ratio-first">-</a></li>
            	<li><b>강수량&nbsp;</b><a class="rainfall-first">-</a></li>
            	<li><b>파고&nbsp;</b><a class="snowfall-first">-</a></li>
            	<li><b>습도&nbsp;</b><a class="humidity-first">-</a></li>
            	<!-- <li><b>풍향&nbsp;</b><a class="wind_direction-first">-</a></li> -->
            	<li><b>풍속&nbsp;</b><a class="wind_speed-first">-</a></li>
            </ul>
            </div>
            </div>
            </div>
            <br>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12" style="float: left; width: 50%; margin-left: 30px; margin-top: -23px;">
            <div class="teammembers" style="margin-left: 50px; width: 80px;">
             <div class="he-wrap tpl2" id="weather-img-second">
              <div class="he-view">
                <div class="bg a0" data-animate="fadeIn">
                  <div class="center-bar">
                    <a href="#" class="twitter a0" data-animate="elasticInDown"></a>
                  </div>
                  <!-- center  bar -->
                </div>
              </div>
            </div>
			<div id="loc_second">보령</div>
            <div class="weather-date"></div>
            <div class="weather-state-text-second"></div>
            <div>
           	<ul style="list-style: none; margin-left: -40px; width: 130px;">
           		<li><b>기온&nbsp;</b><a class="temp-second">-</a></li>
            	<li><b>강수 확률&nbsp;</b><a class="ratio-second">-</a></li>
            	<li><b>강수량&nbsp;</b><a class="rainfall-second">-</a></li>
            	<li><b>파고&nbsp;</b><a class="snowfall-second">-</a></li>
            	<li><b>습도&nbsp;</b><a class="humidity-second">-</a></li>
            	<!-- <li><b>풍향&nbsp;</b><a class="wind_direction-second">-</a></li> -->
            	<li><b>풍속&nbsp;</b><a class="wind_speed-second">-</a></li>
            </ul>
            </div>
          </div>
          <!-- end teammembers -->
        </div>
<!-- <div style = "margin-left: 282px;">
<button type="submit" class="btn btn-primary" style = "font-family: Jua;" >매칭하기</button>
<button type="button" class="btn btn-default" id="closeModalBtn1" style = "font-family: Jua;">매칭취소</button>
</div> -->
</div>
</div>
</form>
</div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script>
/*  $('.divBox').hide();
 $(function() {
		$('#serviceloc')
				.click(
						function(e) {
							$('.divBox').show();
							$('#locationtoggle').mouseleave(function() {
								$('.divBox').hide();
							});
						});
	}); */
 $(function() {
	 
     //날씨 모달을 노출시키기 위한 기능
     $('#serviceBtn').on('click', function(){
  	   $('#servicemodalBox').modal('show');
  	   });
  	   // 모달 안의 취소 버튼에 이벤트를 건다.
  	   $('#closeModalBtn').on('click', function(){
  	   $('#servicemodalBox').modal('hide');
  	   });
  	   

    /* $('#weather').click(function(){ */
    var today = new Date();
    var week = new Array('일','월','화','수','목','금','토');
    var year = today.getFullYear();
    var month = today.getMonth()+1;
    var day = today.getDate();
    var hours = today.getHours();
    var minutes = today.getMinutes();

 		$('.weather-date').html(month +"월 " + day + "일 (" + week[today.getDay()]+")&nbsp;" + hours+"시");
 		 
 	    /*
 	     * 기상청 30분마다 발표
 	     * 30분보다 작으면, 한시간 전 hours 값
 	     */
 	    if(minutes < 30){
 	        hours = hours - 1;
 	        if(hours < 0){
 	            // 자정 이전은 전날로 계산
 	            today.setDate(today.getDate() - 1);
 	            day = today.getDate();
 	            month = today.getMonth()+1;
 	            year = today.getFullYear();
 	            hours = 23;
 	        }
 	    }
 	    
 	    /* example
 	     * 9시 -> 09시 변경 필요
 	     */
 	    
 	    if(hours < 10) {
 	        hours = '0'+hours;
 	    }
 	    if(month < 10) {
 	        month = '0' + month;
 	    }    
 	    if(day < 10) {
 	        day = '0' + day;
 	    } 
 	 
 	    today = year+""+month+""+day;
 	    
 	    $('.very-fast').each(function () {
			$(this).click(function () {
				console.log($(this).text());
				var urlloc_first = null;
				var urlloc_second = null;
	 			if($(this).text() == "서해중부"){
	 				urlloc_first = "weather?x=55&y=124"
	 				urlloc_second = "weather?x=54&y=100"
	 				$('#loc_first').html('<div id="loc_first">인천</div>');
	 				$('#loc_second').html('<div id="loc_second">보령</div>');
	 			}else if($(this).text() == "서해남부"){
	 				urlloc_first = "weather?x=56&y=92"
	 				urlloc_second = "weather?x=56&y=87"
	 				$('#loc_first').html('<div id="loc_first">군산</div>');
	 				$('#loc_second').html('<div id="loc_second">부안</div>');
	 			}else if($(this).text() == "동해중부"){
	 				urlloc_first = "weather?x=92&y=131"
	 				urlloc_second = "weather?x=98&y=125"
	 				$('#loc_first').html('<div id="loc_first">강릉</div>');
	 				$('#loc_second').html('<div id="loc_second">삼척</div>');
	 			}else if($(this).text() == "동해남부"){
	 				urlloc_first = "weather?x=102&y=94"
	 				urlloc_second = "weather?x=127&y=127"	
	 				$('#loc_first').html('<div id="loc_first">포항</div>');
	 				$('#loc_second').html('<div id="loc_second">울릉도</div>');
	 			}else if($(this).text() == "남해서부"){
	 				urlloc_first = "weather?x=73&y=76"
	 				urlloc_second = "weather?x=52&y=38"
	 				$('#loc_first').html('<div id="loc_first">여수</div>');
	 				$('#loc_second').html('<div id="loc_second">제주</div>');
	 			}else if($(this).text() == "남해동부"){
	 				urlloc_first = "weather?x=87&y=68"
	 				urlloc_second = "weather?x=98&y=76"
	 				$('#loc_first').html('<div id="loc_first">통영</div>');
	 				$('#loc_second').html('<div id="loc_second">부산</div>');
	 			}
		 		$.ajax({
	
		 		    url: urlloc_first,
		 		    dataType : 'json',
		 		    success: function(data) {
		 		       
		 		      $.each(data.response.body.items.item, function(key,value){
		 		    	  /* console.log("key : " + key); */
		 		    	  $.each(value,function(key2,value2){
		 		    		  /* console.log("key2: "+key2+", value2 : "+value2); */
		 		    		  if(value2 != null){
		 		    			  if(key2 == "category"){
		 		    				  var category = value["category"];
		 		    				  var val = value["fcstValue"];
		 		    				  console.log("category: "+category+", val : "+val);
		 		    				  if(category == "PTY"){ // 강수형태
		 		    					  switch(val) {
		 		    	                  	case "1":
		 		    	                    	$('.weather-state-text-first').html("비");
		 		    	                    	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik00MjYuMjA4LDE2OC4wMzZjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LDEuMjQtMTMuNjI0LDEuMjU2LTE4LjQwOCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04Mi40MjQtNzAuMDMyLTkxLjZjLTIzLjc1Mi01LjIzMi00Ni40MjQtMi42LTY1LjE4NCw3LjUyOEMyMjYuNzEyLDMxLjQ5MiwxODguNzkyLDcuOSwxNDUuMzI4LDUuMjQ0ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjUyOC0xNy4wNTYtMS41MjhDNTcuNDMyLDMuNzA4LDAsNjIuODIsMCwxMzUuODc2YzAsMzguMDcyLDE1LjY4OCw3Mi4yMzIsNDAuNjQ4LDk2LjM2OCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMjcyLDg5LjAwOCw0Mi45MDRjMCwwLDI5NS40MzIsMS40NDgsMjk2LjU1MiwxLjQ0OGMyOS43MTIsMCw1My43OTItMjIuMjg4LDUzLjc5Mi01NC4yOCAgUzQ1NS45MTIsMTY4LjAzNiw0MjYuMjA4LDE2OC4wMzZ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzkyLjQ4LDI4OC4wMzZjLTAuOTkyLDAtMzcuNjcyLDAtMzcuNjcyLDBjMC42NTYtOCwxLjA5Ni03Ljk3NiwxLjEwNC0xMi4yICBjMC4xMTItMzcuNjk2LTI1LjA0OC03MC43NzYtNjEuODU2LTc4Ljg4OGMtMjAuOTg0LTQuNjI0LTQxLjAwOC0xLjI4LTU3LjU4NCw3LjY2NGMtMjAuMjE2LTMwLjA4OC01My43Mi01MC40MjQtOTIuMTA0LTUyLjc2OCAgYy00Ljk0NC0wLjY4LTkuOTQ0LTEuMDk2LTE1LjA2NC0xLjA5NkM2Ni43MjgsMTUwLjc0LDE2LDIwMy4wODQsMTYsMjY3LjYyYzAsMzMuNjMyLDEzLjg1Niw2My44NjQsMzUuOTA0LDg1LjE4NCAgYzE5LjQ5NiwyMS42MzIsNDYuNTY4LDM1LjYwOCw3OC42MjQsMzcuOTM2YzAsMCwyNjAuOTY4LDEuMjk2LDI2MS45NiwxLjI5NmMyNi4yNCwwLDQ3LjUyLTIzLjczNiw0Ny41Mi01MiAgQzQ0MCwzMTEuNzcyLDQxOC43MjgsMjg4LjAzNiwzOTIuNDgsMjg4LjAzNnoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8wIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTEyOS45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8xIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE3Ny45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8yIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTMzLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjEwNC01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzMiIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNODEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yMjUuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNSIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzMuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNiIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMjEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zNjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfOCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MTcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMi0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMF8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xMjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMV8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xNzcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMl8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMy45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgoJPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8zXzFfIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTgxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzRfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjI1Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzVfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjczLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzZfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzIxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzdfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzY5Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzhfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDE3Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yLTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                    	console.log("비");
		 		    	                       	break;
		 		    	                   	case "2":
		 		    	                       	$('.weather-state-text-first').html("비/눈");
		 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjYuMjA4LDE1OC45NjRjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LjE2LDEuMjQtOS45NjgsMS4yNTYtMTQuNzQ0ICBjMC4xMjgtNDIuNjcyLTI4LjM2LTgwLjU5Mi03MC4wMzItODkuNzc2Yy0yMy43NTItNS4yMzItNDYuNDI0LTEuNjgtNjUuMTg0LDguNDRjLTIyLjg4OC0zNC4wNjQtNjAuODA4LTU3LjItMTA0LjI3Mi01OS44NTYgIGMtNS41OTItMC43NjgtMTEuMjU2LTEuMzA0LTE3LjA1Ni0xLjMwNEM1Ny40MzIsMS43MjQsMCw2MC45NDgsMCwxMzQuMDEyYzAsMzguMDcyLDE1LjY4OCw3Mi4yODgsNDAuNjQ4LDk2LjQyNCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMzA0LDg5LjAwOCw0Mi45MzZjMCwwLDI5NS40MzIsMS40NjQsMjk2LjU1MiwxLjQ2NGMyOS43MTIsMCw1My43OTItMjUuOTM2LDUzLjc5Mi01Ny45MjggIEM0ODAsMTg0LjksNDU1LjkxMiwxNTguOTY0LDQyNi4yMDgsMTU4Ljk2NHoiLz4KPGc+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiNCRURERTU7IiBjeD0iNjMuMDY0IiBjeT0iMzI1LjM0IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSI0MzIuOTYiIGN5PSIzMzUuMjM2IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSIyMDcuMDY0IiBjeT0iNDUzLjM0IiByPSIyNC45MzYiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjcyLDMzNC4yNzZoLTEyLjY4OGw4Ljk3Ni04Ljk3NmMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBMMjQ4LDMyMi45NjR2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsOC45NzYsOC45NzZIMjA4Yy00LjQxNiwwLTgsMy41ODQtOCw4czMuNTg0LDgsOCw4aDEyLjY4OGwtOC45NzYsOC45NzZjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgYzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGw4Ljk3Ni04Ljk3NnYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOGM0LjQxNiwwLDgtMy41ODQsOC04di0xMi42ODggICBsOC45NzYsOC45NzZjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEybC04Ljk3Ni04Ljk3NkgyNzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFMyNzYuNDE2LDMzNC4yNzYsMjcyLDMzNC4yNzZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTQxNiw0MjIuMjc2aC0xMi42ODhsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwICAgTDM5Miw0MTAuOTY0di0xMi42ODhjMC00LjQxNi0zLjU4NC04LTgtOHMtOCwzLjU4NC04LDh2MTIuNjg4bC04Ljk3Ni04Ljk3NmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDguOTc2LDguOTc2SDM1MmMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRsOC45NzYtOC45NzZ2MTIuNjg4YzAsNC40MTYsMy41ODQsOCw4LDhzOC0zLjU4NCw4LTh2LTEyLjY4OCAgIGw4Ljk3Niw4Ljk3NmMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJsLTguOTc2LTguOTc2SDQxNiAgIGM0LjQxNiwwLDgtMy41ODQsOC04UzQyMC40MTYsNDIyLjI3Niw0MTYsNDIyLjI3NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNzIsNDMwLjI3Nkg1OS4zMTJsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQ4LDQxOC45NjQgICB2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMHMtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBsOC45NzYsOC45NzZIOGMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRMMzIsNDU3LjU4OHYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOHM4LTMuNTg0LDgtOHYtMTIuNjg4ICAgbDguOTc2LDguOTc2YzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMmwtOC45NzYtOC45NzZINzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFM3Ni40MTYsNDMwLjI3Niw3Miw0MzAuMjc2eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                       	console.log("비/눈");
		 		    	                       	break;
		 		    	                   	case "3":
		 		    	                       	$('.weather-state-text-first').html("눈");
		 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBvbHlnb24gc3R5bGU9ImZpbGw6I0U5RjRGNjsiIHBvaW50cz0iMjQ3LjA1NiwxMjkgMjY4LjYyNCwxODkuNjY0IDMyNi43NzYsMTYyLjAyNCAyOTkuMTM2LDIyMC4xNzYgMzU5LjgsMjQxLjc1MiAyOTkuMTM2LDI2My4zMiAgIDMyNi43NzYsMzIxLjQ4IDI2OC42MjQsMjkzLjgzMiAyNDcuMDU2LDM1NC40OTYgMjI1LjQ4LDI5My44MzIgMTY3LjMyOCwzMjEuNDggMTk0Ljk2OCwyNjMuMzIgMTM0LjMwNCwyNDEuNzUyIDE5NC45NjgsMjIwLjE3NiAgIDE2Ny4zMjgsMTYyLjAyNCAyMjUuNDgsMTg5LjY2NCAiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI0Ny4wNDgsMzYyLjQ5NmMtMy4zODQsMC02LjQtMi4xMzYtNy41MzYtNS4zMmwtMTguNjA4LTUyLjMxMmwtNTAuMTUyLDIzLjgzMiAgIGMtMy4wNzIsMS40NTYtNi42OTYsMC44MjQtOS4wODgtMS41NjhzLTMuMDI0LTYuMDMyLTEuNTY4LTkuMDk2bDIzLjg0LTUwLjE1MmwtNTIuMzItMTguNmMtMy4xOTItMS4xMzYtNS4zMi00LjE2LTUuMzItNy41MzYgICBzMi4xMjgtNi40MDgsNS4zMi03LjUzNmw1Mi4zMi0xOC42bC0yMy44NC01MC4xNTJjLTEuNDU2LTMuMDY0LTAuODI0LTYuNzA0LDEuNTY4LTkuMDk2YzIuMzkyLTIuMzg0LDYuMDI0LTMuMDMyLDkuMDg4LTEuNTY4ICAgbDUwLjE1MiwyMy44MzJsMTguNjA4LTUyLjMxMmMxLjEzNi0zLjE4NCw0LjE1Mi01LjMyLDcuNTM2LTUuMzJzNi40LDIuMTM2LDcuNTM2LDUuMzJsMTguNjA4LDUyLjMxMmw1MC4xNTItMjMuODMyICAgYzMuMDY0LTEuNDcyLDYuNjk2LTAuODMyLDkuMDg4LDEuNTY4YzIuMzkyLDIuMzkyLDMuMDI0LDYuMDMyLDEuNTY4LDkuMDk2bC0yMy44NCw1MC4xNTJsNTIuMzIsMTguNiAgIGMzLjE5MiwxLjEzNiw1LjMyLDQuMTYsNS4zMiw3LjUzNnMtMi4xMjgsNi40MDgtNS4zMiw3LjUzNmwtNTIuMzIsMTguNkwzMzQsMzE4LjAzMmMxLjQ1NiwzLjA2NCwwLjgyNCw2LjcwNC0xLjU2OCw5LjA5NiAgIGMtMi4zOTIsMi4zODQtNi4wMjQsMy4wMzItOS4wODgsMS41NjhsLTUwLjE1Mi0yMy44MzJsLTE4LjYwOCw1Mi4zMTJDMjUzLjQ1NiwzNjAuMzY4LDI1MC40NCwzNjIuNDk2LDI0Ny4wNDgsMzYyLjQ5NnogICAgTTIyNS40OCwyODUuODMyYzEuMDQsMCwyLjA4LDAuMiwzLjA2NCwwLjYwOGMyLjA4OCwwLjg2NCwzLjcxMiwyLjU3Niw0LjQ4LDQuNzEybDE0LjAzMiwzOS40NzJsMTQuMDMyLTM5LjQ3MiAgIGMwLjc2LTIuMTM2LDIuMzg0LTMuODQsNC40OC00LjcxMmMyLjA4OC0wLjg2NCw0LjQ1Ni0wLjgwOCw2LjQ5NiwwLjE2OGwzNy44MzIsMTcuOTg0bC0xNy45ODQtMzcuODMyICAgYy0wLjk2OC0yLjA0OC0xLjAzMi00LjQwOC0wLjE2OC02LjQ5NnMyLjU3Ni0zLjcyLDQuNzEyLTQuNDhsMzkuNDY0LTE0LjAzMmwtMzkuNDY0LTE0LjAzMmMtMi4xMzYtMC43Ni0zLjg0LTIuMzg0LTQuNzEyLTQuNDggICBzLTAuODA4LTQuNDU2LDAuMTY4LTYuNDk2bDE3Ljk4NC0zNy44MzJsLTM3LjgzMiwxNy45ODRjLTIuMDQ4LDAuOTYtNC40MDgsMS4wMzItNi40OTYsMC4xNjhzLTMuNzEyLTIuNTc2LTQuNDgtNC43MTIgICBsLTE0LjAzMi0zOS40NzJsLTE0LjAzMiwzOS40NzJjLTAuNzYsMi4xMzYtMi4zODQsMy44NC00LjQ4LDQuNzEycy00LjQ1NiwwLjgwOC02LjQ5Ni0wLjE2OGwtMzcuODMyLTE3Ljk4NGwxNy45OTIsMzcuODMyICAgYzAuOTY4LDIuMDQ4LDEuMDMyLDQuNDA4LDAuMTY4LDYuNDk2cy0yLjU3NiwzLjcyLTQuNzEyLDQuNDhsLTM5LjQ3MiwxNC4wMzJsMzkuNDcyLDE0LjAzMmMyLjEzNiwwLjc2LDMuODQsMi4zODQsNC43MTIsNC40OCAgIHMwLjgwOCw0LjQ1Ni0wLjE2OCw2LjQ5NmwtMTcuOTkyLDM3LjgzMmwzNy44MzItMTcuOTg0QzIyMy4xMjgsMjg2LjA5NiwyMjQuMzA0LDI4NS44MzIsMjI1LjQ4LDI4NS44MzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI4MC4xNiw4OS44NzJMMjU2LDExNS43MlY3NS4xNTJMMjkxLjg0LDM2LjhjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgYy0zLjIyNC0zLjAyNC04LjI5Ni0yLjg0OC0xMS4zMDQsMC4zODRMMjU2LDUxLjcyVjhjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDh2NDQuNjg4TDIxMi45OTIsMjUuNjggICBjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMkwyNDAsNzUuMzEydjQxLjM3NkwyMTIuOTkyLDg5LjY4Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsNDAuNjY0LDQwLjY2NGwwLjAwOCwwLjAwOGw1Ljg0OCw1Ljg0OGw0My42NC00Ni43MTJjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgQzI4OC4yMzIsODYuNDcyLDI4My4xNjgsODYuNjQ4LDI4MC4xNiw4OS44NzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI1Niw0MDQuODQ4VjM2NC4yOGwyNC4xNiwyNS44NDhjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2ICAgYzMuMjMyLTMuMDE2LDMuNC04LjA4LDAuMzg0LTExLjMwNEwyNDguMiwzMzIuNDg4bC01Ljg0OCw1Ljg0OGwtMC4wMDgsMC4wMDhsLTQwLjY2NCw0MC42NjRjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgczguMTg0LDMuMTI4LDExLjMxMiwwTDI0MCwzNjMuMzEydjQxLjM3NmwtMzguMzI4LDM4LjMyYy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMnM4LjE4NCwzLjEyOCwxMS4zMTIsMEwyNDAsNDI3LjMxMlY0NzIgICBjMCw0LjQyNCwzLjU4NCw4LDgsOHM4LTMuNTc2LDgtOHYtNDMuNzJsMjQuMTYsMjUuODQ4YzEuNTc2LDEuNjg4LDMuNzA0LDIuNTM2LDUuODQsMi41MzZjMS45NiwwLDMuOTItMC43MTIsNS40NjQtMi4xNiAgIGMzLjIzMi0zLjAxNiwzLjQtOC4wOCwwLjM4NC0xMS4zMDRMMjU2LDQwNC44NDh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQ3MiwyMzJoLTQ0LjY4OGwyNS42NzItMjUuNjhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQwNC42ODgsMjMyICAgaC00MS4zNzZsMjUuNjcyLTI1LjY4YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEycy04LjE4NC0zLjEyOC0xMS4zMTIsMGwtMzkuMzIsMzkuMzJjLTAuMDA4LDAuMDA4LTAuMDE2LDAuMDE2LTAuMDI0LDAuMDI0ICAgbC03LjE3Niw3LjE3Nmw0Ni43MTIsNDMuNjQ4YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNmMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzYgICBjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDM2MS41MTIsMjQ4aDQwLjU2OGwzOS43OTIsMzcuMTc2YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNiAgIGMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzZjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDQyNS41MTIsMjQ4SDQ3MmM0LjQxNiwwLDgtMy41NzYsOC04UzQ3Ni40MTYsMjMyLDQ3MiwyMzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE0My44NCwyMzkuMTkyYy0wLjM5Mi0zLjc0NC0zLjI4OC02LjYzMi03LjAzMi03LjAzMmwtMzcuMTUyLTM3LjE1MiAgIGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDI1LjY4LDI1LjY4SDcyLjY0OGwtMzYuOTkyLTM2Ljk5MmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEyTDUwLjAyNCwyMzJIOGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQzLjgxNmwtMjcuMjgsMjUuNDk2ICAgYy0zLjIzMiwzLjAxNi0zLjQsOC4wOC0wLjM4NCwxMS4zMDRjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2TDc1LjI1NiwyNDhoNDAuNTY4ICAgbC0yNy4yOCwyNS40OTZjLTMuMjMyLDMuMDE2LTMuNCw4LjA4LTAuMzg0LDExLjMwNGMxLjU3NiwxLjY4OCwzLjcwNCwyLjUzNiw1Ljg0LDIuNTM2YzEuOTYsMCwzLjkyLTAuNzEyLDUuNDY0LTIuMTYgICBsNDYuNzEyLTQzLjY0OEwxNDMuODQsMjM5LjE5MnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDIzLjI0LDExMi40MjRsLTM4LjE4NCwxLjg0bDMyLjY0OC0zMi42NDhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTIgICBzLTguMTg0LTMuMTI4LTExLjMxMiwwTDM3NiwxMDAuNjg4VjY0YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djUyLjY4OGwtMzIsMzJWMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4ICAgdjY0LjUyOGw2My44MTYtMS40ODhjNC40MTYtMC4xMDQsNy45MTItMy43NjgsNy44MDgtOC4xODRjLTAuMTA0LTQuNDE2LTMuNzY4LTguMDI0LTguMTg0LTcuODE2bC0zNi4wMTYsMC44NGwyOC43OTItMjguNzkyICAgbDU1Ljc5Mi0yLjY4OGM0LjQwOC0wLjIwOCw3LjgxNi0zLjk2LDcuNjA4LTguMzc2QzQzMS40LDExNS42MTYsNDI3LjU2LDExMi4xNzYsNDIzLjI0LDExMi40MjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE4NCwzMTMuNDg4TDE4Mi41MTIsMzA0SDEyMGMtNC40MTYsMC04LDMuNTc2LTgsOHMzLjU4NCw4LDgsOGgzNi42ODhsLTMyLDMySDcyICAgYy00LjQxNiwwLTgsMy41NzYtOCw4czMuNTg0LDgsOCw4aDM2LjY4OGwtMzAuMzkyLDMwLjM5MmMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTJjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0ICAgczQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDMxLjAwOC0zMS4wMDhsLTEuMTQ0LDM2Ljg3MmMtMC4xMzYsNC40MDgsMy4zMzYsOC40MzIsNy43NTIsOC40MzJjMC4wODgsMCwwLjE2OCwwLDAuMjU2LDAgICBjNC4zMDQsMCw3Ljg1Ni0zLjYwOCw3Ljk5Mi03LjkzNmwxLjY3Mi01My44bDI5LjE4NC0yOS4yMzJsLTAuMjI0LDM0Ljc0NGMtMC4wMzIsNC40MjQsMy41MjgsOC4yMjQsNy45NDQsOC4yMjQgICBjMC4wMTYsMCwwLjAzMiwwLDAuMDQ4LDBjNC4zOTIsMCw4Ljc0NC0zLjczNiw4Ljc3Ni04LjEzNkwxODQsMzEzLjU5MkMxODQsMzEzLjU2LDE4NCwzMTMuNTIsMTg0LDMxMy40ODh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQyNCwzNTJoLTUyLjY4OGwtMzItMzJIMzc2YzQuNDE2LDAsOC0zLjU3Niw4LThzLTMuNTg0LTgtOC04aC02NC41MzZsMS41MDQsNjQgICBjMC4xMDQsNC4zNTIsMy42NjQsOCw3Ljk5Miw4YzAuMDY0LDAsMC4xMjgsMCwwLjE5MiwwYzQuNDE2LDAsNy45MTItMy45Niw3LjgwOC04LjM3NmwtMC44NC0zNi4xMDRsMjguOCwyOC43NTJsMi42OCw1NS45NTIgICBjMC4yLDQuMjcyLDMuNzM2LDcuNzc2LDcuOTc2LDcuNzc2YzAuMTM2LDAsMC4yNjQsMCwwLjM5MiwwYzQuNDE2LDAsNy44MjQtNC4xNTIsNy42MDgtOC41NjhsLTEuODQtMzguMjg4bDMyLjY0OCwzMi42ICAgYzEuNTYsMS41NiwzLjYwOCwyLjMyLDUuNjU2LDIuMzJzNC4wOTYtMC43OTIsNS42NTYtMi4zNTJjMy4xMjgtMy4xMjgsMy4xMjgtOC4xOTIsMC0xMS4zMkwzODcuMzEyLDM2OEg0MjRjNC40MTYsMCw4LTMuNTc2LDgtOCAgIFM0MjguNDE2LDM1Miw0MjQsMzUyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xODQsMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djM2LjY4OGwtMzItMzJWNjRjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDggICB2MzYuNjg4TDg5LjYwOCw3MC4yOTZjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMmwzMS4wMDgsMzEuMDA4bC0zNi42OC0xLjE0NCAgIGMtNC43NzYtMC4wNjQtOC4xMTIsMy4zMzYtOC4yNDgsNy43NTJzMy4zMzYsOC4xMTIsNy43NDQsOC4yNDhsNTMuNzA0LDEuNjY0bDI5LjE4NCwyOS4xODRsLTM0LjU4NC0wLjIyNCAgIGMtNC41MDQtMC4wMDgtOC4wMjQsMy41MjgtOC4wNDgsNy45NDRjLTAuMDI0LDQuNDI0LDMuNTI4LDguOCw3Ljk1Miw4LjgzMkwxNzQuNDI0LDE3NmMwLjAxNiwwLDAuMDI0LDAsMC4wNCwwICAgYzAuMDE2LDAsMC4wMjQsMCwwLjA0LDBsOS40OTYtMS40ODhWMTEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzIsMjMyaC00LjY4OGwyLjM0NC0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDBMMjU2LDIyMC42ODggICBWMjE2YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djQuNjg4bC0yLjM0NC0yLjM0NGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDIuMzQ0LDIuMzQ0ICAgSDIyNGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQuNjg4bC0yLjM0NCwyLjM0NGMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDIuMzQ0LTIuMzQ0VjI2NGMwLDQuNDI0LDMuNTg0LDgsOCw4czgtMy41NzYsOC04di00LjY4OGwyLjM0NCwyLjM0NCAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJMMjY3LjMxMiwyNDhIMjcyICAgYzQuNDE2LDAsOC0zLjU3Niw4LThTMjc2LjQxNiwyMzIsMjcyLDIzMnoiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
		 		    	                       	console.log("눈");
		 		    	                       	break;
		 		    	                   	case "4":
		 		    	                       	$('.weather-state-text-first').html("소나기");
		 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsNDBjLTQuNDE2LDAtOC0zLjU3Ni04LThWOGMwLTQuNDI0LDMuNTg0LTgsOC04YzQuNDE2LDAsOCwzLjU3Niw4LDh2MjQgIEMyNDgsMzYuNDI0LDI0NC40MTYsNDAsMjQwLDQweiIvPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNOCwzMjhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDMTYsMzI0LjQyNCwxMi40MTYsMzI4LDgsMzI4eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik01Niw0MDhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDNjQsNDA0LjQyNCw2MC40MTYsNDA4LDU2LDQwOCAgIHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMTA0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMxMTIsMzA4LjQyNCwxMDguNDE2LDMxMiwxMDQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0xMzYsNDU2Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzE0NCw0NTIuNDI0LDE0MC40MTYsNDU2LDEzNiw0NTZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTE4NCwzNjBjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDMTkyLDM1Ni40MjQsMTg4LjQxNiwzNjAsMTg0LDM2MHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjk2LDQ0MGMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMzMDQsNDM2LjQyNCwzMDAuNDE2LDQ0MCwyOTYsNDQweiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0zNDQsMzYwYy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzM1MiwzNTYuNDI0LDM0OC40MTYsMzYwLDM0NCwzNjB6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTM5Miw0NTZjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDNDAwLDQ1Mi40MjQsMzk2LjQxNiw0NTYsMzkyLDQ1NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDI0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEM0MzIsMzA4LjQyNCw0MjguNDE2LDMxMiw0MjQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik00NzIsNDA4Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzQ4MCw0MDQuNDI0LDQ3Ni40MTYsNDA4LDQ3Miw0MDh6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsMjQwYy00LjQxNiwwLTgsMy41NzYtOCw4djIwMGMwLDguODI0LTcuMTc2LDE2LTE2LDE2cy0xNi03LjE3Ni0xNi0xNnYtMTcuNzA0ICBjOC41ODQtMy40NDgsMTQuNjY0LTExLjgwOCwxNC42NjQtMjEuNjMyYzAtMTIuODg4LTEwLjQ0OC0yMy4zMzYtMjMuMzM2LTIzLjMzNlMxNjgsMzk1Ljc3NiwxNjgsNDA4LjY2NCAgYzAsMTAuMzEyLDYuNzI4LDE4Ljk1MiwxNiwyMi4wNFY0NDhjMCwxNy42NDgsMTQuMzUyLDMyLDMyLDMyczMyLTE0LjM1MiwzMi0zMlYyNDhDMjQ4LDI0My41NzYsMjQ0LjQxNiwyNDAsMjQwLDI0MHoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0yMzkuOTI4LDIyLjU2OEMxODIuNTA0LDIzLjM4NCwxMzYuMTQ0LDEyMi4yNjQsMTM2LjE0NCwyNTZoMjE1LjU2ICBDMzUxLjcwNCwxMjIuMjY0LDMwMS43NzYsMjMuMzg0LDIzOS45MjgsMjIuNTY4eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojNzdCOUM4OyIgZD0iTTIzOS4yLDIyLjI3MmMtMTE4LjQwOCwwLTIxNC40LDk5LjY3Mi0yMTQuNCwyMTguMDhjMCw0LjAxNiwwLjEyOCwxNS42NDgsMC4zNDQsMTUuNjQ4aDExMSAgYzAtMTI4LjgxNiw0Ni4zNi0yMjguMzUyLDEwMy43ODQtMjI5LjE0NGMtMC4yNDgsMC0wLjQ4OC0yLjE4NC0wLjcyOC0yLjE4NGMwLjI0OCwwLDAuNDg4LTEuMDQsMC43MjgtMS4wNCAgYzAuMjI0LDAsMC40NDgtMC41NzYsMC42OC0wLjU3NmMtMC4yMjQsMC0wLjQ0OCw0LjA1Ni0wLjY4LDQuMDY0QzMwMS43NzYsMjcuOTEyLDM1MS43MDQsMTI3LjE4NCwzNTEuNzA0LDI1NmgxMDEuNTUyICBjMC4yMTYsMCwwLjM1Mi0xMS40MjQsMC4zNTItMTUuNDRDNDUzLjYsMTIyLjE0NCwzNTcuNjA4LDIyLjI3MiwyMzkuMiwyMi4yNzJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDM2LjQzMiwxMTIuNzg0YzAsMjkuODI0LTEzLjQsMzUuMjE2LTI5LjkzNiwzNS4yMTZzLTI5LjkzNi01LjM5Mi0yOS45MzYtMzUuMjE2ICBTNDA2LjQ5Niw0MCw0MDYuNDk2LDQwUzQzNi40MzIsODIuOTYsNDM2LjQzMiwxMTIuNzg0eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
		 		    	                       	console.log("소나기");
		 		    	                       	break;
		 		    					  }
		 		    				  }else if(category == "SKY"){ // 하늘상태
		 		    					  switch(val) {
		 		    	                  	case "1":
		 		    	                       	$('.weather-state-text-first').html("맑음");
		 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODMuNTEyIDQ4My41MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4My41MTIgNDgzLjUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGQ0I2NDE7IiBwb2ludHM9IjQ4My41MTIsMjQxLjc1MiA0MjguOTI4LDI5MS42ODggNDUwLjk0NCwzNjIuMzI4IDM3OC42LDM3Ny45NTIgMzYyLjMyOCw0NTAuMTUyICAgMjkxLjgyNCw0MjcuNjY0IDI0MS43NTIsNDgyLjE0NCAxOTEuNjg4LDQyNy42NjQgMTIxLjE4NCw0NTAuMTUyIDEwNC45MTIsMzc3Ljk1MiAzMi41NiwzNjIuMzI4IDU0LjU4NCwyOTEuNjg4IDAsMjQxLjc1MiAgIDU0LjU4NCwxOTEuODI0IDMyLjU2OCwxMjEuMTg0IDEwNC45MTIsMTA1LjU1MiAxMjEuMTg0LDMzLjM2IDE5MS42ODgsNTUuODQ4IDI0MS43NTIsMS4zNjggMjkxLjgyNCw1NS44NDggMzYyLjMyOCwzMy4zNiAgIDM3OC42LDEwNS41NiA0NTAuOTQ0LDEyMS4xODQgNDI4LjkyOCwxOTEuODI0ICIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGREM1Njc7IiBjeD0iMjQxLjc1MiIgY3k9IjI0NC41MDQiIHI9IjEzOC43MzYiLz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />');
		 		    	                       	console.log("맑음");
		 		    	                       	break;
		 		    	                   	case "3":
		 		    	                   		$('.weather-state-text-first').html("구름많음");
		 		    	                   		$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                   		console.log("구름많음");
		 		    	                       	break;
		 		    	                   	case "4":
		 		    	                    	$('.weather-state-text-first').html("흐림"); 
		 		    	                    	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                    	console.log("흐림");
		 		    	                       	break;
		 		    	                   }
		 		    				  }else if(category == "T3H"){ // 3시간 기온 ℃
		 		    					  $('.temp-first').html(val+"℃"); 
		 		    				  
		 		    				  }else if(category == "R06"){ // 6시간 강수량 1 mm
		 		    					  switch(val) {
		 		    					  	case "0":
		 		    	                       	$('.rainfall-first').html("0mm");
		 		    	                       	break;
		 		    	                  	case "1":
		 		    	                       	$('.rainfall-first').html("1mm 미만");
		 		    	                       	break;
		 		    	                   	case "5":
		 		    	                   		$('.rainfall-first').html("1~4mm");
		 		    	                       	break;
		 		    	                   	case "10":
		 		    	                    	$('.rainfall-first').html("5~9mm");
		 		    	                       	break;
		 		    	                   	case "20":
		 		    	                    	$('.rainfall-first').html("10~19mm");
		 		    	                       	break;
		 		    	                   	case "40":
		 		    	                    	$('.rainfall-first').html("20~39mm");
		 		    	                       	break;
		 		    	                   	case "70":
		 		    	                    	$('.rainfall-first').html("40~69mm");
		 		    	                       	break;
		 		    	                   	case "100":
		 		    	                    	$('.rainfall-first').html("70mm 이상");
		 		    	                       	break;
		 		    	                       	
		 		    	                   }
		 		    				  }else if(category == "WAV"){ // 6시간 신적설 1 cm
		 		    					  switch(val) {
		 		    					  	case "0":
		 		    	                       	$('.snowfall-first').html("0m");
		 		    	                       	break;
		 		    	                  	case "1":
		 		    	                       	$('.snowfall-first').html("1m 미만");
		 		    	                       	break;
		 		    	                   	case "5":
		 		    	                   		$('.snowfall-first').html("1~4m");
		 		    	                       	break;
		 		    	                   	case "10":
		 		    	                    	$('.snowfall-first').html("5~9m"); 
		 		    	                       	break;
		 		    	                   	case "20":
		 		    	                    	$('.snowfall-first').html("10~19m"); 
		 		    	                       	break;
		 		    	                   	case "100":
		 		    	                    	$('.snowfall-first').html("20m 이상"); 
		 		    	                       	break;
 
		 		    	                   }
		 		    				  }else if(category == "POP"){ //강수확률 %
		 		    					  $('.ratio-first').html(val+"%"); 
		 		    				  }else if(category == "REH"){ // 습도 %
		 		    					  $('.humidity-first').html(val+"%"); 
		 		    				  }else if(category == "VEC"){ // 풍향 m/s
		 		    					  $('.wind_direction-first').html(val+"m/s"); 
		 		    				  }/* else if(category == "WSD"){ // 풍속 1
		 		    					  $('.wind_speed-first').html(val+"m/s"); 
		 		    				  } */else if(category == "TMN"){ // 아침 최저기온 ℃
		 		    					  $('.lowest_temp-first').html(val+"℃"); 
		 		    				  }else if(category == "TMX"){ // 낮 최고기온 ℃
		 		    					  $('.highest_temp-first').html(val+"℃"); 
		 		    				  }else if(category == "VVV"){ // 남북바람성분(VVV) : 북(+표기), 남(-표기)
		 		    					  if(val < 0){
		 		    						  $('.wind_speed-first').html("남"+val.split('-')[1]+"m/s"); 
		 		    					  }else if(val > 0){
		 		    						  $('.wind_speed-first').html("북"+val+"m/s");
		 		    					  }	 
		 		    				  }else if(category == "UUU"){ // 동서바람성분(UUU) : 동(+표기), 서(-표기)
		 		    					  if(val < 0){
		 		    						  $('.wind_speed-first').append("서"+val.split('-')[1]+"m/s");
		 		    					  }else if(val > 0){
		 		    						  $('.wind_speed-first').append("동"+val+"m/s");
		 		    					  }	    				  
		 		    				  }
		 			    		  }
		 		    		  	}
		 		    	  	});
		 		       	});
		 		    		
		 		        } //success func 종료
		 		    });
		 		//두번째지역 ajax
		 		$.ajax({
		 			
		 		    url: urlloc_second,
		 		    dataType : 'json',
		 		    success: function(data) {
		 		       
		 		      $.each(data.response.body.items.item, function(key,value){
		 		    	  /* console.log("key : " + key); */
		 		    	  $.each(value,function(key2,value2){
		 		    		  /* console.log("key2: "+key2+", value2 : "+value2); */
		 		    		  if(value2 != null){
		 		    			  if(key2 == "category"){
		 		    				  var category = value["category"];
		 		    				  var val = value["fcstValue"];
		 		    				  console.log("category: "+category+", val : "+val);
		 		    				  if(category == "PTY"){ // 강수형태
		 		    					  switch(val) {
		 		    	                  	case "1":
		 		    	                    	$('.weather-state-text-second').html("비");
		 		    	                    	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik00MjYuMjA4LDE2OC4wMzZjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LDEuMjQtMTMuNjI0LDEuMjU2LTE4LjQwOCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04Mi40MjQtNzAuMDMyLTkxLjZjLTIzLjc1Mi01LjIzMi00Ni40MjQtMi42LTY1LjE4NCw3LjUyOEMyMjYuNzEyLDMxLjQ5MiwxODguNzkyLDcuOSwxNDUuMzI4LDUuMjQ0ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjUyOC0xNy4wNTYtMS41MjhDNTcuNDMyLDMuNzA4LDAsNjIuODIsMCwxMzUuODc2YzAsMzguMDcyLDE1LjY4OCw3Mi4yMzIsNDAuNjQ4LDk2LjM2OCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMjcyLDg5LjAwOCw0Mi45MDRjMCwwLDI5NS40MzIsMS40NDgsMjk2LjU1MiwxLjQ0OGMyOS43MTIsMCw1My43OTItMjIuMjg4LDUzLjc5Mi01NC4yOCAgUzQ1NS45MTIsMTY4LjAzNiw0MjYuMjA4LDE2OC4wMzZ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzkyLjQ4LDI4OC4wMzZjLTAuOTkyLDAtMzcuNjcyLDAtMzcuNjcyLDBjMC42NTYtOCwxLjA5Ni03Ljk3NiwxLjEwNC0xMi4yICBjMC4xMTItMzcuNjk2LTI1LjA0OC03MC43NzYtNjEuODU2LTc4Ljg4OGMtMjAuOTg0LTQuNjI0LTQxLjAwOC0xLjI4LTU3LjU4NCw3LjY2NGMtMjAuMjE2LTMwLjA4OC01My43Mi01MC40MjQtOTIuMTA0LTUyLjc2OCAgYy00Ljk0NC0wLjY4LTkuOTQ0LTEuMDk2LTE1LjA2NC0xLjA5NkM2Ni43MjgsMTUwLjc0LDE2LDIwMy4wODQsMTYsMjY3LjYyYzAsMzMuNjMyLDEzLjg1Niw2My44NjQsMzUuOTA0LDg1LjE4NCAgYzE5LjQ5NiwyMS42MzIsNDYuNTY4LDM1LjYwOCw3OC42MjQsMzcuOTM2YzAsMCwyNjAuOTY4LDEuMjk2LDI2MS45NiwxLjI5NmMyNi4yNCwwLDQ3LjUyLTIzLjczNiw0Ny41Mi01MiAgQzQ0MCwzMTEuNzcyLDQxOC43MjgsMjg4LjAzNiwzOTIuNDgsMjg4LjAzNnoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8wIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTEyOS45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8xIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE3Ny45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8yIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTMzLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjEwNC01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzMiIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNODEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yMjUuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNSIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzMuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNiIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMjEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zNjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfOCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MTcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMi0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMF8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xMjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMV8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xNzcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMl8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMy45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgoJPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8zXzFfIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTgxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzRfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjI1Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzVfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjczLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzZfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzIxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzdfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzY5Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzhfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDE3Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yLTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                    	console.log("비");
		 		    	                       	break;
		 		    	                   	case "2":
		 		    	                       	$('.weather-state-text-second').html("비/눈");
		 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjYuMjA4LDE1OC45NjRjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LjE2LDEuMjQtOS45NjgsMS4yNTYtMTQuNzQ0ICBjMC4xMjgtNDIuNjcyLTI4LjM2LTgwLjU5Mi03MC4wMzItODkuNzc2Yy0yMy43NTItNS4yMzItNDYuNDI0LTEuNjgtNjUuMTg0LDguNDRjLTIyLjg4OC0zNC4wNjQtNjAuODA4LTU3LjItMTA0LjI3Mi01OS44NTYgIGMtNS41OTItMC43NjgtMTEuMjU2LTEuMzA0LTE3LjA1Ni0xLjMwNEM1Ny40MzIsMS43MjQsMCw2MC45NDgsMCwxMzQuMDEyYzAsMzguMDcyLDE1LjY4OCw3Mi4yODgsNDAuNjQ4LDk2LjQyNCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMzA0LDg5LjAwOCw0Mi45MzZjMCwwLDI5NS40MzIsMS40NjQsMjk2LjU1MiwxLjQ2NGMyOS43MTIsMCw1My43OTItMjUuOTM2LDUzLjc5Mi01Ny45MjggIEM0ODAsMTg0LjksNDU1LjkxMiwxNTguOTY0LDQyNi4yMDgsMTU4Ljk2NHoiLz4KPGc+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiNCRURERTU7IiBjeD0iNjMuMDY0IiBjeT0iMzI1LjM0IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSI0MzIuOTYiIGN5PSIzMzUuMjM2IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSIyMDcuMDY0IiBjeT0iNDUzLjM0IiByPSIyNC45MzYiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjcyLDMzNC4yNzZoLTEyLjY4OGw4Ljk3Ni04Ljk3NmMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBMMjQ4LDMyMi45NjR2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsOC45NzYsOC45NzZIMjA4Yy00LjQxNiwwLTgsMy41ODQtOCw4czMuNTg0LDgsOCw4aDEyLjY4OGwtOC45NzYsOC45NzZjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgYzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGw4Ljk3Ni04Ljk3NnYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOGM0LjQxNiwwLDgtMy41ODQsOC04di0xMi42ODggICBsOC45NzYsOC45NzZjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEybC04Ljk3Ni04Ljk3NkgyNzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFMyNzYuNDE2LDMzNC4yNzYsMjcyLDMzNC4yNzZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTQxNiw0MjIuMjc2aC0xMi42ODhsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwICAgTDM5Miw0MTAuOTY0di0xMi42ODhjMC00LjQxNi0zLjU4NC04LTgtOHMtOCwzLjU4NC04LDh2MTIuNjg4bC04Ljk3Ni04Ljk3NmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDguOTc2LDguOTc2SDM1MmMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRsOC45NzYtOC45NzZ2MTIuNjg4YzAsNC40MTYsMy41ODQsOCw4LDhzOC0zLjU4NCw4LTh2LTEyLjY4OCAgIGw4Ljk3Niw4Ljk3NmMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJsLTguOTc2LTguOTc2SDQxNiAgIGM0LjQxNiwwLDgtMy41ODQsOC04UzQyMC40MTYsNDIyLjI3Niw0MTYsNDIyLjI3NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNzIsNDMwLjI3Nkg1OS4zMTJsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQ4LDQxOC45NjQgICB2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMHMtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBsOC45NzYsOC45NzZIOGMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRMMzIsNDU3LjU4OHYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOHM4LTMuNTg0LDgtOHYtMTIuNjg4ICAgbDguOTc2LDguOTc2YzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMmwtOC45NzYtOC45NzZINzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFM3Ni40MTYsNDMwLjI3Niw3Miw0MzAuMjc2eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                       	console.log("비/눈");
		 		    	                       	break;
		 		    	                   	case "3":
		 		    	                       	$('.weather-state-text-second').html("눈");
		 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBvbHlnb24gc3R5bGU9ImZpbGw6I0U5RjRGNjsiIHBvaW50cz0iMjQ3LjA1NiwxMjkgMjY4LjYyNCwxODkuNjY0IDMyNi43NzYsMTYyLjAyNCAyOTkuMTM2LDIyMC4xNzYgMzU5LjgsMjQxLjc1MiAyOTkuMTM2LDI2My4zMiAgIDMyNi43NzYsMzIxLjQ4IDI2OC42MjQsMjkzLjgzMiAyNDcuMDU2LDM1NC40OTYgMjI1LjQ4LDI5My44MzIgMTY3LjMyOCwzMjEuNDggMTk0Ljk2OCwyNjMuMzIgMTM0LjMwNCwyNDEuNzUyIDE5NC45NjgsMjIwLjE3NiAgIDE2Ny4zMjgsMTYyLjAyNCAyMjUuNDgsMTg5LjY2NCAiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI0Ny4wNDgsMzYyLjQ5NmMtMy4zODQsMC02LjQtMi4xMzYtNy41MzYtNS4zMmwtMTguNjA4LTUyLjMxMmwtNTAuMTUyLDIzLjgzMiAgIGMtMy4wNzIsMS40NTYtNi42OTYsMC44MjQtOS4wODgtMS41NjhzLTMuMDI0LTYuMDMyLTEuNTY4LTkuMDk2bDIzLjg0LTUwLjE1MmwtNTIuMzItMTguNmMtMy4xOTItMS4xMzYtNS4zMi00LjE2LTUuMzItNy41MzYgICBzMi4xMjgtNi40MDgsNS4zMi03LjUzNmw1Mi4zMi0xOC42bC0yMy44NC01MC4xNTJjLTEuNDU2LTMuMDY0LTAuODI0LTYuNzA0LDEuNTY4LTkuMDk2YzIuMzkyLTIuMzg0LDYuMDI0LTMuMDMyLDkuMDg4LTEuNTY4ICAgbDUwLjE1MiwyMy44MzJsMTguNjA4LTUyLjMxMmMxLjEzNi0zLjE4NCw0LjE1Mi01LjMyLDcuNTM2LTUuMzJzNi40LDIuMTM2LDcuNTM2LDUuMzJsMTguNjA4LDUyLjMxMmw1MC4xNTItMjMuODMyICAgYzMuMDY0LTEuNDcyLDYuNjk2LTAuODMyLDkuMDg4LDEuNTY4YzIuMzkyLDIuMzkyLDMuMDI0LDYuMDMyLDEuNTY4LDkuMDk2bC0yMy44NCw1MC4xNTJsNTIuMzIsMTguNiAgIGMzLjE5MiwxLjEzNiw1LjMyLDQuMTYsNS4zMiw3LjUzNnMtMi4xMjgsNi40MDgtNS4zMiw3LjUzNmwtNTIuMzIsMTguNkwzMzQsMzE4LjAzMmMxLjQ1NiwzLjA2NCwwLjgyNCw2LjcwNC0xLjU2OCw5LjA5NiAgIGMtMi4zOTIsMi4zODQtNi4wMjQsMy4wMzItOS4wODgsMS41NjhsLTUwLjE1Mi0yMy44MzJsLTE4LjYwOCw1Mi4zMTJDMjUzLjQ1NiwzNjAuMzY4LDI1MC40NCwzNjIuNDk2LDI0Ny4wNDgsMzYyLjQ5NnogICAgTTIyNS40OCwyODUuODMyYzEuMDQsMCwyLjA4LDAuMiwzLjA2NCwwLjYwOGMyLjA4OCwwLjg2NCwzLjcxMiwyLjU3Niw0LjQ4LDQuNzEybDE0LjAzMiwzOS40NzJsMTQuMDMyLTM5LjQ3MiAgIGMwLjc2LTIuMTM2LDIuMzg0LTMuODQsNC40OC00LjcxMmMyLjA4OC0wLjg2NCw0LjQ1Ni0wLjgwOCw2LjQ5NiwwLjE2OGwzNy44MzIsMTcuOTg0bC0xNy45ODQtMzcuODMyICAgYy0wLjk2OC0yLjA0OC0xLjAzMi00LjQwOC0wLjE2OC02LjQ5NnMyLjU3Ni0zLjcyLDQuNzEyLTQuNDhsMzkuNDY0LTE0LjAzMmwtMzkuNDY0LTE0LjAzMmMtMi4xMzYtMC43Ni0zLjg0LTIuMzg0LTQuNzEyLTQuNDggICBzLTAuODA4LTQuNDU2LDAuMTY4LTYuNDk2bDE3Ljk4NC0zNy44MzJsLTM3LjgzMiwxNy45ODRjLTIuMDQ4LDAuOTYtNC40MDgsMS4wMzItNi40OTYsMC4xNjhzLTMuNzEyLTIuNTc2LTQuNDgtNC43MTIgICBsLTE0LjAzMi0zOS40NzJsLTE0LjAzMiwzOS40NzJjLTAuNzYsMi4xMzYtMi4zODQsMy44NC00LjQ4LDQuNzEycy00LjQ1NiwwLjgwOC02LjQ5Ni0wLjE2OGwtMzcuODMyLTE3Ljk4NGwxNy45OTIsMzcuODMyICAgYzAuOTY4LDIuMDQ4LDEuMDMyLDQuNDA4LDAuMTY4LDYuNDk2cy0yLjU3NiwzLjcyLTQuNzEyLDQuNDhsLTM5LjQ3MiwxNC4wMzJsMzkuNDcyLDE0LjAzMmMyLjEzNiwwLjc2LDMuODQsMi4zODQsNC43MTIsNC40OCAgIHMwLjgwOCw0LjQ1Ni0wLjE2OCw2LjQ5NmwtMTcuOTkyLDM3LjgzMmwzNy44MzItMTcuOTg0QzIyMy4xMjgsMjg2LjA5NiwyMjQuMzA0LDI4NS44MzIsMjI1LjQ4LDI4NS44MzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI4MC4xNiw4OS44NzJMMjU2LDExNS43MlY3NS4xNTJMMjkxLjg0LDM2LjhjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgYy0zLjIyNC0zLjAyNC04LjI5Ni0yLjg0OC0xMS4zMDQsMC4zODRMMjU2LDUxLjcyVjhjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDh2NDQuNjg4TDIxMi45OTIsMjUuNjggICBjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMkwyNDAsNzUuMzEydjQxLjM3NkwyMTIuOTkyLDg5LjY4Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsNDAuNjY0LDQwLjY2NGwwLjAwOCwwLjAwOGw1Ljg0OCw1Ljg0OGw0My42NC00Ni43MTJjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgQzI4OC4yMzIsODYuNDcyLDI4My4xNjgsODYuNjQ4LDI4MC4xNiw4OS44NzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI1Niw0MDQuODQ4VjM2NC4yOGwyNC4xNiwyNS44NDhjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2ICAgYzMuMjMyLTMuMDE2LDMuNC04LjA4LDAuMzg0LTExLjMwNEwyNDguMiwzMzIuNDg4bC01Ljg0OCw1Ljg0OGwtMC4wMDgsMC4wMDhsLTQwLjY2NCw0MC42NjRjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgczguMTg0LDMuMTI4LDExLjMxMiwwTDI0MCwzNjMuMzEydjQxLjM3NmwtMzguMzI4LDM4LjMyYy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMnM4LjE4NCwzLjEyOCwxMS4zMTIsMEwyNDAsNDI3LjMxMlY0NzIgICBjMCw0LjQyNCwzLjU4NCw4LDgsOHM4LTMuNTc2LDgtOHYtNDMuNzJsMjQuMTYsMjUuODQ4YzEuNTc2LDEuNjg4LDMuNzA0LDIuNTM2LDUuODQsMi41MzZjMS45NiwwLDMuOTItMC43MTIsNS40NjQtMi4xNiAgIGMzLjIzMi0zLjAxNiwzLjQtOC4wOCwwLjM4NC0xMS4zMDRMMjU2LDQwNC44NDh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQ3MiwyMzJoLTQ0LjY4OGwyNS42NzItMjUuNjhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQwNC42ODgsMjMyICAgaC00MS4zNzZsMjUuNjcyLTI1LjY4YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEycy04LjE4NC0zLjEyOC0xMS4zMTIsMGwtMzkuMzIsMzkuMzJjLTAuMDA4LDAuMDA4LTAuMDE2LDAuMDE2LTAuMDI0LDAuMDI0ICAgbC03LjE3Niw3LjE3Nmw0Ni43MTIsNDMuNjQ4YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNmMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzYgICBjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDM2MS41MTIsMjQ4aDQwLjU2OGwzOS43OTIsMzcuMTc2YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNiAgIGMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzZjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDQyNS41MTIsMjQ4SDQ3MmM0LjQxNiwwLDgtMy41NzYsOC04UzQ3Ni40MTYsMjMyLDQ3MiwyMzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE0My44NCwyMzkuMTkyYy0wLjM5Mi0zLjc0NC0zLjI4OC02LjYzMi03LjAzMi03LjAzMmwtMzcuMTUyLTM3LjE1MiAgIGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDI1LjY4LDI1LjY4SDcyLjY0OGwtMzYuOTkyLTM2Ljk5MmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEyTDUwLjAyNCwyMzJIOGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQzLjgxNmwtMjcuMjgsMjUuNDk2ICAgYy0zLjIzMiwzLjAxNi0zLjQsOC4wOC0wLjM4NCwxMS4zMDRjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2TDc1LjI1NiwyNDhoNDAuNTY4ICAgbC0yNy4yOCwyNS40OTZjLTMuMjMyLDMuMDE2LTMuNCw4LjA4LTAuMzg0LDExLjMwNGMxLjU3NiwxLjY4OCwzLjcwNCwyLjUzNiw1Ljg0LDIuNTM2YzEuOTYsMCwzLjkyLTAuNzEyLDUuNDY0LTIuMTYgICBsNDYuNzEyLTQzLjY0OEwxNDMuODQsMjM5LjE5MnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDIzLjI0LDExMi40MjRsLTM4LjE4NCwxLjg0bDMyLjY0OC0zMi42NDhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTIgICBzLTguMTg0LTMuMTI4LTExLjMxMiwwTDM3NiwxMDAuNjg4VjY0YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djUyLjY4OGwtMzIsMzJWMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4ICAgdjY0LjUyOGw2My44MTYtMS40ODhjNC40MTYtMC4xMDQsNy45MTItMy43NjgsNy44MDgtOC4xODRjLTAuMTA0LTQuNDE2LTMuNzY4LTguMDI0LTguMTg0LTcuODE2bC0zNi4wMTYsMC44NGwyOC43OTItMjguNzkyICAgbDU1Ljc5Mi0yLjY4OGM0LjQwOC0wLjIwOCw3LjgxNi0zLjk2LDcuNjA4LTguMzc2QzQzMS40LDExNS42MTYsNDI3LjU2LDExMi4xNzYsNDIzLjI0LDExMi40MjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE4NCwzMTMuNDg4TDE4Mi41MTIsMzA0SDEyMGMtNC40MTYsMC04LDMuNTc2LTgsOHMzLjU4NCw4LDgsOGgzNi42ODhsLTMyLDMySDcyICAgYy00LjQxNiwwLTgsMy41NzYtOCw4czMuNTg0LDgsOCw4aDM2LjY4OGwtMzAuMzkyLDMwLjM5MmMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTJjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0ICAgczQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDMxLjAwOC0zMS4wMDhsLTEuMTQ0LDM2Ljg3MmMtMC4xMzYsNC40MDgsMy4zMzYsOC40MzIsNy43NTIsOC40MzJjMC4wODgsMCwwLjE2OCwwLDAuMjU2LDAgICBjNC4zMDQsMCw3Ljg1Ni0zLjYwOCw3Ljk5Mi03LjkzNmwxLjY3Mi01My44bDI5LjE4NC0yOS4yMzJsLTAuMjI0LDM0Ljc0NGMtMC4wMzIsNC40MjQsMy41MjgsOC4yMjQsNy45NDQsOC4yMjQgICBjMC4wMTYsMCwwLjAzMiwwLDAuMDQ4LDBjNC4zOTIsMCw4Ljc0NC0zLjczNiw4Ljc3Ni04LjEzNkwxODQsMzEzLjU5MkMxODQsMzEzLjU2LDE4NCwzMTMuNTIsMTg0LDMxMy40ODh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQyNCwzNTJoLTUyLjY4OGwtMzItMzJIMzc2YzQuNDE2LDAsOC0zLjU3Niw4LThzLTMuNTg0LTgtOC04aC02NC41MzZsMS41MDQsNjQgICBjMC4xMDQsNC4zNTIsMy42NjQsOCw3Ljk5Miw4YzAuMDY0LDAsMC4xMjgsMCwwLjE5MiwwYzQuNDE2LDAsNy45MTItMy45Niw3LjgwOC04LjM3NmwtMC44NC0zNi4xMDRsMjguOCwyOC43NTJsMi42OCw1NS45NTIgICBjMC4yLDQuMjcyLDMuNzM2LDcuNzc2LDcuOTc2LDcuNzc2YzAuMTM2LDAsMC4yNjQsMCwwLjM5MiwwYzQuNDE2LDAsNy44MjQtNC4xNTIsNy42MDgtOC41NjhsLTEuODQtMzguMjg4bDMyLjY0OCwzMi42ICAgYzEuNTYsMS41NiwzLjYwOCwyLjMyLDUuNjU2LDIuMzJzNC4wOTYtMC43OTIsNS42NTYtMi4zNTJjMy4xMjgtMy4xMjgsMy4xMjgtOC4xOTIsMC0xMS4zMkwzODcuMzEyLDM2OEg0MjRjNC40MTYsMCw4LTMuNTc2LDgtOCAgIFM0MjguNDE2LDM1Miw0MjQsMzUyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xODQsMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djM2LjY4OGwtMzItMzJWNjRjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDggICB2MzYuNjg4TDg5LjYwOCw3MC4yOTZjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMmwzMS4wMDgsMzEuMDA4bC0zNi42OC0xLjE0NCAgIGMtNC43NzYtMC4wNjQtOC4xMTIsMy4zMzYtOC4yNDgsNy43NTJzMy4zMzYsOC4xMTIsNy43NDQsOC4yNDhsNTMuNzA0LDEuNjY0bDI5LjE4NCwyOS4xODRsLTM0LjU4NC0wLjIyNCAgIGMtNC41MDQtMC4wMDgtOC4wMjQsMy41MjgtOC4wNDgsNy45NDRjLTAuMDI0LDQuNDI0LDMuNTI4LDguOCw3Ljk1Miw4LjgzMkwxNzQuNDI0LDE3NmMwLjAxNiwwLDAuMDI0LDAsMC4wNCwwICAgYzAuMDE2LDAsMC4wMjQsMCwwLjA0LDBsOS40OTYtMS40ODhWMTEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzIsMjMyaC00LjY4OGwyLjM0NC0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDBMMjU2LDIyMC42ODggICBWMjE2YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djQuNjg4bC0yLjM0NC0yLjM0NGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDIuMzQ0LDIuMzQ0ICAgSDIyNGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQuNjg4bC0yLjM0NCwyLjM0NGMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDIuMzQ0LTIuMzQ0VjI2NGMwLDQuNDI0LDMuNTg0LDgsOCw4czgtMy41NzYsOC04di00LjY4OGwyLjM0NCwyLjM0NCAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJMMjY3LjMxMiwyNDhIMjcyICAgYzQuNDE2LDAsOC0zLjU3Niw4LThTMjc2LjQxNiwyMzIsMjcyLDIzMnoiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
		 		    	                       	console.log("눈");
		 		    	                       	break;
		 		    	                   	case "4":
		 		    	                       	$('.weather-state-text-second').html("소나기");
		 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsNDBjLTQuNDE2LDAtOC0zLjU3Ni04LThWOGMwLTQuNDI0LDMuNTg0LTgsOC04YzQuNDE2LDAsOCwzLjU3Niw4LDh2MjQgIEMyNDgsMzYuNDI0LDI0NC40MTYsNDAsMjQwLDQweiIvPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNOCwzMjhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDMTYsMzI0LjQyNCwxMi40MTYsMzI4LDgsMzI4eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik01Niw0MDhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDNjQsNDA0LjQyNCw2MC40MTYsNDA4LDU2LDQwOCAgIHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMTA0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMxMTIsMzA4LjQyNCwxMDguNDE2LDMxMiwxMDQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0xMzYsNDU2Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzE0NCw0NTIuNDI0LDE0MC40MTYsNDU2LDEzNiw0NTZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTE4NCwzNjBjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDMTkyLDM1Ni40MjQsMTg4LjQxNiwzNjAsMTg0LDM2MHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjk2LDQ0MGMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMzMDQsNDM2LjQyNCwzMDAuNDE2LDQ0MCwyOTYsNDQweiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0zNDQsMzYwYy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzM1MiwzNTYuNDI0LDM0OC40MTYsMzYwLDM0NCwzNjB6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTM5Miw0NTZjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDNDAwLDQ1Mi40MjQsMzk2LjQxNiw0NTYsMzkyLDQ1NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDI0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEM0MzIsMzA4LjQyNCw0MjguNDE2LDMxMiw0MjQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik00NzIsNDA4Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzQ4MCw0MDQuNDI0LDQ3Ni40MTYsNDA4LDQ3Miw0MDh6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsMjQwYy00LjQxNiwwLTgsMy41NzYtOCw4djIwMGMwLDguODI0LTcuMTc2LDE2LTE2LDE2cy0xNi03LjE3Ni0xNi0xNnYtMTcuNzA0ICBjOC41ODQtMy40NDgsMTQuNjY0LTExLjgwOCwxNC42NjQtMjEuNjMyYzAtMTIuODg4LTEwLjQ0OC0yMy4zMzYtMjMuMzM2LTIzLjMzNlMxNjgsMzk1Ljc3NiwxNjgsNDA4LjY2NCAgYzAsMTAuMzEyLDYuNzI4LDE4Ljk1MiwxNiwyMi4wNFY0NDhjMCwxNy42NDgsMTQuMzUyLDMyLDMyLDMyczMyLTE0LjM1MiwzMi0zMlYyNDhDMjQ4LDI0My41NzYsMjQ0LjQxNiwyNDAsMjQwLDI0MHoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0yMzkuOTI4LDIyLjU2OEMxODIuNTA0LDIzLjM4NCwxMzYuMTQ0LDEyMi4yNjQsMTM2LjE0NCwyNTZoMjE1LjU2ICBDMzUxLjcwNCwxMjIuMjY0LDMwMS43NzYsMjMuMzg0LDIzOS45MjgsMjIuNTY4eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojNzdCOUM4OyIgZD0iTTIzOS4yLDIyLjI3MmMtMTE4LjQwOCwwLTIxNC40LDk5LjY3Mi0yMTQuNCwyMTguMDhjMCw0LjAxNiwwLjEyOCwxNS42NDgsMC4zNDQsMTUuNjQ4aDExMSAgYzAtMTI4LjgxNiw0Ni4zNi0yMjguMzUyLDEwMy43ODQtMjI5LjE0NGMtMC4yNDgsMC0wLjQ4OC0yLjE4NC0wLjcyOC0yLjE4NGMwLjI0OCwwLDAuNDg4LTEuMDQsMC43MjgtMS4wNCAgYzAuMjI0LDAsMC40NDgtMC41NzYsMC42OC0wLjU3NmMtMC4yMjQsMC0wLjQ0OCw0LjA1Ni0wLjY4LDQuMDY0QzMwMS43NzYsMjcuOTEyLDM1MS43MDQsMTI3LjE4NCwzNTEuNzA0LDI1NmgxMDEuNTUyICBjMC4yMTYsMCwwLjM1Mi0xMS40MjQsMC4zNTItMTUuNDRDNDUzLjYsMTIyLjE0NCwzNTcuNjA4LDIyLjI3MiwyMzkuMiwyMi4yNzJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDM2LjQzMiwxMTIuNzg0YzAsMjkuODI0LTEzLjQsMzUuMjE2LTI5LjkzNiwzNS4yMTZzLTI5LjkzNi01LjM5Mi0yOS45MzYtMzUuMjE2ICBTNDA2LjQ5Niw0MCw0MDYuNDk2LDQwUzQzNi40MzIsODIuOTYsNDM2LjQzMiwxMTIuNzg0eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
		 		    	                       	console.log("소나기");
		 		    	                       	break;
		 		    					  }
		 		    				  }else if(category == "SKY"){ // 하늘상태
		 		    					  switch(val) {
		 		    	                  	case "1":
		 		    	                       	$('.weather-state-text-second').html("맑음");
		 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODMuNTEyIDQ4My41MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4My41MTIgNDgzLjUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGQ0I2NDE7IiBwb2ludHM9IjQ4My41MTIsMjQxLjc1MiA0MjguOTI4LDI5MS42ODggNDUwLjk0NCwzNjIuMzI4IDM3OC42LDM3Ny45NTIgMzYyLjMyOCw0NTAuMTUyICAgMjkxLjgyNCw0MjcuNjY0IDI0MS43NTIsNDgyLjE0NCAxOTEuNjg4LDQyNy42NjQgMTIxLjE4NCw0NTAuMTUyIDEwNC45MTIsMzc3Ljk1MiAzMi41NiwzNjIuMzI4IDU0LjU4NCwyOTEuNjg4IDAsMjQxLjc1MiAgIDU0LjU4NCwxOTEuODI0IDMyLjU2OCwxMjEuMTg0IDEwNC45MTIsMTA1LjU1MiAxMjEuMTg0LDMzLjM2IDE5MS42ODgsNTUuODQ4IDI0MS43NTIsMS4zNjggMjkxLjgyNCw1NS44NDggMzYyLjMyOCwzMy4zNiAgIDM3OC42LDEwNS41NiA0NTAuOTQ0LDEyMS4xODQgNDI4LjkyOCwxOTEuODI0ICIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGREM1Njc7IiBjeD0iMjQxLjc1MiIgY3k9IjI0NC41MDQiIHI9IjEzOC43MzYiLz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />');
		 		    	                       	console.log("맑음");
		 		    	                       	break;
		 		    	                   	case "3":
		 		    	                   		$('.weather-state-text-second').html("구름많음");
		 		    	                   		$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                   		console.log("구름많음");
		 		    	                       	break;
		 		    	                   	case "4":
		 		    	                    	$('.weather-state-text-second').html("흐림"); 
		 		    	                    	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
		 		    	                    	console.log("흐림");
		 		    	                       	break;
		 		    	                   }
		 		    				  }else if(category == "T3H"){ // 3시간 기온 ℃
		 		    					  $('.temp-second').html(val+"℃"); 
		 		    				  
		 		    				  }else if(category == "R06"){ // 6시간 강수량 1 mm
		 		    					  switch(val) {
		 		    					  	case "0":
		 		    	                       	$('.rainfall-second').html("0mm");
		 		    	                       	break;
		 		    	                  	case "1":
		 		    	                       	$('.rainfall-second').html("1mm 미만");
		 		    	                       	break;
		 		    	                   	case "5":
		 		    	                   		$('.rainfall-second').html("1~4mm");
		 		    	                       	break;
		 		    	                   	case "10":
		 		    	                    	$('.rainfall-second').html("5~9mm");
		 		    	                       	break;
		 		    	                   	case "20":
		 		    	                    	$('.rainfall-second').html("10~19mm");
		 		    	                       	break;
		 		    	                   	case "40":
		 		    	                    	$('.rainfall-second').html("20~39mm");
		 		    	                       	break;
		 		    	                   	case "70":
		 		    	                    	$('.rainfall-second').html("40~69mm");
		 		    	                       	break;
		 		    	                   	case "100":
		 		    	                    	$('.rainfall-second').html("70mm 이상");
		 		    	                       	break;
		 		    	                       	
		 		    	                   }
		 		    				  }else if(category == "WAV"){ // 6시간 신적설 1 cm
		 		    					  switch(val) {
		 		    					  	case "0":
		 		    	                       	$('.snowfall-second').html("0m");
		 		    	                       	break;
		 		    	                  	case "1":
		 		    	                       	$('.snowfall-second').html("1m 미만");
		 		    	                       	break;
		 		    	                   	case "5":
		 		    	                   		$('.snowfall-second').html("1~4m");
		 		    	                       	break;
		 		    	                   	case "10":
		 		    	                    	$('.snowfall-second').html("5~9m"); 
		 		    	                       	break;
		 		    	                   	case "20":
		 		    	                    	$('.snowfall-second').html("10~19m"); 
		 		    	                       	break;
		 		    	                   	case "100":
		 		    	                    	$('.snowfall-second').html("20m 이상"); 
		 		    	                       	break;
		 		    	                   }
		 		    				  }else if(category == "POP"){ //강수확률 %
		 		    					  $('.ratio-second').html(val+"%"); 
		 		    				  }else if(category == "REH"){ // 습도 %
		 		    					  $('.humidity-second').html(val+"%"); 
		 		    				  }else if(category == "VEC"){ // 풍향 m/s
		 		    					  $('.wind_direction-second').html(val+"m/s"); 
		 		    				  }/* else if(category == "WSD"){ // 풍속 1
		 		    					  $('.wind_speed-first').html(val+"m/s"); 
		 		    				  } */else if(category == "TMN"){ // 아침 최저기온 ℃
		 		    					  $('.lowest_temp-second').html(val+"℃"); 
		 		    				  }else if(category == "TMX"){ // 낮 최고기온 ℃
		 		    					  $('.highest_temp-second').html(val+"℃"); 
		 		    				  }else if(category == "VVV"){ // 남북바람성분(VVV) : 북(+표기), 남(-표기)
		 		    					  if(val < 0){
		 		    						  $('.wind_speed-second').html("남"+val.split('-')[1]+"m/s"); 
		 		    					  }else if(val > 0){
		 		    						  $('.wind_speed-second').html("북"+val+"m/s");
		 		    					  }	 
		 		    				  }else if(category == "UUU"){ // 동서바람성분(UUU) : 동(+표기), 서(-표기)
		 		    					  if(val < 0){
		 		    						  $('.wind_speed-second').append("서"+val.split('-')[1]+"m/s");
		 		    					  }else if(val > 0){
		 		    						  $('.wind_speed-second').append("동"+val+"m/s");
		 		    					  }	    				  
		 		    				  }
		 			    		  }
		 		    		  	}
		 		    	  	});
		 		       	});
		 		    		
		 		        } //success func 종료
		 		    });
			});
		});
 	    

 	    //첫번째 ajax
 		$.ajax({
 		    url: "weather?x=55&y=124",
 		    dataType : 'json',
 		    success: function(data) {
 		       
 		      $.each(data.response.body.items.item, function(key,value){
 		    	  /* console.log("key : " + key); */
 		    	  $.each(value,function(key2,value2){
 		    		  /* console.log("key2: "+key2+", value2 : "+value2); */
 		    		  if(value2 != null){
 		    			  if(key2 == "category"){
 		    				  var category = value["category"];
 		    				  var val = value["fcstValue"];
 		    				  console.log("category: "+category+", val : "+val);
 		    				  if(category == "PTY"){ // 강수형태
 		    					  switch(val) {
 		    	                  	case "1":
 		    	                    	$('.weather-state-text-first').html("비");
 		    	                    	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik00MjYuMjA4LDE2OC4wMzZjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LDEuMjQtMTMuNjI0LDEuMjU2LTE4LjQwOCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04Mi40MjQtNzAuMDMyLTkxLjZjLTIzLjc1Mi01LjIzMi00Ni40MjQtMi42LTY1LjE4NCw3LjUyOEMyMjYuNzEyLDMxLjQ5MiwxODguNzkyLDcuOSwxNDUuMzI4LDUuMjQ0ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjUyOC0xNy4wNTYtMS41MjhDNTcuNDMyLDMuNzA4LDAsNjIuODIsMCwxMzUuODc2YzAsMzguMDcyLDE1LjY4OCw3Mi4yMzIsNDAuNjQ4LDk2LjM2OCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMjcyLDg5LjAwOCw0Mi45MDRjMCwwLDI5NS40MzIsMS40NDgsMjk2LjU1MiwxLjQ0OGMyOS43MTIsMCw1My43OTItMjIuMjg4LDUzLjc5Mi01NC4yOCAgUzQ1NS45MTIsMTY4LjAzNiw0MjYuMjA4LDE2OC4wMzZ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzkyLjQ4LDI4OC4wMzZjLTAuOTkyLDAtMzcuNjcyLDAtMzcuNjcyLDBjMC42NTYtOCwxLjA5Ni03Ljk3NiwxLjEwNC0xMi4yICBjMC4xMTItMzcuNjk2LTI1LjA0OC03MC43NzYtNjEuODU2LTc4Ljg4OGMtMjAuOTg0LTQuNjI0LTQxLjAwOC0xLjI4LTU3LjU4NCw3LjY2NGMtMjAuMjE2LTMwLjA4OC01My43Mi01MC40MjQtOTIuMTA0LTUyLjc2OCAgYy00Ljk0NC0wLjY4LTkuOTQ0LTEuMDk2LTE1LjA2NC0xLjA5NkM2Ni43MjgsMTUwLjc0LDE2LDIwMy4wODQsMTYsMjY3LjYyYzAsMzMuNjMyLDEzLjg1Niw2My44NjQsMzUuOTA0LDg1LjE4NCAgYzE5LjQ5NiwyMS42MzIsNDYuNTY4LDM1LjYwOCw3OC42MjQsMzcuOTM2YzAsMCwyNjAuOTY4LDEuMjk2LDI2MS45NiwxLjI5NmMyNi4yNCwwLDQ3LjUyLTIzLjczNiw0Ny41Mi01MiAgQzQ0MCwzMTEuNzcyLDQxOC43MjgsMjg4LjAzNiwzOTIuNDgsMjg4LjAzNnoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8wIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTEyOS45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8xIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE3Ny45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8yIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTMzLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjEwNC01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzMiIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNODEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yMjUuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNSIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzMuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNiIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMjEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zNjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfOCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MTcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMi0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMF8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xMjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMV8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xNzcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMl8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMy45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgoJPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8zXzFfIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTgxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzRfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjI1Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzVfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjczLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzZfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzIxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzdfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzY5Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzhfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDE3Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yLTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                    	console.log("비");
 		    	                       	break;
 		    	                   	case "2":
 		    	                       	$('.weather-state-text-first').html("비/눈");
 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjYuMjA4LDE1OC45NjRjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LjE2LDEuMjQtOS45NjgsMS4yNTYtMTQuNzQ0ICBjMC4xMjgtNDIuNjcyLTI4LjM2LTgwLjU5Mi03MC4wMzItODkuNzc2Yy0yMy43NTItNS4yMzItNDYuNDI0LTEuNjgtNjUuMTg0LDguNDRjLTIyLjg4OC0zNC4wNjQtNjAuODA4LTU3LjItMTA0LjI3Mi01OS44NTYgIGMtNS41OTItMC43NjgtMTEuMjU2LTEuMzA0LTE3LjA1Ni0xLjMwNEM1Ny40MzIsMS43MjQsMCw2MC45NDgsMCwxMzQuMDEyYzAsMzguMDcyLDE1LjY4OCw3Mi4yODgsNDAuNjQ4LDk2LjQyNCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMzA0LDg5LjAwOCw0Mi45MzZjMCwwLDI5NS40MzIsMS40NjQsMjk2LjU1MiwxLjQ2NGMyOS43MTIsMCw1My43OTItMjUuOTM2LDUzLjc5Mi01Ny45MjggIEM0ODAsMTg0LjksNDU1LjkxMiwxNTguOTY0LDQyNi4yMDgsMTU4Ljk2NHoiLz4KPGc+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiNCRURERTU7IiBjeD0iNjMuMDY0IiBjeT0iMzI1LjM0IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSI0MzIuOTYiIGN5PSIzMzUuMjM2IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSIyMDcuMDY0IiBjeT0iNDUzLjM0IiByPSIyNC45MzYiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjcyLDMzNC4yNzZoLTEyLjY4OGw4Ljk3Ni04Ljk3NmMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBMMjQ4LDMyMi45NjR2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsOC45NzYsOC45NzZIMjA4Yy00LjQxNiwwLTgsMy41ODQtOCw4czMuNTg0LDgsOCw4aDEyLjY4OGwtOC45NzYsOC45NzZjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgYzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGw4Ljk3Ni04Ljk3NnYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOGM0LjQxNiwwLDgtMy41ODQsOC04di0xMi42ODggICBsOC45NzYsOC45NzZjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEybC04Ljk3Ni04Ljk3NkgyNzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFMyNzYuNDE2LDMzNC4yNzYsMjcyLDMzNC4yNzZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTQxNiw0MjIuMjc2aC0xMi42ODhsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwICAgTDM5Miw0MTAuOTY0di0xMi42ODhjMC00LjQxNi0zLjU4NC04LTgtOHMtOCwzLjU4NC04LDh2MTIuNjg4bC04Ljk3Ni04Ljk3NmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDguOTc2LDguOTc2SDM1MmMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRsOC45NzYtOC45NzZ2MTIuNjg4YzAsNC40MTYsMy41ODQsOCw4LDhzOC0zLjU4NCw4LTh2LTEyLjY4OCAgIGw4Ljk3Niw4Ljk3NmMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJsLTguOTc2LTguOTc2SDQxNiAgIGM0LjQxNiwwLDgtMy41ODQsOC04UzQyMC40MTYsNDIyLjI3Niw0MTYsNDIyLjI3NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNzIsNDMwLjI3Nkg1OS4zMTJsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQ4LDQxOC45NjQgICB2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMHMtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBsOC45NzYsOC45NzZIOGMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRMMzIsNDU3LjU4OHYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOHM4LTMuNTg0LDgtOHYtMTIuNjg4ICAgbDguOTc2LDguOTc2YzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMmwtOC45NzYtOC45NzZINzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFM3Ni40MTYsNDMwLjI3Niw3Miw0MzAuMjc2eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                       	console.log("비/눈");
 		    	                       	break;
 		    	                   	case "3":
 		    	                       	$('.weather-state-text-first').html("눈");
 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBvbHlnb24gc3R5bGU9ImZpbGw6I0U5RjRGNjsiIHBvaW50cz0iMjQ3LjA1NiwxMjkgMjY4LjYyNCwxODkuNjY0IDMyNi43NzYsMTYyLjAyNCAyOTkuMTM2LDIyMC4xNzYgMzU5LjgsMjQxLjc1MiAyOTkuMTM2LDI2My4zMiAgIDMyNi43NzYsMzIxLjQ4IDI2OC42MjQsMjkzLjgzMiAyNDcuMDU2LDM1NC40OTYgMjI1LjQ4LDI5My44MzIgMTY3LjMyOCwzMjEuNDggMTk0Ljk2OCwyNjMuMzIgMTM0LjMwNCwyNDEuNzUyIDE5NC45NjgsMjIwLjE3NiAgIDE2Ny4zMjgsMTYyLjAyNCAyMjUuNDgsMTg5LjY2NCAiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI0Ny4wNDgsMzYyLjQ5NmMtMy4zODQsMC02LjQtMi4xMzYtNy41MzYtNS4zMmwtMTguNjA4LTUyLjMxMmwtNTAuMTUyLDIzLjgzMiAgIGMtMy4wNzIsMS40NTYtNi42OTYsMC44MjQtOS4wODgtMS41NjhzLTMuMDI0LTYuMDMyLTEuNTY4LTkuMDk2bDIzLjg0LTUwLjE1MmwtNTIuMzItMTguNmMtMy4xOTItMS4xMzYtNS4zMi00LjE2LTUuMzItNy41MzYgICBzMi4xMjgtNi40MDgsNS4zMi03LjUzNmw1Mi4zMi0xOC42bC0yMy44NC01MC4xNTJjLTEuNDU2LTMuMDY0LTAuODI0LTYuNzA0LDEuNTY4LTkuMDk2YzIuMzkyLTIuMzg0LDYuMDI0LTMuMDMyLDkuMDg4LTEuNTY4ICAgbDUwLjE1MiwyMy44MzJsMTguNjA4LTUyLjMxMmMxLjEzNi0zLjE4NCw0LjE1Mi01LjMyLDcuNTM2LTUuMzJzNi40LDIuMTM2LDcuNTM2LDUuMzJsMTguNjA4LDUyLjMxMmw1MC4xNTItMjMuODMyICAgYzMuMDY0LTEuNDcyLDYuNjk2LTAuODMyLDkuMDg4LDEuNTY4YzIuMzkyLDIuMzkyLDMuMDI0LDYuMDMyLDEuNTY4LDkuMDk2bC0yMy44NCw1MC4xNTJsNTIuMzIsMTguNiAgIGMzLjE5MiwxLjEzNiw1LjMyLDQuMTYsNS4zMiw3LjUzNnMtMi4xMjgsNi40MDgtNS4zMiw3LjUzNmwtNTIuMzIsMTguNkwzMzQsMzE4LjAzMmMxLjQ1NiwzLjA2NCwwLjgyNCw2LjcwNC0xLjU2OCw5LjA5NiAgIGMtMi4zOTIsMi4zODQtNi4wMjQsMy4wMzItOS4wODgsMS41NjhsLTUwLjE1Mi0yMy44MzJsLTE4LjYwOCw1Mi4zMTJDMjUzLjQ1NiwzNjAuMzY4LDI1MC40NCwzNjIuNDk2LDI0Ny4wNDgsMzYyLjQ5NnogICAgTTIyNS40OCwyODUuODMyYzEuMDQsMCwyLjA4LDAuMiwzLjA2NCwwLjYwOGMyLjA4OCwwLjg2NCwzLjcxMiwyLjU3Niw0LjQ4LDQuNzEybDE0LjAzMiwzOS40NzJsMTQuMDMyLTM5LjQ3MiAgIGMwLjc2LTIuMTM2LDIuMzg0LTMuODQsNC40OC00LjcxMmMyLjA4OC0wLjg2NCw0LjQ1Ni0wLjgwOCw2LjQ5NiwwLjE2OGwzNy44MzIsMTcuOTg0bC0xNy45ODQtMzcuODMyICAgYy0wLjk2OC0yLjA0OC0xLjAzMi00LjQwOC0wLjE2OC02LjQ5NnMyLjU3Ni0zLjcyLDQuNzEyLTQuNDhsMzkuNDY0LTE0LjAzMmwtMzkuNDY0LTE0LjAzMmMtMi4xMzYtMC43Ni0zLjg0LTIuMzg0LTQuNzEyLTQuNDggICBzLTAuODA4LTQuNDU2LDAuMTY4LTYuNDk2bDE3Ljk4NC0zNy44MzJsLTM3LjgzMiwxNy45ODRjLTIuMDQ4LDAuOTYtNC40MDgsMS4wMzItNi40OTYsMC4xNjhzLTMuNzEyLTIuNTc2LTQuNDgtNC43MTIgICBsLTE0LjAzMi0zOS40NzJsLTE0LjAzMiwzOS40NzJjLTAuNzYsMi4xMzYtMi4zODQsMy44NC00LjQ4LDQuNzEycy00LjQ1NiwwLjgwOC02LjQ5Ni0wLjE2OGwtMzcuODMyLTE3Ljk4NGwxNy45OTIsMzcuODMyICAgYzAuOTY4LDIuMDQ4LDEuMDMyLDQuNDA4LDAuMTY4LDYuNDk2cy0yLjU3NiwzLjcyLTQuNzEyLDQuNDhsLTM5LjQ3MiwxNC4wMzJsMzkuNDcyLDE0LjAzMmMyLjEzNiwwLjc2LDMuODQsMi4zODQsNC43MTIsNC40OCAgIHMwLjgwOCw0LjQ1Ni0wLjE2OCw2LjQ5NmwtMTcuOTkyLDM3LjgzMmwzNy44MzItMTcuOTg0QzIyMy4xMjgsMjg2LjA5NiwyMjQuMzA0LDI4NS44MzIsMjI1LjQ4LDI4NS44MzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI4MC4xNiw4OS44NzJMMjU2LDExNS43MlY3NS4xNTJMMjkxLjg0LDM2LjhjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgYy0zLjIyNC0zLjAyNC04LjI5Ni0yLjg0OC0xMS4zMDQsMC4zODRMMjU2LDUxLjcyVjhjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDh2NDQuNjg4TDIxMi45OTIsMjUuNjggICBjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMkwyNDAsNzUuMzEydjQxLjM3NkwyMTIuOTkyLDg5LjY4Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsNDAuNjY0LDQwLjY2NGwwLjAwOCwwLjAwOGw1Ljg0OCw1Ljg0OGw0My42NC00Ni43MTJjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgQzI4OC4yMzIsODYuNDcyLDI4My4xNjgsODYuNjQ4LDI4MC4xNiw4OS44NzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI1Niw0MDQuODQ4VjM2NC4yOGwyNC4xNiwyNS44NDhjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2ICAgYzMuMjMyLTMuMDE2LDMuNC04LjA4LDAuMzg0LTExLjMwNEwyNDguMiwzMzIuNDg4bC01Ljg0OCw1Ljg0OGwtMC4wMDgsMC4wMDhsLTQwLjY2NCw0MC42NjRjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgczguMTg0LDMuMTI4LDExLjMxMiwwTDI0MCwzNjMuMzEydjQxLjM3NmwtMzguMzI4LDM4LjMyYy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMnM4LjE4NCwzLjEyOCwxMS4zMTIsMEwyNDAsNDI3LjMxMlY0NzIgICBjMCw0LjQyNCwzLjU4NCw4LDgsOHM4LTMuNTc2LDgtOHYtNDMuNzJsMjQuMTYsMjUuODQ4YzEuNTc2LDEuNjg4LDMuNzA0LDIuNTM2LDUuODQsMi41MzZjMS45NiwwLDMuOTItMC43MTIsNS40NjQtMi4xNiAgIGMzLjIzMi0zLjAxNiwzLjQtOC4wOCwwLjM4NC0xMS4zMDRMMjU2LDQwNC44NDh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQ3MiwyMzJoLTQ0LjY4OGwyNS42NzItMjUuNjhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQwNC42ODgsMjMyICAgaC00MS4zNzZsMjUuNjcyLTI1LjY4YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEycy04LjE4NC0zLjEyOC0xMS4zMTIsMGwtMzkuMzIsMzkuMzJjLTAuMDA4LDAuMDA4LTAuMDE2LDAuMDE2LTAuMDI0LDAuMDI0ICAgbC03LjE3Niw3LjE3Nmw0Ni43MTIsNDMuNjQ4YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNmMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzYgICBjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDM2MS41MTIsMjQ4aDQwLjU2OGwzOS43OTIsMzcuMTc2YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNiAgIGMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzZjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDQyNS41MTIsMjQ4SDQ3MmM0LjQxNiwwLDgtMy41NzYsOC04UzQ3Ni40MTYsMjMyLDQ3MiwyMzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE0My44NCwyMzkuMTkyYy0wLjM5Mi0zLjc0NC0zLjI4OC02LjYzMi03LjAzMi03LjAzMmwtMzcuMTUyLTM3LjE1MiAgIGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDI1LjY4LDI1LjY4SDcyLjY0OGwtMzYuOTkyLTM2Ljk5MmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEyTDUwLjAyNCwyMzJIOGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQzLjgxNmwtMjcuMjgsMjUuNDk2ICAgYy0zLjIzMiwzLjAxNi0zLjQsOC4wOC0wLjM4NCwxMS4zMDRjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2TDc1LjI1NiwyNDhoNDAuNTY4ICAgbC0yNy4yOCwyNS40OTZjLTMuMjMyLDMuMDE2LTMuNCw4LjA4LTAuMzg0LDExLjMwNGMxLjU3NiwxLjY4OCwzLjcwNCwyLjUzNiw1Ljg0LDIuNTM2YzEuOTYsMCwzLjkyLTAuNzEyLDUuNDY0LTIuMTYgICBsNDYuNzEyLTQzLjY0OEwxNDMuODQsMjM5LjE5MnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDIzLjI0LDExMi40MjRsLTM4LjE4NCwxLjg0bDMyLjY0OC0zMi42NDhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTIgICBzLTguMTg0LTMuMTI4LTExLjMxMiwwTDM3NiwxMDAuNjg4VjY0YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djUyLjY4OGwtMzIsMzJWMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4ICAgdjY0LjUyOGw2My44MTYtMS40ODhjNC40MTYtMC4xMDQsNy45MTItMy43NjgsNy44MDgtOC4xODRjLTAuMTA0LTQuNDE2LTMuNzY4LTguMDI0LTguMTg0LTcuODE2bC0zNi4wMTYsMC44NGwyOC43OTItMjguNzkyICAgbDU1Ljc5Mi0yLjY4OGM0LjQwOC0wLjIwOCw3LjgxNi0zLjk2LDcuNjA4LTguMzc2QzQzMS40LDExNS42MTYsNDI3LjU2LDExMi4xNzYsNDIzLjI0LDExMi40MjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE4NCwzMTMuNDg4TDE4Mi41MTIsMzA0SDEyMGMtNC40MTYsMC04LDMuNTc2LTgsOHMzLjU4NCw4LDgsOGgzNi42ODhsLTMyLDMySDcyICAgYy00LjQxNiwwLTgsMy41NzYtOCw4czMuNTg0LDgsOCw4aDM2LjY4OGwtMzAuMzkyLDMwLjM5MmMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTJjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0ICAgczQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDMxLjAwOC0zMS4wMDhsLTEuMTQ0LDM2Ljg3MmMtMC4xMzYsNC40MDgsMy4zMzYsOC40MzIsNy43NTIsOC40MzJjMC4wODgsMCwwLjE2OCwwLDAuMjU2LDAgICBjNC4zMDQsMCw3Ljg1Ni0zLjYwOCw3Ljk5Mi03LjkzNmwxLjY3Mi01My44bDI5LjE4NC0yOS4yMzJsLTAuMjI0LDM0Ljc0NGMtMC4wMzIsNC40MjQsMy41MjgsOC4yMjQsNy45NDQsOC4yMjQgICBjMC4wMTYsMCwwLjAzMiwwLDAuMDQ4LDBjNC4zOTIsMCw4Ljc0NC0zLjczNiw4Ljc3Ni04LjEzNkwxODQsMzEzLjU5MkMxODQsMzEzLjU2LDE4NCwzMTMuNTIsMTg0LDMxMy40ODh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQyNCwzNTJoLTUyLjY4OGwtMzItMzJIMzc2YzQuNDE2LDAsOC0zLjU3Niw4LThzLTMuNTg0LTgtOC04aC02NC41MzZsMS41MDQsNjQgICBjMC4xMDQsNC4zNTIsMy42NjQsOCw3Ljk5Miw4YzAuMDY0LDAsMC4xMjgsMCwwLjE5MiwwYzQuNDE2LDAsNy45MTItMy45Niw3LjgwOC04LjM3NmwtMC44NC0zNi4xMDRsMjguOCwyOC43NTJsMi42OCw1NS45NTIgICBjMC4yLDQuMjcyLDMuNzM2LDcuNzc2LDcuOTc2LDcuNzc2YzAuMTM2LDAsMC4yNjQsMCwwLjM5MiwwYzQuNDE2LDAsNy44MjQtNC4xNTIsNy42MDgtOC41NjhsLTEuODQtMzguMjg4bDMyLjY0OCwzMi42ICAgYzEuNTYsMS41NiwzLjYwOCwyLjMyLDUuNjU2LDIuMzJzNC4wOTYtMC43OTIsNS42NTYtMi4zNTJjMy4xMjgtMy4xMjgsMy4xMjgtOC4xOTIsMC0xMS4zMkwzODcuMzEyLDM2OEg0MjRjNC40MTYsMCw4LTMuNTc2LDgtOCAgIFM0MjguNDE2LDM1Miw0MjQsMzUyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xODQsMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djM2LjY4OGwtMzItMzJWNjRjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDggICB2MzYuNjg4TDg5LjYwOCw3MC4yOTZjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMmwzMS4wMDgsMzEuMDA4bC0zNi42OC0xLjE0NCAgIGMtNC43NzYtMC4wNjQtOC4xMTIsMy4zMzYtOC4yNDgsNy43NTJzMy4zMzYsOC4xMTIsNy43NDQsOC4yNDhsNTMuNzA0LDEuNjY0bDI5LjE4NCwyOS4xODRsLTM0LjU4NC0wLjIyNCAgIGMtNC41MDQtMC4wMDgtOC4wMjQsMy41MjgtOC4wNDgsNy45NDRjLTAuMDI0LDQuNDI0LDMuNTI4LDguOCw3Ljk1Miw4LjgzMkwxNzQuNDI0LDE3NmMwLjAxNiwwLDAuMDI0LDAsMC4wNCwwICAgYzAuMDE2LDAsMC4wMjQsMCwwLjA0LDBsOS40OTYtMS40ODhWMTEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzIsMjMyaC00LjY4OGwyLjM0NC0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDBMMjU2LDIyMC42ODggICBWMjE2YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djQuNjg4bC0yLjM0NC0yLjM0NGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDIuMzQ0LDIuMzQ0ICAgSDIyNGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQuNjg4bC0yLjM0NCwyLjM0NGMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDIuMzQ0LTIuMzQ0VjI2NGMwLDQuNDI0LDMuNTg0LDgsOCw4czgtMy41NzYsOC04di00LjY4OGwyLjM0NCwyLjM0NCAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJMMjY3LjMxMiwyNDhIMjcyICAgYzQuNDE2LDAsOC0zLjU3Niw4LThTMjc2LjQxNiwyMzIsMjcyLDIzMnoiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
 		    	                       	console.log("눈");
 		    	                       	break;
 		    	                   	case "4":
 		    	                       	$('.weather-state-text-first').html("소나기");
 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsNDBjLTQuNDE2LDAtOC0zLjU3Ni04LThWOGMwLTQuNDI0LDMuNTg0LTgsOC04YzQuNDE2LDAsOCwzLjU3Niw4LDh2MjQgIEMyNDgsMzYuNDI0LDI0NC40MTYsNDAsMjQwLDQweiIvPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNOCwzMjhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDMTYsMzI0LjQyNCwxMi40MTYsMzI4LDgsMzI4eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik01Niw0MDhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDNjQsNDA0LjQyNCw2MC40MTYsNDA4LDU2LDQwOCAgIHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMTA0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMxMTIsMzA4LjQyNCwxMDguNDE2LDMxMiwxMDQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0xMzYsNDU2Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzE0NCw0NTIuNDI0LDE0MC40MTYsNDU2LDEzNiw0NTZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTE4NCwzNjBjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDMTkyLDM1Ni40MjQsMTg4LjQxNiwzNjAsMTg0LDM2MHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjk2LDQ0MGMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMzMDQsNDM2LjQyNCwzMDAuNDE2LDQ0MCwyOTYsNDQweiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0zNDQsMzYwYy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzM1MiwzNTYuNDI0LDM0OC40MTYsMzYwLDM0NCwzNjB6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTM5Miw0NTZjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDNDAwLDQ1Mi40MjQsMzk2LjQxNiw0NTYsMzkyLDQ1NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDI0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEM0MzIsMzA4LjQyNCw0MjguNDE2LDMxMiw0MjQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik00NzIsNDA4Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzQ4MCw0MDQuNDI0LDQ3Ni40MTYsNDA4LDQ3Miw0MDh6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsMjQwYy00LjQxNiwwLTgsMy41NzYtOCw4djIwMGMwLDguODI0LTcuMTc2LDE2LTE2LDE2cy0xNi03LjE3Ni0xNi0xNnYtMTcuNzA0ICBjOC41ODQtMy40NDgsMTQuNjY0LTExLjgwOCwxNC42NjQtMjEuNjMyYzAtMTIuODg4LTEwLjQ0OC0yMy4zMzYtMjMuMzM2LTIzLjMzNlMxNjgsMzk1Ljc3NiwxNjgsNDA4LjY2NCAgYzAsMTAuMzEyLDYuNzI4LDE4Ljk1MiwxNiwyMi4wNFY0NDhjMCwxNy42NDgsMTQuMzUyLDMyLDMyLDMyczMyLTE0LjM1MiwzMi0zMlYyNDhDMjQ4LDI0My41NzYsMjQ0LjQxNiwyNDAsMjQwLDI0MHoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0yMzkuOTI4LDIyLjU2OEMxODIuNTA0LDIzLjM4NCwxMzYuMTQ0LDEyMi4yNjQsMTM2LjE0NCwyNTZoMjE1LjU2ICBDMzUxLjcwNCwxMjIuMjY0LDMwMS43NzYsMjMuMzg0LDIzOS45MjgsMjIuNTY4eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojNzdCOUM4OyIgZD0iTTIzOS4yLDIyLjI3MmMtMTE4LjQwOCwwLTIxNC40LDk5LjY3Mi0yMTQuNCwyMTguMDhjMCw0LjAxNiwwLjEyOCwxNS42NDgsMC4zNDQsMTUuNjQ4aDExMSAgYzAtMTI4LjgxNiw0Ni4zNi0yMjguMzUyLDEwMy43ODQtMjI5LjE0NGMtMC4yNDgsMC0wLjQ4OC0yLjE4NC0wLjcyOC0yLjE4NGMwLjI0OCwwLDAuNDg4LTEuMDQsMC43MjgtMS4wNCAgYzAuMjI0LDAsMC40NDgtMC41NzYsMC42OC0wLjU3NmMtMC4yMjQsMC0wLjQ0OCw0LjA1Ni0wLjY4LDQuMDY0QzMwMS43NzYsMjcuOTEyLDM1MS43MDQsMTI3LjE4NCwzNTEuNzA0LDI1NmgxMDEuNTUyICBjMC4yMTYsMCwwLjM1Mi0xMS40MjQsMC4zNTItMTUuNDRDNDUzLjYsMTIyLjE0NCwzNTcuNjA4LDIyLjI3MiwyMzkuMiwyMi4yNzJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDM2LjQzMiwxMTIuNzg0YzAsMjkuODI0LTEzLjQsMzUuMjE2LTI5LjkzNiwzNS4yMTZzLTI5LjkzNi01LjM5Mi0yOS45MzYtMzUuMjE2ICBTNDA2LjQ5Niw0MCw0MDYuNDk2LDQwUzQzNi40MzIsODIuOTYsNDM2LjQzMiwxMTIuNzg0eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
 		    	                       	console.log("소나기");
 		    	                       	break;
 		    					  }
 		    				  }else if(category == "SKY"){ // 하늘상태
 		    					  switch(val) {
 		    	                  	case "1":
 		    	                       	$('.weather-state-text-first').html("맑음");
 		    	                       	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODMuNTEyIDQ4My41MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4My41MTIgNDgzLjUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGQ0I2NDE7IiBwb2ludHM9IjQ4My41MTIsMjQxLjc1MiA0MjguOTI4LDI5MS42ODggNDUwLjk0NCwzNjIuMzI4IDM3OC42LDM3Ny45NTIgMzYyLjMyOCw0NTAuMTUyICAgMjkxLjgyNCw0MjcuNjY0IDI0MS43NTIsNDgyLjE0NCAxOTEuNjg4LDQyNy42NjQgMTIxLjE4NCw0NTAuMTUyIDEwNC45MTIsMzc3Ljk1MiAzMi41NiwzNjIuMzI4IDU0LjU4NCwyOTEuNjg4IDAsMjQxLjc1MiAgIDU0LjU4NCwxOTEuODI0IDMyLjU2OCwxMjEuMTg0IDEwNC45MTIsMTA1LjU1MiAxMjEuMTg0LDMzLjM2IDE5MS42ODgsNTUuODQ4IDI0MS43NTIsMS4zNjggMjkxLjgyNCw1NS44NDggMzYyLjMyOCwzMy4zNiAgIDM3OC42LDEwNS41NiA0NTAuOTQ0LDEyMS4xODQgNDI4LjkyOCwxOTEuODI0ICIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGREM1Njc7IiBjeD0iMjQxLjc1MiIgY3k9IjI0NC41MDQiIHI9IjEzOC43MzYiLz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />');
 		    	                       	console.log("맑음");
 		    	                       	break;
 		    	                   	case "3":
 		    	                   		$('.weather-state-text-first').html("구름많음");
 		    	                   		$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                   		console.log("구름많음");
 		    	                       	break;
 		    	                   	case "4":
 		    	                    	$('.weather-state-text-first').html("흐림"); 
 		    	                    	$('#weather-img-first').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                    	console.log("흐림");
 		    	                       	break;
 		    	                   }
 		    				  }else if(category == "T3H"){ // 3시간 기온 ℃
 		    					  $('.temp-first').html(val+"℃"); 
 		    				  
 		    				  }else if(category == "R06"){ // 6시간 강수량 1 mm
 		    					  switch(val) {
 		    					  	case "0":
 		    	                       	$('.rainfall-first').html("0mm");
 		    	                       	break;
 		    	                  	case "1":
 		    	                       	$('.rainfall-first').html("1mm 미만");
 		    	                       	break;
 		    	                   	case "5":
 		    	                   		$('.rainfall-first').html("1~4mm");
 		    	                       	break;
 		    	                   	case "10":
 		    	                    	$('.rainfall-first').html("5~9mm");
 		    	                       	break;
 		    	                   	case "20":
 		    	                    	$('.rainfall-first').html("10~19mm");
 		    	                       	break;
 		    	                   	case "40":
 		    	                    	$('.rainfall-first').html("20~39mm");
 		    	                       	break;
 		    	                   	case "70":
 		    	                    	$('.rainfall-first').html("40~69mm");
 		    	                       	break;
 		    	                   	case "100":
 		    	                    	$('.rainfall-first').html("70mm 이상");
 		    	                       	break;
 		    	                       	
 		    	                   }
 		    				  }else if(category == "WAV"){ // 6시간 신적설 1 cm
 		    					  switch(val) {
 		    					  	case "0":
 		    	                       	$('.snowfall-first').html("0m");
 		    	                       	break;
 		    	                  	case "1":
 		    	                       	$('.snowfall-first').html("1m 미만");
 		    	                       	break;
 		    	                   	case "5":
 		    	                   		$('.snowfall-first').html("1~4m");
 		    	                       	break;
 		    	                   	case "10":
 		    	                    	$('.snowfall-first').html("5~9m"); 
 		    	                       	break;
 		    	                   	case "20":
 		    	                    	$('.snowfall-first').html("10~19m"); 
 		    	                       	break;
 		    	                   	case "100":
 		    	                    	$('.snowfall-first').html("20m 이상"); 
 		    	                       	break;
 		    	                   }
 		    				  }else if(category == "POP"){ //강수확률 %
 		    					  $('.ratio-first').html(val+"%"); 
 		    				  }else if(category == "REH"){ // 습도 %
 		    					  $('.humidity-first').html(val+"%"); 
 		    				  }else if(category == "VEC"){ // 풍향 m/s
 		    					  $('.wind_direction-first').html(val+"m/s"); 
 		    				  }/* else if(category == "WSD"){ // 풍속 1
 		    					  $('.wind_speed-first').html(val+"m/s"); 
 		    				  } */else if(category == "TMN"){ // 아침 최저기온 ℃
 		    					  $('.lowest_temp-first').html(val+"℃"); 
 		    				  }else if(category == "TMX"){ // 낮 최고기온 ℃
 		    					  $('.highest_temp-first').html(val+"℃"); 
 		    				  }else if(category == "VVV"){ // 남북바람성분(VVV) : 북(+표기), 남(-표기)
 		    					  if(val < 0){
 		    						  $('.wind_speed-first').html("남"+val.split('-')[1]+"m/s"); 
 		    					  }else if(val > 0){
 		    						  $('.wind_speed-first').html("북"+val+"m/s");
 		    					  }	 
 		    				  }else if(category == "UUU"){ // 동서바람성분(UUU) : 동(+표기), 서(-표기)
 		    					  if(val < 0){
 		    						  $('.wind_speed-first').append("서"+val.split('-')[1]+"m/s");
 		    					  }else if(val > 0){
 		    						  $('.wind_speed-first').append("동"+val+"m/s");
 		    					  }	    				  
 		    				  }
 			    		  }
 		    		  	}
 		    	  	});
 		       	});
 		    		
 		        } //success func 종료
 		    });
 		//두번째지역 ajax
 		$.ajax({
 			
 		    url: "weather?x=54&y=100",
 		    dataType : 'json',
 		    success: function(data) {
 		       
 		      $.each(data.response.body.items.item, function(key,value){
 		    	  /* console.log("key : " + key); */
 		    	  $.each(value,function(key2,value2){
 		    		  /* console.log("key2: "+key2+", value2 : "+value2); */
 		    		  if(value2 != null){
 		    			  if(key2 == "category"){
 		    				  var category = value["category"];
 		    				  var val = value["fcstValue"];
 		    				  console.log("category: "+category+", val : "+val);
 		    				  if(category == "PTY"){ // 강수형태
 		    					  switch(val) {
 		    	                  	case "1":
 		    	                    	$('.weather-state-text-second').html("비");
 		    	                    	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik00MjYuMjA4LDE2OC4wMzZjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LDEuMjQtMTMuNjI0LDEuMjU2LTE4LjQwOCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04Mi40MjQtNzAuMDMyLTkxLjZjLTIzLjc1Mi01LjIzMi00Ni40MjQtMi42LTY1LjE4NCw3LjUyOEMyMjYuNzEyLDMxLjQ5MiwxODguNzkyLDcuOSwxNDUuMzI4LDUuMjQ0ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjUyOC0xNy4wNTYtMS41MjhDNTcuNDMyLDMuNzA4LDAsNjIuODIsMCwxMzUuODc2YzAsMzguMDcyLDE1LjY4OCw3Mi4yMzIsNDAuNjQ4LDk2LjM2OCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMjcyLDg5LjAwOCw0Mi45MDRjMCwwLDI5NS40MzIsMS40NDgsMjk2LjU1MiwxLjQ0OGMyOS43MTIsMCw1My43OTItMjIuMjg4LDUzLjc5Mi01NC4yOCAgUzQ1NS45MTIsMTY4LjAzNiw0MjYuMjA4LDE2OC4wMzZ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzkyLjQ4LDI4OC4wMzZjLTAuOTkyLDAtMzcuNjcyLDAtMzcuNjcyLDBjMC42NTYtOCwxLjA5Ni03Ljk3NiwxLjEwNC0xMi4yICBjMC4xMTItMzcuNjk2LTI1LjA0OC03MC43NzYtNjEuODU2LTc4Ljg4OGMtMjAuOTg0LTQuNjI0LTQxLjAwOC0xLjI4LTU3LjU4NCw3LjY2NGMtMjAuMjE2LTMwLjA4OC01My43Mi01MC40MjQtOTIuMTA0LTUyLjc2OCAgYy00Ljk0NC0wLjY4LTkuOTQ0LTEuMDk2LTE1LjA2NC0xLjA5NkM2Ni43MjgsMTUwLjc0LDE2LDIwMy4wODQsMTYsMjY3LjYyYzAsMzMuNjMyLDEzLjg1Niw2My44NjQsMzUuOTA0LDg1LjE4NCAgYzE5LjQ5NiwyMS42MzIsNDYuNTY4LDM1LjYwOCw3OC42MjQsMzcuOTM2YzAsMCwyNjAuOTY4LDEuMjk2LDI2MS45NiwxLjI5NmMyNi4yNCwwLDQ3LjUyLTIzLjczNiw0Ny41Mi01MiAgQzQ0MCwzMTEuNzcyLDQxOC43MjgsMjg4LjAzNiwzOTIuNDgsMjg4LjAzNnoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8wIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTEyOS45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8xIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE3Ny45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8yIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTMzLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjEwNC01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzMiIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNODEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yMjUuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNSIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzMuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNiIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMjEuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfNyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zNjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjxwYXRoIGlkPSJTVkdDbGVhbmVySWRfOCIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MTcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMi0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMF8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xMjkuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTM1LjQ0OCw0NzQuODUyLDEzMi43Niw0NzYuMjg0LDEyOS45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMV8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xNzcuOTkyLDQ3Ni4yODRjLTEuMzYsMC0yLjczNi0wLjM0NC0zLjk5Mi0xLjA3MiAgIGMtMy44MzItMi4yMDgtNS4xNDQtNy4xMDQtMi45MjgtMTAuOTI4bDI4LTQ4LjQ5NmMyLjIwOC0zLjgzMiw3LjExMi01LjE0NCwxMC45MjgtMi45MjhjMy44MzIsMi4yMDgsNS4xNDQsNy4xMDQsMi45MjgsMTAuOTI4ICAgbC0yOCw0OC40OTZDMTgzLjQ0OCw0NzQuODUyLDE4MC43Niw0NzYuMjg0LDE3Ny45OTIsNDc2LjI4NHoiLz4KPC9nPgo8Zz4KCTxwYXRoIGlkPSJTVkdDbGVhbmVySWRfMl8xXyIgc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0zMy45OTIsNDc2LjI4NGMtMS4zNiwwLTIuNzM2LTAuMzQ0LTMuOTkyLTEuMDcyICAgYy0zLjgzMi0yLjIwOC01LjE0NC03LjEwNC0yLjkyOC0xMC45MjhsMjgtNDguNDk2YzIuMjA4LTMuODMyLDcuMTA0LTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkMzOS40NDgsNDc0Ljg1MiwzNi43Niw0NzYuMjg0LDMzLjk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgoJPHBhdGggaWQ9IlNWR0NsZWFuZXJJZF8zXzFfIiBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTgxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2Qzg3LjQ0OCw0NzQuODUyLDg0Ljc2LDQ3Ni4yODQsODEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzRfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjI1Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzIzMS40NDgsNDc0Ljg1MiwyMjguNzYsNDc2LjI4NCwyMjUuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzVfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMjczLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzI3OS40NDgsNDc0Ljg1MiwyNzYuNzYsNDc2LjI4NCwyNzMuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzZfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzIxLjk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMTItNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzMyNy40NDgsNDc0Ljg1MiwzMjQuNzYsNDc2LjI4NCwzMjEuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzdfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNMzY5Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yMDgtMy44MzIsNy4xMDQtNS4xNDQsMTAuOTI4LTIuOTI4YzMuODMyLDIuMjA4LDUuMTQ0LDcuMTA0LDIuOTI4LDEwLjkyOCAgIGwtMjgsNDguNDk2QzM3NS40NDgsNDc0Ljg1MiwzNzIuNzYsNDc2LjI4NCwzNjkuOTkyLDQ3Ni4yODR6Ii8+CjwvZz4KPGc+Cgk8cGF0aCBpZD0iU1ZHQ2xlYW5lcklkXzhfMV8iIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDE3Ljk5Miw0NzYuMjg0Yy0xLjM2LDAtMi43MzYtMC4zNDQtMy45OTItMS4wNzIgICBjLTMuODMyLTIuMjA4LTUuMTQ0LTcuMTA0LTIuOTI4LTEwLjkyOGwyOC00OC40OTZjMi4yLTMuODMyLDcuMTEyLTUuMTQ0LDEwLjkyOC0yLjkyOGMzLjgzMiwyLjIwOCw1LjE0NCw3LjEwNCwyLjkyOCwxMC45MjggICBsLTI4LDQ4LjQ5NkM0MjMuNDQ4LDQ3NC44NTIsNDIwLjc2LDQ3Ni4yODQsNDE3Ljk5Miw0NzYuMjg0eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                    	console.log("비");
 		    	                       	break;
 		    	                   	case "2":
 		    	                       	$('.weather-state-text-second').html("비/눈");
 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjYuMjA4LDE1OC45NjRjLTEuMTIsMC00Mi42NDgsMC00Mi42NDgsMGMwLjc0NC04LjE2LDEuMjQtOS45NjgsMS4yNTYtMTQuNzQ0ICBjMC4xMjgtNDIuNjcyLTI4LjM2LTgwLjU5Mi03MC4wMzItODkuNzc2Yy0yMy43NTItNS4yMzItNDYuNDI0LTEuNjgtNjUuMTg0LDguNDRjLTIyLjg4OC0zNC4wNjQtNjAuODA4LTU3LjItMTA0LjI3Mi01OS44NTYgIGMtNS41OTItMC43NjgtMTEuMjU2LTEuMzA0LTE3LjA1Ni0xLjMwNEM1Ny40MzIsMS43MjQsMCw2MC45NDgsMCwxMzQuMDEyYzAsMzguMDcyLDE1LjY4OCw3Mi4yODgsNDAuNjQ4LDk2LjQyNCAgYzIyLjA3MiwyNC40ODgsNTIuNzIsNDAuMzA0LDg5LjAwOCw0Mi45MzZjMCwwLDI5NS40MzIsMS40NjQsMjk2LjU1MiwxLjQ2NGMyOS43MTIsMCw1My43OTItMjUuOTM2LDUzLjc5Mi01Ny45MjggIEM0ODAsMTg0LjksNDU1LjkxMiwxNTguOTY0LDQyNi4yMDgsMTU4Ljk2NHoiLz4KPGc+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiNCRURERTU7IiBjeD0iNjMuMDY0IiBjeT0iMzI1LjM0IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSI0MzIuOTYiIGN5PSIzMzUuMjM2IiByPSIyNC45MzYiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6I0JFRERFNTsiIGN4PSIyMDcuMDY0IiBjeT0iNDUzLjM0IiByPSIyNC45MzYiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjcyLDMzNC4yNzZoLTEyLjY4OGw4Ljk3Ni04Ljk3NmMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBMMjQ4LDMyMi45NjR2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsOC45NzYsOC45NzZIMjA4Yy00LjQxNiwwLTgsMy41ODQtOCw4czMuNTg0LDgsOCw4aDEyLjY4OGwtOC45NzYsOC45NzZjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgYzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGw4Ljk3Ni04Ljk3NnYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOGM0LjQxNiwwLDgtMy41ODQsOC04di0xMi42ODggICBsOC45NzYsOC45NzZjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEybC04Ljk3Ni04Ljk3NkgyNzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFMyNzYuNDE2LDMzNC4yNzYsMjcyLDMzNC4yNzZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTQxNiw0MjIuMjc2aC0xMi42ODhsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwICAgTDM5Miw0MTAuOTY0di0xMi42ODhjMC00LjQxNi0zLjU4NC04LTgtOHMtOCwzLjU4NC04LDh2MTIuNjg4bC04Ljk3Ni04Ljk3NmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDguOTc2LDguOTc2SDM1MmMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRsOC45NzYtOC45NzZ2MTIuNjg4YzAsNC40MTYsMy41ODQsOCw4LDhzOC0zLjU4NCw4LTh2LTEyLjY4OCAgIGw4Ljk3Niw4Ljk3NmMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJsLTguOTc2LTguOTc2SDQxNiAgIGM0LjQxNiwwLDgtMy41ODQsOC04UzQyMC40MTYsNDIyLjI3Niw0MTYsNDIyLjI3NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNzIsNDMwLjI3Nkg1OS4zMTJsOC45NzYtOC45NzZjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQ4LDQxOC45NjQgICB2LTEyLjY4OGMwLTQuNDE2LTMuNTg0LTgtOC04cy04LDMuNTg0LTgsOHYxMi42ODhsLTguOTc2LTguOTc2Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMHMtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBsOC45NzYsOC45NzZIOGMtNC40MTYsMC04LDMuNTg0LTgsOHMzLjU4NCw4LDgsOGgxMi42ODhsLTguOTc2LDguOTc2Yy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMiAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRMMzIsNDU3LjU4OHYxMi42ODhjMCw0LjQxNiwzLjU4NCw4LDgsOHM4LTMuNTg0LDgtOHYtMTIuNjg4ICAgbDguOTc2LDguOTc2YzEuNTYsMS41NiwzLjYwOCwyLjM0NCw1LjY1NiwyLjM0NHM0LjA5Ni0wLjc4NCw1LjY1Ni0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMmwtOC45NzYtOC45NzZINzIgICBjNC40MTYsMCw4LTMuNTg0LDgtOFM3Ni40MTYsNDMwLjI3Niw3Miw0MzAuMjc2eiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                       	console.log("비/눈");
 		    	                       	break;
 		    	                   	case "3":
 		    	                       	$('.weather-state-text-second').html("눈");
 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBvbHlnb24gc3R5bGU9ImZpbGw6I0U5RjRGNjsiIHBvaW50cz0iMjQ3LjA1NiwxMjkgMjY4LjYyNCwxODkuNjY0IDMyNi43NzYsMTYyLjAyNCAyOTkuMTM2LDIyMC4xNzYgMzU5LjgsMjQxLjc1MiAyOTkuMTM2LDI2My4zMiAgIDMyNi43NzYsMzIxLjQ4IDI2OC42MjQsMjkzLjgzMiAyNDcuMDU2LDM1NC40OTYgMjI1LjQ4LDI5My44MzIgMTY3LjMyOCwzMjEuNDggMTk0Ljk2OCwyNjMuMzIgMTM0LjMwNCwyNDEuNzUyIDE5NC45NjgsMjIwLjE3NiAgIDE2Ny4zMjgsMTYyLjAyNCAyMjUuNDgsMTg5LjY2NCAiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI0Ny4wNDgsMzYyLjQ5NmMtMy4zODQsMC02LjQtMi4xMzYtNy41MzYtNS4zMmwtMTguNjA4LTUyLjMxMmwtNTAuMTUyLDIzLjgzMiAgIGMtMy4wNzIsMS40NTYtNi42OTYsMC44MjQtOS4wODgtMS41NjhzLTMuMDI0LTYuMDMyLTEuNTY4LTkuMDk2bDIzLjg0LTUwLjE1MmwtNTIuMzItMTguNmMtMy4xOTItMS4xMzYtNS4zMi00LjE2LTUuMzItNy41MzYgICBzMi4xMjgtNi40MDgsNS4zMi03LjUzNmw1Mi4zMi0xOC42bC0yMy44NC01MC4xNTJjLTEuNDU2LTMuMDY0LTAuODI0LTYuNzA0LDEuNTY4LTkuMDk2YzIuMzkyLTIuMzg0LDYuMDI0LTMuMDMyLDkuMDg4LTEuNTY4ICAgbDUwLjE1MiwyMy44MzJsMTguNjA4LTUyLjMxMmMxLjEzNi0zLjE4NCw0LjE1Mi01LjMyLDcuNTM2LTUuMzJzNi40LDIuMTM2LDcuNTM2LDUuMzJsMTguNjA4LDUyLjMxMmw1MC4xNTItMjMuODMyICAgYzMuMDY0LTEuNDcyLDYuNjk2LTAuODMyLDkuMDg4LDEuNTY4YzIuMzkyLDIuMzkyLDMuMDI0LDYuMDMyLDEuNTY4LDkuMDk2bC0yMy44NCw1MC4xNTJsNTIuMzIsMTguNiAgIGMzLjE5MiwxLjEzNiw1LjMyLDQuMTYsNS4zMiw3LjUzNnMtMi4xMjgsNi40MDgtNS4zMiw3LjUzNmwtNTIuMzIsMTguNkwzMzQsMzE4LjAzMmMxLjQ1NiwzLjA2NCwwLjgyNCw2LjcwNC0xLjU2OCw5LjA5NiAgIGMtMi4zOTIsMi4zODQtNi4wMjQsMy4wMzItOS4wODgsMS41NjhsLTUwLjE1Mi0yMy44MzJsLTE4LjYwOCw1Mi4zMTJDMjUzLjQ1NiwzNjAuMzY4LDI1MC40NCwzNjIuNDk2LDI0Ny4wNDgsMzYyLjQ5NnogICAgTTIyNS40OCwyODUuODMyYzEuMDQsMCwyLjA4LDAuMiwzLjA2NCwwLjYwOGMyLjA4OCwwLjg2NCwzLjcxMiwyLjU3Niw0LjQ4LDQuNzEybDE0LjAzMiwzOS40NzJsMTQuMDMyLTM5LjQ3MiAgIGMwLjc2LTIuMTM2LDIuMzg0LTMuODQsNC40OC00LjcxMmMyLjA4OC0wLjg2NCw0LjQ1Ni0wLjgwOCw2LjQ5NiwwLjE2OGwzNy44MzIsMTcuOTg0bC0xNy45ODQtMzcuODMyICAgYy0wLjk2OC0yLjA0OC0xLjAzMi00LjQwOC0wLjE2OC02LjQ5NnMyLjU3Ni0zLjcyLDQuNzEyLTQuNDhsMzkuNDY0LTE0LjAzMmwtMzkuNDY0LTE0LjAzMmMtMi4xMzYtMC43Ni0zLjg0LTIuMzg0LTQuNzEyLTQuNDggICBzLTAuODA4LTQuNDU2LDAuMTY4LTYuNDk2bDE3Ljk4NC0zNy44MzJsLTM3LjgzMiwxNy45ODRjLTIuMDQ4LDAuOTYtNC40MDgsMS4wMzItNi40OTYsMC4xNjhzLTMuNzEyLTIuNTc2LTQuNDgtNC43MTIgICBsLTE0LjAzMi0zOS40NzJsLTE0LjAzMiwzOS40NzJjLTAuNzYsMi4xMzYtMi4zODQsMy44NC00LjQ4LDQuNzEycy00LjQ1NiwwLjgwOC02LjQ5Ni0wLjE2OGwtMzcuODMyLTE3Ljk4NGwxNy45OTIsMzcuODMyICAgYzAuOTY4LDIuMDQ4LDEuMDMyLDQuNDA4LDAuMTY4LDYuNDk2cy0yLjU3NiwzLjcyLTQuNzEyLDQuNDhsLTM5LjQ3MiwxNC4wMzJsMzkuNDcyLDE0LjAzMmMyLjEzNiwwLjc2LDMuODQsMi4zODQsNC43MTIsNC40OCAgIHMwLjgwOCw0LjQ1Ni0wLjE2OCw2LjQ5NmwtMTcuOTkyLDM3LjgzMmwzNy44MzItMTcuOTg0QzIyMy4xMjgsMjg2LjA5NiwyMjQuMzA0LDI4NS44MzIsMjI1LjQ4LDI4NS44MzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI4MC4xNiw4OS44NzJMMjU2LDExNS43MlY3NS4xNTJMMjkxLjg0LDM2LjhjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgYy0zLjIyNC0zLjAyNC04LjI5Ni0yLjg0OC0xMS4zMDQsMC4zODRMMjU2LDUxLjcyVjhjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDh2NDQuNjg4TDIxMi45OTIsMjUuNjggICBjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMkwyNDAsNzUuMzEydjQxLjM3NkwyMTIuOTkyLDg5LjY4Yy0zLjEyOC0zLjEyOC04LjE4NC0zLjEyOC0xMS4zMTIsMCAgIHMtMy4xMjgsOC4xODQsMCwxMS4zMTJsNDAuNjY0LDQwLjY2NGwwLjAwOCwwLjAwOGw1Ljg0OCw1Ljg0OGw0My42NC00Ni43MTJjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0ICAgQzI4OC4yMzIsODYuNDcyLDI4My4xNjgsODYuNjQ4LDI4MC4xNiw4OS44NzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTI1Niw0MDQuODQ4VjM2NC4yOGwyNC4xNiwyNS44NDhjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2ICAgYzMuMjMyLTMuMDE2LDMuNC04LjA4LDAuMzg0LTExLjMwNEwyNDguMiwzMzIuNDg4bC01Ljg0OCw1Ljg0OGwtMC4wMDgsMC4wMDhsLTQwLjY2NCw0MC42NjRjLTMuMTI4LDMuMTI4LTMuMTI4LDguMTg0LDAsMTEuMzEyICAgczguMTg0LDMuMTI4LDExLjMxMiwwTDI0MCwzNjMuMzEydjQxLjM3NmwtMzguMzI4LDM4LjMyYy0zLjEyOCwzLjEyOC0zLjEyOCw4LjE4NCwwLDExLjMxMnM4LjE4NCwzLjEyOCwxMS4zMTIsMEwyNDAsNDI3LjMxMlY0NzIgICBjMCw0LjQyNCwzLjU4NCw4LDgsOHM4LTMuNTc2LDgtOHYtNDMuNzJsMjQuMTYsMjUuODQ4YzEuNTc2LDEuNjg4LDMuNzA0LDIuNTM2LDUuODQsMi41MzZjMS45NiwwLDMuOTItMC43MTIsNS40NjQtMi4xNiAgIGMzLjIzMi0zLjAxNiwzLjQtOC4wOCwwLjM4NC0xMS4zMDRMMjU2LDQwNC44NDh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQ3MiwyMzJoLTQ0LjY4OGwyNS42NzItMjUuNjhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJzLTguMTg0LTMuMTI4LTExLjMxMiwwTDQwNC42ODgsMjMyICAgaC00MS4zNzZsMjUuNjcyLTI1LjY4YzMuMTI4LTMuMTI4LDMuMTI4LTguMTg0LDAtMTEuMzEycy04LjE4NC0zLjEyOC0xMS4zMTIsMGwtMzkuMzIsMzkuMzJjLTAuMDA4LDAuMDA4LTAuMDE2LDAuMDE2LTAuMDI0LDAuMDI0ICAgbC03LjE3Niw3LjE3Nmw0Ni43MTIsNDMuNjQ4YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNmMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzYgICBjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDM2MS41MTIsMjQ4aDQwLjU2OGwzOS43OTIsMzcuMTc2YzEuNTQ0LDEuNDQ4LDMuNTA0LDIuMTYsNS40NjQsMi4xNiAgIGMyLjEzNiwwLDQuMjcyLTAuODQ4LDUuODQtMi41MzZjMy4wMTYtMy4yMjQsMi44NDgtOC4yODgtMC4zODQtMTEuMzA0TDQyNS41MTIsMjQ4SDQ3MmM0LjQxNiwwLDgtMy41NzYsOC04UzQ3Ni40MTYsMjMyLDQ3MiwyMzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE0My44NCwyMzkuMTkyYy0wLjM5Mi0zLjc0NC0zLjI4OC02LjYzMi03LjAzMi03LjAzMmwtMzcuMTUyLTM3LjE1MiAgIGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDI1LjY4LDI1LjY4SDcyLjY0OGwtMzYuOTkyLTM2Ljk5MmMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDAgICBzLTMuMTI4LDguMTg0LDAsMTEuMzEyTDUwLjAyNCwyMzJIOGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQzLjgxNmwtMjcuMjgsMjUuNDk2ICAgYy0zLjIzMiwzLjAxNi0zLjQsOC4wOC0wLjM4NCwxMS4zMDRjMS41NzYsMS42ODgsMy43MDQsMi41MzYsNS44NCwyLjUzNmMxLjk2LDAsMy45Mi0wLjcxMiw1LjQ2NC0yLjE2TDc1LjI1NiwyNDhoNDAuNTY4ICAgbC0yNy4yOCwyNS40OTZjLTMuMjMyLDMuMDE2LTMuNCw4LjA4LTAuMzg0LDExLjMwNGMxLjU3NiwxLjY4OCwzLjcwNCwyLjUzNiw1Ljg0LDIuNTM2YzEuOTYsMCwzLjkyLTAuNzEyLDUuNDY0LTIuMTYgICBsNDYuNzEyLTQzLjY0OEwxNDMuODQsMjM5LjE5MnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDIzLjI0LDExMi40MjRsLTM4LjE4NCwxLjg0bDMyLjY0OC0zMi42NDhjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTIgICBzLTguMTg0LTMuMTI4LTExLjMxMiwwTDM3NiwxMDAuNjg4VjY0YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djUyLjY4OGwtMzIsMzJWMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4ICAgdjY0LjUyOGw2My44MTYtMS40ODhjNC40MTYtMC4xMDQsNy45MTItMy43NjgsNy44MDgtOC4xODRjLTAuMTA0LTQuNDE2LTMuNzY4LTguMDI0LTguMTg0LTcuODE2bC0zNi4wMTYsMC44NGwyOC43OTItMjguNzkyICAgbDU1Ljc5Mi0yLjY4OGM0LjQwOC0wLjIwOCw3LjgxNi0zLjk2LDcuNjA4LTguMzc2QzQzMS40LDExNS42MTYsNDI3LjU2LDExMi4xNzYsNDIzLjI0LDExMi40MjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE4NCwzMTMuNDg4TDE4Mi41MTIsMzA0SDEyMGMtNC40MTYsMC04LDMuNTc2LTgsOHMzLjU4NCw4LDgsOGgzNi42ODhsLTMyLDMySDcyICAgYy00LjQxNiwwLTgsMy41NzYtOCw4czMuNTg0LDgsOCw4aDM2LjY4OGwtMzAuMzkyLDMwLjM5MmMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTJjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0ICAgczQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDMxLjAwOC0zMS4wMDhsLTEuMTQ0LDM2Ljg3MmMtMC4xMzYsNC40MDgsMy4zMzYsOC40MzIsNy43NTIsOC40MzJjMC4wODgsMCwwLjE2OCwwLDAuMjU2LDAgICBjNC4zMDQsMCw3Ljg1Ni0zLjYwOCw3Ljk5Mi03LjkzNmwxLjY3Mi01My44bDI5LjE4NC0yOS4yMzJsLTAuMjI0LDM0Ljc0NGMtMC4wMzIsNC40MjQsMy41MjgsOC4yMjQsNy45NDQsOC4yMjQgICBjMC4wMTYsMCwwLjAzMiwwLDAuMDQ4LDBjNC4zOTIsMCw4Ljc0NC0zLjczNiw4Ljc3Ni04LjEzNkwxODQsMzEzLjU5MkMxODQsMzEzLjU2LDE4NCwzMTMuNTIsMTg0LDMxMy40ODh6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTQyNCwzNTJoLTUyLjY4OGwtMzItMzJIMzc2YzQuNDE2LDAsOC0zLjU3Niw4LThzLTMuNTg0LTgtOC04aC02NC41MzZsMS41MDQsNjQgICBjMC4xMDQsNC4zNTIsMy42NjQsOCw3Ljk5Miw4YzAuMDY0LDAsMC4xMjgsMCwwLjE5MiwwYzQuNDE2LDAsNy45MTItMy45Niw3LjgwOC04LjM3NmwtMC44NC0zNi4xMDRsMjguOCwyOC43NTJsMi42OCw1NS45NTIgICBjMC4yLDQuMjcyLDMuNzM2LDcuNzc2LDcuOTc2LDcuNzc2YzAuMTM2LDAsMC4yNjQsMCwwLjM5MiwwYzQuNDE2LDAsNy44MjQtNC4xNTIsNy42MDgtOC41NjhsLTEuODQtMzguMjg4bDMyLjY0OCwzMi42ICAgYzEuNTYsMS41NiwzLjYwOCwyLjMyLDUuNjU2LDIuMzJzNC4wOTYtMC43OTIsNS42NTYtMi4zNTJjMy4xMjgtMy4xMjgsMy4xMjgtOC4xOTIsMC0xMS4zMkwzODcuMzEyLDM2OEg0MjRjNC40MTYsMCw4LTMuNTc2LDgtOCAgIFM0MjguNDE2LDM1Miw0MjQsMzUyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0xODQsMTEyYzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djM2LjY4OGwtMzItMzJWNjRjMC00LjQyNC0zLjU4NC04LTgtOHMtOCwzLjU3Ni04LDggICB2MzYuNjg4TDg5LjYwOCw3MC4yOTZjLTMuMTI4LTMuMTI4LTguMTg0LTMuMTI4LTExLjMxMiwwcy0zLjEyOCw4LjE4NCwwLDExLjMxMmwzMS4wMDgsMzEuMDA4bC0zNi42OC0xLjE0NCAgIGMtNC43NzYtMC4wNjQtOC4xMTIsMy4zMzYtOC4yNDgsNy43NTJzMy4zMzYsOC4xMTIsNy43NDQsOC4yNDhsNTMuNzA0LDEuNjY0bDI5LjE4NCwyOS4xODRsLTM0LjU4NC0wLjIyNCAgIGMtNC41MDQtMC4wMDgtOC4wMjQsMy41MjgtOC4wNDgsNy45NDRjLTAuMDI0LDQuNDI0LDMuNTI4LDguOCw3Ljk1Miw4LjgzMkwxNzQuNDI0LDE3NmMwLjAxNiwwLDAuMDI0LDAsMC4wNCwwICAgYzAuMDE2LDAsMC4wMjQsMCwwLjA0LDBsOS40OTYtMS40ODhWMTEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNzIsMjMyaC00LjY4OGwyLjM0NC0yLjM0NGMzLjEyOC0zLjEyOCwzLjEyOC04LjE4NCwwLTExLjMxMnMtOC4xODQtMy4xMjgtMTEuMzEyLDBMMjU2LDIyMC42ODggICBWMjE2YzAtNC40MjQtMy41ODQtOC04LThzLTgsMy41NzYtOCw4djQuNjg4bC0yLjM0NC0yLjM0NGMtMy4xMjgtMy4xMjgtOC4xODQtMy4xMjgtMTEuMzEyLDBzLTMuMTI4LDguMTg0LDAsMTEuMzEybDIuMzQ0LDIuMzQ0ICAgSDIyNGMtNC40MTYsMC04LDMuNTc2LTgsOGMwLDQuNDI0LDMuNTg0LDgsOCw4aDQuNjg4bC0yLjM0NCwyLjM0NGMtMy4xMjgsMy4xMjgtMy4xMjgsOC4xODQsMCwxMS4zMTIgICBjMS41NiwxLjU2LDMuNjA4LDIuMzQ0LDUuNjU2LDIuMzQ0czQuMDk2LTAuNzg0LDUuNjU2LTIuMzQ0bDIuMzQ0LTIuMzQ0VjI2NGMwLDQuNDI0LDMuNTg0LDgsOCw4czgtMy41NzYsOC04di00LjY4OGwyLjM0NCwyLjM0NCAgIGMxLjU2LDEuNTYsMy42MDgsMi4zNDQsNS42NTYsMi4zNDRzNC4wOTYtMC43ODQsNS42NTYtMi4zNDRjMy4xMjgtMy4xMjgsMy4xMjgtOC4xODQsMC0xMS4zMTJMMjY3LjMxMiwyNDhIMjcyICAgYzQuNDE2LDAsOC0zLjU3Niw4LThTMjc2LjQxNiwyMzIsMjcyLDIzMnoiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
 		    	                       	console.log("눈");
 		    	                       	break;
 		    	                   	case "4":
 		    	                       	$('.weather-state-text-second').html("소나기");
 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAgNDgwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0ODAgNDgwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsNDBjLTQuNDE2LDAtOC0zLjU3Ni04LThWOGMwLTQuNDI0LDMuNTg0LTgsOC04YzQuNDE2LDAsOCwzLjU3Niw4LDh2MjQgIEMyNDgsMzYuNDI0LDI0NC40MTYsNDAsMjQwLDQweiIvPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNOCwzMjhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDMTYsMzI0LjQyNCwxMi40MTYsMzI4LDgsMzI4eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik01Niw0MDhjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjRDNjQsNDA0LjQyNCw2MC40MTYsNDA4LDU2LDQwOCAgIHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMTA0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMxMTIsMzA4LjQyNCwxMDguNDE2LDMxMiwxMDQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0xMzYsNDU2Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzE0NCw0NTIuNDI0LDE0MC40MTYsNDU2LDEzNiw0NTZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTE4NCwzNjBjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDMTkyLDM1Ni40MjQsMTg4LjQxNiwzNjAsMTg0LDM2MHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNMjk2LDQ0MGMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEMzMDQsNDM2LjQyNCwzMDAuNDE2LDQ0MCwyOTYsNDQweiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0zNDQsMzYwYy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzM1MiwzNTYuNDI0LDM0OC40MTYsMzYwLDM0NCwzNjB6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQkVEREU1OyIgZD0iTTM5Miw0NTZjLTQuNDE2LDAtOC0zLjU3Ni04LTh2LTI0YzAtNC40MjQsMy41ODQtOCw4LThzOCwzLjU3Niw4LDh2MjQgICBDNDAwLDQ1Mi40MjQsMzk2LjQxNiw0NTYsMzkyLDQ1NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDI0LDMxMmMtNC40MTYsMC04LTMuNTc2LTgtOHYtMjRjMC00LjQyNCwzLjU4NC04LDgtOHM4LDMuNTc2LDgsOHYyNCAgIEM0MzIsMzA4LjQyNCw0MjguNDE2LDMxMiw0MjQsMzEyeiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik00NzIsNDA4Yy00LjQxNiwwLTgtMy41NzYtOC04di0yNGMwLTQuNDI0LDMuNTg0LTgsOC04czgsMy41NzYsOCw4djI0ICAgQzQ4MCw0MDQuNDI0LDQ3Ni40MTYsNDA4LDQ3Miw0MDh6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6Izc3QjlDODsiIGQ9Ik0yNDAsMjQwYy00LjQxNiwwLTgsMy41NzYtOCw4djIwMGMwLDguODI0LTcuMTc2LDE2LTE2LDE2cy0xNi03LjE3Ni0xNi0xNnYtMTcuNzA0ICBjOC41ODQtMy40NDgsMTQuNjY0LTExLjgwOCwxNC42NjQtMjEuNjMyYzAtMTIuODg4LTEwLjQ0OC0yMy4zMzYtMjMuMzM2LTIzLjMzNlMxNjgsMzk1Ljc3NiwxNjgsNDA4LjY2NCAgYzAsMTAuMzEyLDYuNzI4LDE4Ljk1MiwxNiwyMi4wNFY0NDhjMCwxNy42NDgsMTQuMzUyLDMyLDMyLDMyczMyLTE0LjM1MiwzMi0zMlYyNDhDMjQ4LDI0My41NzYsMjQ0LjQxNiwyNDAsMjQwLDI0MHoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0JFRERFNTsiIGQ9Ik0yMzkuOTI4LDIyLjU2OEMxODIuNTA0LDIzLjM4NCwxMzYuMTQ0LDEyMi4yNjQsMTM2LjE0NCwyNTZoMjE1LjU2ICBDMzUxLjcwNCwxMjIuMjY0LDMwMS43NzYsMjMuMzg0LDIzOS45MjgsMjIuNTY4eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojNzdCOUM4OyIgZD0iTTIzOS4yLDIyLjI3MmMtMTE4LjQwOCwwLTIxNC40LDk5LjY3Mi0yMTQuNCwyMTguMDhjMCw0LjAxNiwwLjEyOCwxNS42NDgsMC4zNDQsMTUuNjQ4aDExMSAgYzAtMTI4LjgxNiw0Ni4zNi0yMjguMzUyLDEwMy43ODQtMjI5LjE0NGMtMC4yNDgsMC0wLjQ4OC0yLjE4NC0wLjcyOC0yLjE4NGMwLjI0OCwwLDAuNDg4LTEuMDQsMC43MjgtMS4wNCAgYzAuMjI0LDAsMC40NDgtMC41NzYsMC42OC0wLjU3NmMtMC4yMjQsMC0wLjQ0OCw0LjA1Ni0wLjY4LDQuMDY0QzMwMS43NzYsMjcuOTEyLDM1MS43MDQsMTI3LjE4NCwzNTEuNzA0LDI1NmgxMDEuNTUyICBjMC4yMTYsMCwwLjM1Mi0xMS40MjQsMC4zNTItMTUuNDRDNDUzLjYsMTIyLjE0NCwzNTcuNjA4LDIyLjI3MiwyMzkuMiwyMi4yNzJ6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNCRURERTU7IiBkPSJNNDM2LjQzMiwxMTIuNzg0YzAsMjkuODI0LTEzLjQsMzUuMjE2LTI5LjkzNiwzNS4yMTZzLTI5LjkzNi01LjM5Mi0yOS45MzYtMzUuMjE2ICBTNDA2LjQ5Niw0MCw0MDYuNDk2LDQwUzQzNi40MzIsODIuOTYsNDM2LjQzMiwxMTIuNzg0eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />');
 		    	                       	console.log("소나기");
 		    	                       	break;
 		    					  }
 		    				  }else if(category == "SKY"){ // 하늘상태
 		    					  switch(val) {
 		    	                  	case "1":
 		    	                       	$('.weather-state-text-second').html("맑음");
 		    	                       	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODMuNTEyIDQ4My41MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4My41MTIgNDgzLjUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGQ0I2NDE7IiBwb2ludHM9IjQ4My41MTIsMjQxLjc1MiA0MjguOTI4LDI5MS42ODggNDUwLjk0NCwzNjIuMzI4IDM3OC42LDM3Ny45NTIgMzYyLjMyOCw0NTAuMTUyICAgMjkxLjgyNCw0MjcuNjY0IDI0MS43NTIsNDgyLjE0NCAxOTEuNjg4LDQyNy42NjQgMTIxLjE4NCw0NTAuMTUyIDEwNC45MTIsMzc3Ljk1MiAzMi41NiwzNjIuMzI4IDU0LjU4NCwyOTEuNjg4IDAsMjQxLjc1MiAgIDU0LjU4NCwxOTEuODI0IDMyLjU2OCwxMjEuMTg0IDEwNC45MTIsMTA1LjU1MiAxMjEuMTg0LDMzLjM2IDE5MS42ODgsNTUuODQ4IDI0MS43NTIsMS4zNjggMjkxLjgyNCw1NS44NDggMzYyLjMyOCwzMy4zNiAgIDM3OC42LDEwNS41NiA0NTAuOTQ0LDEyMS4xODQgNDI4LjkyOCwxOTEuODI0ICIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGREM1Njc7IiBjeD0iMjQxLjc1MiIgY3k9IjI0NC41MDQiIHI9IjEzOC43MzYiLz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />');
 		    	                       	console.log("맑음");
 		    	                       	break;
 		    	                   	case "3":
 		    	                   		$('.weather-state-text-second').html("구름많음");
 		    	                   		$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                   		console.log("구름많음");
 		    	                       	break;
 		    	                   	case "4":
 		    	                    	$('.weather-state-text-second').html("흐림"); 
 		    	                    	$('#weather-img-second').html('<img style="width: 50px;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0ODAuMjQ3IDQ4MC4yNDciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ4MC4yNDcgNDgwLjI0NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM5MkM3RDM7IiBkPSJNNDI2LjIwOCwxNTcuNzU1Yy0xLjEyLDAtNDIuNjQ4LDAtNDIuNjQ4LDBjMC43NDQtOC4xNiwxLjI0LTkuOTY4LDEuMjU2LTE0Ljc0NCAgYzAuMTI4LTQyLjY3Mi0yOC4zNi04MC41OTItNzAuMDMyLTg5Ljc3NmMtMjMuNzUyLTUuMjMyLTQ2LjQyNC0xLjY4LTY1LjE4NCw4LjQ0Yy0yMi44ODgtMzQuMDY0LTYwLjgwOC01Ny4yLTEwNC4yNzItNTkuODU2ICBjLTUuNTkyLTAuNzY4LTExLjI1Ni0xLjMwNC0xNy4wNTYtMS4zMDRDNTcuNDMyLDAuNTE1LDAsNTkuNzM5LDAsMTMyLjgwM2MwLDM4LjA3MiwxNS42ODgsNzIuMjg4LDQwLjY0OCw5Ni40MjQgIGMyMi4wNzIsMjQuNDg4LDUyLjcyLDQwLjMwNCw4OS4wMDgsNDIuOTM2YzAsMCwyOTUuNDMyLDEuNDY0LDI5Ni41NTIsMS40NjRjMjkuNzEyLDAsNTMuNzkyLTI1LjkzNiw1My43OTItNTcuOTI4ICBDNDgwLDE4My42OTEsNDU1LjkxMiwxNTcuNzU1LDQyNi4yMDgsMTU3Ljc1NXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U5RjRGNjsiIGQ9Ik0yNDksNDQxLjA2N2MxMi42OC0yMS45NiwxMC4yMjQtNDguNDk2LTQuMTA0LTY3LjU1MmMtMjMuNjcyLTIuODgtNDcuODgsOC4yNjQtNjAuNTYsMzAuMjI0ICBzLTEwLjIzMiw0OC40OTYsNC4xMDQsNjcuNTUyQzIxMi4xMTIsNDc0LjE3MSwyMzYuMzIsNDYzLjAyNywyNDksNDQxLjA2N3oiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik0yNjQuMjY0LDM1NC42MjdjMi4yMDgtMy44MzIsMC44OTYtOC43Mi0yLjkyOC0xMC45MjhzLTguNzItMC44OTYtMTAuOTI4LDIuOTI4bC0xMC43NiwxOC42MzIgIGMtMjUuNDI0LTAuODcyLTQ5LjM2LDEyLjE2OC02Mi4yNCwzNC40NjRjLTEzLjkyOCwyNC4xMjgtMTIuMTA0LDU0LjEwNCw0LjY0LDc2LjM2OGMxLjMxMiwxLjczNiwzLjI3MiwyLjg2NCw1LjQyNCwzLjEyOCAgYzIuODMyLDAuMzUyLDUuNjU2LDAuNTEyLDguNDQ4LDAuNTEyYzI0LjU2OCwwLDQ3LjUwNC0xMy4wMTYsNjAuMDA4LTM0LjY3MmMxMy4xMjgtMjIuNzM2LDEyLjA4LTUwLjYtMi4wODgtNzIuMzg0TDI2NC4yNjQsMzU0LjYyNyAgeiBNMjQyLjA3Miw0MzcuMDY3Yy0xMC4xMzYsMTcuNTUyLTI5LjE0NCwyNy42NDgtNDkuMjI0LDI2LjU4NGMtMTEuMDA4LTE2Ljc4NC0xMS43Mi0zOC4zNjgtMS41ODQtNTUuOTIgIGM4LjM2OC0xNC40OTYsMjIuODE2LTIzLjgsMzguODk2LTI2LjA0bC0yOC4zMzYsNDkuMDcyYy0yLjIwOCwzLjgzMi0wLjg5Niw4LjcyLDIuOTI4LDEwLjkyOGMxLjI2NCwwLjcyOCwyLjY0LDEuMDcyLDMuOTkyLDEuMDcyICBjMi43NjgsMCw1LjQ1Ni0xLjQ0LDYuOTM2LTRsMjguODgtNTAuMDE2QzI1MS40MDgsNDA0LjEzMSwyNTAuNzI4LDQyMi4wNTksMjQyLjA3Miw0MzcuMDY3eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRTlGNEY2OyIgZD0iTTc0LjQxNiwzODMuMTM5YzI0LjQ4OC02LjU2LDQxLjUyLTI3LjA1Niw0NC44NjQtNTAuNjcyYy0xNC43MDQtMTguNzc2LTM5LjcwNC0yOC4wMTYtNjQuMTkyLTIxLjQ0OCAgYy0yNC40ODgsNi41Ni00MS41MiwyNy4wNTYtNDQuODY0LDUwLjY3MkMyNC45MjgsMzgwLjQ2Nyw0OS45MiwzODkuNjk5LDc0LjQxNiwzODMuMTM5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojOTJDN0QzOyIgZD0iTTE1MS45ODQsMzIzLjAxMWMtMS4xNDQtNC4yNzItNS41MjgtNi44MzItOS44LTUuNjU2bC0yMC44LDUuNTY4ICBjLTE3LjM5Mi0xOC41MzYtNDMuNDg4LTI2LjMxMi02OC4zNjgtMTkuNjRjLTI2LjkwNCw3LjIwOC00Ni44MTYsMjkuNjg4LTUwLjcyLDU3LjI3MmMtMC4zMDQsMi4xNiwwLjI4LDQuMzQ0LDEuNjI0LDYuMDU2ICBjMTMuMzY4LDE3LjA4LDMzLjU3NiwyNi42MjQsNTQuNTY4LDI2LjYyNGM1Ljk4NCwwLDEyLjAyNC0wLjc3NiwxOC0yLjM3NmMyNS4zNjgtNi44LDQ0LjMzNi0yNy4yMzIsNDkuNzEyLTUyLjY2NGwyMC4xMjgtNS4zOTIgIEMxNTAuNTkyLDMzMS42NjcsMTUzLjEyOCwzMjcuMjc1LDE1MS45ODQsMzIzLjAxMXogTTcyLjM0NCwzNzUuNDExYy0xOS41NzYsNS4yNC00MC4yNDgtMS4wMzItNTMuNjA4LTE2LjAwOCAgYzQuMDgtMTkuNjU2LDE4Ljg0LTM1LjQxNiwzOC40MjQtNDAuNjY0YzE2LjE2LTQuMzIsMzMuMDE2LTAuNzA0LDQ1LjkzNiw5LjA4OGwtNTQuNzYsMTQuNjcyYy00LjI3MiwxLjE0NC02LjgsNS41MjgtNS42NTYsOS44ICBjMC45NiwzLjU3Niw0LjE4NCw1LjkyOCw3LjcyLDUuOTI4YzAuNjgsMCwxLjM4NC0wLjA4OCwyLjA3Mi0wLjI3Mmw1NS43OTItMTQuOTQ0QzEwMi4yNCwzNTguNzIzLDg5LjA4LDM3MC45MjMsNzIuMzQ0LDM3NS40MTF6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNFOUY0RjY7IiBkPSJNNDA4LjA2NCw0MjMuMTM5Yy0yNC40ODgtNi41Ni00MS41Mi0yNy4wNTYtNDQuODY0LTUwLjY3MiAgYzE0LjcwNC0xOC43NzYsMzkuNzA0LTI4LjAxNiw2NC4xOTItMjEuNDQ4YzI0LjQ4OCw2LjU2LDQxLjUyLDI3LjA1Niw0NC44NjQsNTAuNjcyICBDNDU3LjU1Miw0MjAuNDY3LDQzMi41Niw0MjkuNjk5LDQwOC4wNjQsNDIzLjEzOXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzkyQzdEMzsiIGQ9Ik00MjkuNDY0LDM0My4yODNjLTI0Ljg3Mi02LjY4LTUwLjk3NiwxLjExMi02OC4zNjgsMTkuNjRsLTIwLjgwOC01LjU3NiAgYy00LjI1Ni0xLjE0NC04LjY1NiwxLjQtOS44LDUuNjU2Yy0xLjE0NCw0LjI2NCwxLjM5Miw4LjY1Niw1LjY1Niw5LjhsMjAuMTM2LDUuMzkyYzUuMzg0LDI1LjQyNCwyNC4zNDQsNDUuODY0LDQ5LjcxMiw1Mi42NjQgIGM1Ljk2OCwxLjYsMTIuMDA4LDIuMzc2LDE3Ljk5MiwyLjM3NmMyMC45ODQsMCw0MS4xOTItOS41NDQsNTQuNTYtMjYuNjI0YzEuMzQ0LTEuNzEyLDEuOTI4LTMuODk2LDEuNjI0LTYuMDU2ICBDNDc2LjI3MiwzNzIuOTcxLDQ1Ni4zNjgsMzUwLjQ5OSw0MjkuNDY0LDM0My4yODN6IE00MTAuMTQ0LDQxNS40MTFjLTE2LjczNi00LjQ4OC0yOS44OTYtMTYuNjg4LTM1LjkyOC0zMi40MDhMNDMwLDM5Ny45NDcgIGMwLjY5NiwwLjE4NCwxLjM5MiwwLjI3MiwyLjA4LDAuMjcyYzMuNTI4LDAsNi43NjgtMi4zNiw3LjcyLTUuOTI4YzEuMTQ0LTQuMjY0LTEuMzkyLTguNjU2LTUuNjU2LTkuOGwtNTQuNzUyLTE0LjY2NCAgYzEyLjkyOC05Ljc5MiwyOS43OTItMTMuNDA4LDQ1LjkyOC05LjA4OGMxOS41NzYsNS4yNDgsMzQuMzQ0LDIxLjAwOCwzOC40MjQsNDAuNjY0ICBDNDUwLjM4NCw0MTQuMzg3LDQyOS43NDQsNDIwLjY1MSw0MTAuMTQ0LDQxNS40MTF6Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />');
 		    	                    	console.log("흐림");
 		    	                       	break;
 		    	                   }
 		    				  }else if(category == "T3H"){ // 3시간 기온 ℃
 		    					  $('.temp-second').html(val+"℃"); 
 		    				  
 		    				  }else if(category == "R06"){ // 6시간 강수량 1 mm
 		    					  switch(val) {
 		    					  	case "0":
 		    	                       	$('.rainfall-second').html("0mm");
 		    	                       	break;
 		    	                  	case "1":
 		    	                       	$('.rainfall-second').html("1mm 미만");
 		    	                       	break;
 		    	                   	case "5":
 		    	                   		$('.rainfall-second').html("1~4mm");
 		    	                       	break;
 		    	                   	case "10":
 		    	                    	$('.rainfall-second').html("5~9mm");
 		    	                       	break;
 		    	                   	case "20":
 		    	                    	$('.rainfall-second').html("10~19mm");
 		    	                       	break;
 		    	                   	case "40":
 		    	                    	$('.rainfall-second').html("20~39mm");
 		    	                       	break;
 		    	                   	case "70":
 		    	                    	$('.rainfall-second').html("40~69mm");
 		    	                       	break;
 		    	                   	case "100":
 		    	                    	$('.rainfall-second').html("70mm 이상");
 		    	                       	break;
 		    	                       	
 		    	                   }
 		    				  }else if(category == "WAV"){ // 6시간 신적설 1 cm
 		    					  switch(val) {
 		    					  	case "0":
 		    	                       	$('.snowfall-second').html("0m");
 		    	                       	break;
 		    	                  	case "1":
 		    	                       	$('.snowfall-second').html("1m 미만");
 		    	                       	break;
 		    	                   	case "5":
 		    	                   		$('.snowfall-second').html("1~4m");
 		    	                       	break;
 		    	                   	case "10":
 		    	                    	$('.snowfall-second').html("5~9m"); 
 		    	                       	break;
 		    	                   	case "20":
 		    	                    	$('.snowfall-second').html("10~19m"); 
 		    	                       	break;
 		    	                   	case "100":
 		    	                    	$('.snowfall-second').html("20m 이상"); 
 		    	                       	break;
 		    	                   }
 		    				  }else if(category == "POP"){ //강수확률 %
 		    					  $('.ratio-second').html(val+"%"); 
 		    				  }else if(category == "REH"){ // 습도 %
 		    					  $('.humidity-second').html(val+"%"); 
 		    				  }else if(category == "VEC"){ // 풍향 m/s
 		    					  $('.wind_direction-second').html(val+"m/s"); 
 		    				  }/* else if(category == "WSD"){ // 풍속 1
 		    					  $('.wind_speed-first').html(val+"m/s"); 
 		    				  } */else if(category == "TMN"){ // 아침 최저기온 ℃
 		    					  $('.lowest_temp-second').html(val+"℃"); 
 		    				  }else if(category == "TMX"){ // 낮 최고기온 ℃
 		    					  $('.highest_temp-second').html(val+"℃"); 
 		    				  }else if(category == "VVV"){ // 남북바람성분(VVV) : 북(+표기), 남(-표기)
 		    					  if(val < 0){
 		    						  $('.wind_speed-second').html("남"+val.split('-')[1]+"m/s"); 
 		    					  }else if(val > 0){
 		    						  $('.wind_speed-second').html("북"+val+"m/s");
 		    					  }	 
 		    				  }else if(category == "UUU"){ // 동서바람성분(UUU) : 동(+표기), 서(-표기)
 		    					  if(val < 0){
 		    						  $('.wind_speed-second').append("서"+val.split('-')[1]+"m/s");
 		    					  }else if(val > 0){
 		    						  $('.wind_speed-second').append("동"+val+"m/s");
 		    					  }	    				  
 		    				  }
 			    		  }
 		    		  	}
 		    	  	});
 		       	});
 		    		
 		        } //success func 종료
 		    });
 		
});
</script>
    <!-- Header End -->