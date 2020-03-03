<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<html lang="ko">
<head>
<style>
*, *::before, *::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.full_btn_gray a {
	height: 50px;
	line-height: 48px;
	text-align: center;
	border-radius: 0.3em;
	background: #f8f8f8;
	border: 1px solid #d5d5d5;
	color: #333333;
	font-size: 18px;
	width: 100%;
	display: block;
}
</style>
<title>Login페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">
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
</head><body>
	
	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>
	<section class="ftco-section contact-section ftco-degree-bg" style="width: 80%; margin-left: 25%; font-family: Jua;">
		<div class="container"style="margin: auto;width: 100%">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-6 mb-4" style="margin-left: 7%;">
					<h2 class="h4">
						<br><strong><img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MTEuOTk5IDUxMS45OTkiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMS45OTkgNTExLjk5OTsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTE2NC4zOTIsMTk3Ljc1NmMtMTEuMzA2LDAtMjAuNTA1LDkuMTk5LTIwLjUwNSwyMC41MDVzOS4xOTksMjAuNTA1LDIwLjUwNSwyMC41MDVzMjAuNTA1LTkuMTk5LDIwLjUwNS0yMC41MDUgICAgUzE3NS42OTgsMTk3Ljc1NiwxNjQuMzkyLDE5Ny43NTZ6IE0xNjQuMzkyLDIyMi45OTNjLTIuNjA5LDAtNC43MzItMi4xMjMtNC43MzItNC43MzJjMC0yLjYwOSwyLjEyMy00LjczMiw0LjczMi00LjczMiAgICBjMi42MDksMCw0LjczMiwyLjEyMyw0LjczMiw0LjczMkMxNjkuMTI0LDIyMC44NywxNjcuMDAxLDIyMi45OTMsMTY0LjM5MiwyMjIuOTkzeiIgZmlsbD0iIzAwMDAwMCIvPgoJPC9nPgo8L2c+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTUwNi45NTcsMC42MDFjLTQuMDYxLTEuNTc0LTguNjMsMC40NDUtMTAuMjAxLDQuNTA4Yy0yLjIzOSw1Ljc4My0xOS44Myw1Mi45MjMtMzguNTExLDEwNS42ODUgICAgYy0zLjg3Ni0wLjg4My03LjkwMi0xLjM2Ni0xMi4wNDItMS4zNjZjLTI5Ljg2LDAtNTQuMTU0LDI0LjI5My01NC4xNTQsNTQuMTU0YzAsMjEuOTM3LDEzLjExOSw0MC44NTYsMzEuOTE3LDQ5LjM1OCAgICBjLTAuNzc1LDIuNTc2LTEuNTA0LDUuMDQzLTIuMTY2LDcuMzQ0Yy0yMC42MzksNzEuNjQ0LTQ0LjYyMiw4MS44OTctNTEuNDgsODMuMzMzYy01LjkxLDEuMjQ1LTExLjE0Mi0wLjgxNy0xNS41MzgtNi4xMDkgICAgYy04LjU5OC0xMC4zNDktMTIuOTY0LTMzLjM1Ny0yLjIzMi01OS40MmMxNy4wODQtNDEuNDkxLDQzLjU3LTExNi4wOTQsMjguOTk5LTE0OS41NTJjLTMuNTIzLTguMDg4LTkuMTQtMTMuNjI4LTE2LjY5OC0xNi40NjIgICAgYy0yMi4yMzctOC4zNC00Ny4yNCw5LjAzNi03NC4zMDgsNTEuNjQzYy0xMy40OTIsMjEuMjM2LTI0LjA0NCw0My4yMzQtMjkuMTQyLDU0LjQ3NWMtMzIuNTc5LTE0LjA5OC03Ny4xNzktMTQuNTY0LTEyMS4zOTYtMC45MjQgICAgYy01Mi4yOTcsMTYuMTI5LTk1LjAxMiw0OS42NjYtMTE3LjE5Myw5Mi4wMTJDLTMuNTMzLDMxOS41NzItNy4yOTMsMzc1LjY0MSwxMi43NTIsNDE5LjI2NCAgICBjMTYuNzk1LDM2LjU1MSw0OS4xMDYsNjIuMDAyLDkwLjk4MSw3MS42NjVjMTAuMzQsMi4zODcsMjAuNzY1LDMuMzY2LDMwLjkyOCwzLjM2NmMzNi4zMzgtMC4wMDIsNjkuMjQxLTEyLjU0MSw4Mi4xOS0xOC4xNzUgICAgYzE4LjY5OCwyMS4yMTEsNDYuNDIsMzMuNDUsODAuNjE0LDM1LjUwMmMzLjYxMywwLjIxNyw3LjEyMywwLjMxMSwxMC41MDQsMC4zMTFjMjIuMDU3LDAsMzguNDEzLTQuMDE2LDM5LjItNC4yMTIgICAgYzYuMDI1LTEuNTA3LDcuOTc5LTkuNDExLDMuMzI2LTEzLjU0NmMtMzIuMTc3LTI4LjYwMi02OS43MTQtNTMuNzk0LTgxLjQ3NS02MS40ODd2LTU0LjU5NmMwLTUuMzc1LTUuNTIxLTkuMjUzLTEwLjU4Mi03LjQxMiAgICBjLTM5LjE4OCwxNC4yNTEtNTAuOTU1LDQ3LjI3NS01NC4zNCw2Mi4yNGwtNTYuNDYtMy4xMzZsOTMuNzQzLTE3OC40MTRjMi4wMjYtMy44NTYsMC41NDMtOC42MjQtMy4zMTMtMTAuNjUgICAgYy0zLjg1Ni0yLjAyNy04LjYyNC0wLjU0My0xMC42NDksMy4zMTNsLTI3LjM4NCw1Mi4xMTZjLTAuMjQ0LDAuMDM5LTAuNDg3LDAuMDg2LTAuNzMxLDAuMTQ5ICAgIGMtNi4xOSwxLjU5NC0xMi42MDUsMi40MDItMTkuMDY0LDIuNDAyYy00Mi4wMzcsMC03Ni4yMzYtMzQuMTk5LTc2LjIzNi03Ni4yMzZjMC0yLjI1OSwwLjA4NS00LjUyNSwwLjI5OC02Ljc3NCAgICBjMC4yMDItMi4xNDUsMC43OC00LjI4NywwLjYxMy02LjQ1NGMxMi4zMTYtNi44NDUsMjUuNjM5LTEyLjU0OSwzOS43MzctMTYuODk3YzM5LjgxNS0xMi4yODIsODEuMDEyLTEyLjEyNCwxMDkuODkxLDAuMDY3ICAgIGwtMTMuOTg3LDI2LjYyMmMtMi4wMjYsMy44NTYtMC41NDMsOC42MjQsMy4zMTMsMTAuNjVjMy44NTUsMi4wMjYsOC42MjIsMC41NDIsMTAuNjQ5LTMuMzEzYzAsMCwzMS4yMjMtNjUuNjgzLDQ5LjMzNi05NC4xOTIgICAgYzIxLjg4LTM0LjQzOCw0MS41NzQtNTAuNTMyLDU1LjQ1Ni00NS4zMzFjMy41MDQsMS4zMTMsNS45NzUsMy44NTMsNy43NzcsNy45OTFjOC44MTUsMjAuMjQzLTIuMDczLDcxLjU1MS0yOS4xMjQsMTM3LjI0OSAgICBjLTExLjUwNSwyNy45NDEtOS42MjEsNTguMjg1LDQuNjg2LDc1LjUwNWM3LjU3Niw5LjExOCwxOS4xMjgsMTMuOTM2LDMwLjkwNCwxMS40NjdjMjQuODQ4LTUuMjAyLDQ3LjM2NS0zOC43MjksNjMuNDA0LTk0LjQwNCAgICBjMC42NjUtMi4zMDgsMS40LTQuNzkyLDIuMTgyLTcuMzkxYzIuMzE0LDAuMzA0LDQuNjY5LDAuNDc2LDcuMDY0LDAuNDc2YzI5Ljg2LDAsNTQuMTU0LTI0LjI5Myw1NC4xNTQtNTQuMTU0ICAgIGMwLTIwLjEzNi0xMS4wNTUtMzcuNzI4LTI3LjQwNy00Ny4wNThjMTguNjg1LTUyLjc5MSwzNi4yODQtOTkuOTU3LDM4LjUxNS0xMDUuNzIyQzUxMy4wMzcsNi43NCw1MTEuMDE5LDIuMTczLDUwNi45NTcsMC42MDF6ICAgICBNMTgwLjIzOSwzMTQuNDc2YzMuNTEyLDAsNy4wMTMtMC4yMDksMTAuNDg1LTAuNjA0bC02Mi43NTYsMTE5LjQzOWMtMS4yNDksMi4zNzUtMS4yMDMsNS4yMjMsMC4xMjEsNy41NTggICAgYzEuMzI0LDIuMzM0LDMuNzQzLDMuODM1LDYuNDIzLDMuOTg0bDc1LjcxLDQuMjA2YzQuMjA0LDAuMjI3LDcuODc3LTIuOTI3LDguMjg5LTcuMTM0YzAuMTUtMS41MzIsMy43MzgtMzQuNDExLDM0LjczNi01MS42MTYgICAgdjQ2LjY3YzAsMi42OTUsMS4zNzgsNS4yMDUsMy42NTIsNi42NTNjMC40MDYsMC4yNTksMzYuNDYxLDIzLjI5NCw3MC4zNzcsNTEuNDExYy0yNS4yMzcsMi44MDUtNzQuMTM1LDIuNzM1LTEwMS45NTMtMzMuNDMgICAgYy0yLjMwMy0yLjk5My02LjQwMy0zLjkzMy05Ljc3OC0yLjI0NWMtMC41NjQsMC4yODItNTYuOTQxLDI4LjA0LTEwOC4yNjQsMTYuMTk0Yy0zNy41NDMtOC42NjQtNjUuMjc1LTMwLjQwOC04MC4xOTctNjIuODgyICAgIGMtMTguMDE5LTM5LjIxNC0xNC4zOTMtOTAuMDg0LDkuNjk5LTEzNi4wNzljMTEuNTY2LTIyLjA4MSwyOS4zNjUtNDEuNTYzLDUxLjUwMi01Ni45OTRjLTAuMDI5LDAuOTU0LTAuMDU0LDEuOTA3LTAuMDU0LDIuODYgICAgQzg4LjIzMSwyNzMuMjAxLDEyOS41MDUsMzE0LjQ3NiwxODAuMjM5LDMxNC40NzZ6IE00NDYuMjAyLDIwMS45NjJjLTE4LjgyOCwwLTM0LjUyMi0xMy42MzItMzcuNzU4LTMxLjU0Mmw1OS4yNDcsMjQuOTQ2ICAgIEM0NjEuNTU1LDE5OS41MjksNDU0LjE1OCwyMDEuOTYyLDQ0Ni4yMDIsMjAxLjk2MnogTTQ4NC4zMDMsMTY4LjEzNGMtMC42NDIsNS40MTUtMi40MTQsMTAuNDg3LTUuMDc4LDE0Ljk3NWwtNzAuMDgtMjkuNTA3ICAgIGMxLjQwNy01LjIxNywzLjg4Ni05Ljk5Niw3LjE4OS0xNC4wODZMNDg0LjMwMywxNjguMTM0eiBNNDgyLjEzNSwxNTAuMTA3bC01MS4zOTgtMjEuNjRjNC43MzUtMi4wOTQsOS45NjQtMy4yNjUsMTUuNDY1LTMuMjY1ICAgIEM0NjIuNjI2LDEyNS4yLDQ3Ni42NjcsMTM1LjU3Miw0ODIuMTM1LDE1MC4xMDd6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNODguMTc2LDMxMy4wNzljLTMuNDYyLTIuNjQxLTguNDEtMS45NzgtMTEuMDUzLDEuNDg1Yy00LjM5Nyw1Ljc2MS0xMi42NjIsNi44Ny0xOC40MjMsMi40NzUgICAgYy01Ljc2MS00LjM5Ny02Ljg3Mi0xMi42NjItMi40NzUtMTguNDI0YzIuNjQyLTMuNDYzLDEuOTc3LTguNDExLTEuNDg2LTExLjA1NGMtMy40NjItMi42NDQtOC40MTEtMS45NzktMTEuMDU0LDEuNDg1ICAgIGMtOS42NzMsMTIuNjc2LTcuMjMsMzAuODU4LDUuNDQ1LDQwLjUzMWM1LjIyOCwzLjk5MSwxMS4zOTEsNS45MTgsMTcuNTA5LDUuOTE4YzguNzE1LDAsMTcuMzM4LTMuOTE2LDIzLjAyMS0xMS4zNjMgICAgQzkyLjMwMywzMjAuNjcxLDkxLjYzOSwzMTUuNzIyLDg4LjE3NiwzMTMuMDc5eiIgZmlsbD0iIzAwMDAwMCIvPgoJPC9nPgo8L2c+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTE0Ny4wNjQsMzUwLjkzMmMtMy40NjItMi42NDMtOC40MTEtMS45NzgtMTEuMDU0LDEuNDg1Yy00LjM5OCw1Ljc2LTEyLjY2MSw2Ljg3LTE4LjQyMywyLjQ3NSAgICBjLTUuNzYxLTQuMzk3LTYuODcyLTEyLjY2Mi0yLjQ3NS0xOC40MjRjMi42NDMtMy40NjMsMS45NzctOC40MTEtMS40ODYtMTEuMDU0Yy0zLjQ2Mi0yLjY0NC04LjQxMS0xLjk3OC0xMS4wNTQsMS40ODUgICAgYy05LjY3MiwxMi42NzYtNy4yMywzMC44NTgsNS40NDYsNDAuNTMyYzUuMjI4LDMuOTg4LDExLjM5MSw1LjkxNywxNy41MDksNS45MTdjOC43MTYsMCwxNy4zMzgtMy45MTUsMjMuMDIxLTExLjM2MyAgICBDMTUxLjE5MSwzNTguNTI0LDE1MC41MjYsMzUzLjU3NSwxNDcuMDY0LDM1MC45MzJ6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNOTYuNjk0LDM3Ni4zMWMtMy40NjItMi42NDMtOC40MTEtMS45NzctMTEuMDU0LDEuNDg2Yy0yLjEyOSwyLjc5MS01LjIxOSw0LjU4NS04LjY5OCw1LjA1NCAgICBjLTMuNDgxLDAuNDYxLTYuOTM0LTAuNDQ5LTkuNzI1LTIuNTc4Yy01Ljc2MS00LjM5Ny02Ljg3Mi0xMi42NjEtMi40NzQtMTguNDI0YzIuNjQyLTMuNDYzLDEuOTc3LTguNDExLTEuNDg2LTExLjA1NCAgICBjLTMuNDYyLTIuNjQ0LTguNDEyLTEuOTc5LTExLjA1NCwxLjQ4NWMtOS42NzMsMTIuNjc2LTcuMjMsMzAuODU3LDUuNDQ1LDQwLjUzYzUuMjI4LDMuOTkxLDExLjM5MSw1LjkxOCwxNy41MSw1LjkxOCAgICBjOC43MTUsMCwxNy4zMzgtMy45MTYsMjMuMDIxLTExLjM2M0MxMDAuODIzLDM4My45MDEsMTAwLjE1NywzNzguOTUyLDk2LjY5NCwzNzYuMzF6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNMjczLjA1OSw1Ljg1OWMtMjEuNjg1LTcuMzc1LTQ1LjMyMyw0LjI3My01Mi42OTMsMjUuOTZjLTYuNDQ1LDE4Ljk2Miw3LjI2OCw2OS4zMzUsMTAuMDgzLDc5LjIzOSAgICBjMC43MDgsMi40OTEsMi41OTUsNC40NzcsNS4wNDgsNS4zMWMyLjQyOSwwLjgyOSw1LjE3OSwwLjM5NCw3LjIzOS0xLjEzNWM4LjI2OC02LjEzOSw0OS44MzctMzcuNzIsNTYuMjgxLTU2LjY4MyAgICBDMzA2LjM4OCwzNi44NjcsMjk0Ljc0NCwxMy4yMjgsMjczLjA1OSw1Ljg1OXogTTI4NC4wODQsNTMuNDc1bC0wLjAwMSwwLjAwMWMtMy4xNjYsOS4zMTgtMjQuMzI4LDI4LjMzNy00MS40NjYsNDEuOTUgICAgYy01LjQ3My0yMi4wMTctMTAuMzQ1LTQ5LjYyNC03LjMxOC01OC41MzFjMy4yNDItOS41MzksMTIuMDM1LTE2LjQ0MiwyMi4wNjMtMTcuMzY2YzMuNTc5LTAuMzMsNy4yMTYsMC4xMDcsMTAuNjE5LDEuMjY0ICAgIEMyODEuNDMyLDI1LjM2NCwyODguNjU1LDQwLjAyNiwyODQuMDg0LDUzLjQ3NXoiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik00MTUuOTY0LDM2My4zNTljLTE5LjA1MS02LjE3NS02OS4yMjQsOC4yNDctNzkuMDg5LDExLjIwMWMtNS4xOTEsMS41NTUtNy4zLDguMDMzLTQuMDAzLDEyLjM0NSAgICBjNi4yNTUsOC4xOCwzOC40Miw0OS4yOTksNTcuNDcxLDU1LjQ3N2MwLDAsMCwwLDAuMDAxLDBjNC4yNDEsMS4zNzUsOC41NDQsMi4wMjgsMTIuNzc5LDIuMDI4ICAgIGMxNy41MiwwLDMzLjg1Mi0xMS4xODYsMzkuNTQyLTI4LjczQzQ0OS43MjgsMzkzLjg5NSw0MzcuNzQ5LDM3MC40MjQsNDE1Ljk2NCwzNjMuMzU5eiBNNDI3LjY2MSw0MTAuODE2ICAgIGMtNC4zODIsMTMuNTE0LTE4LjkzNywyMC45NDItMzIuNDUyLDE2LjU2MmgwLjAwMWMtOS4zNjItMy4wMzYtMjguNjc3LTIzLjkyNi00Mi41MzEtNDAuODcxICAgIGMyMS45MzctNS43ODMsNDkuNDcxLTExLjA0OSw1OC40MjItOC4xNDJDNDI0LjYxMiwzODIuNzQ1LDQzMi4wNDIsMzk3LjMwNCw0MjcuNjYxLDQxMC44MTZ6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNMTEyLjQ3NiwxNDkuNzMyYy0xLjYwOC0xMC4xNzEtMTAuMzI3LTYxLjY0NC0yNC4xNDMtNzYuMTQzQzcyLjUzNSw1Ny4wMDksNDYuMTkxLDU2LjM3NSwyOS42MSw3Mi4xNzEgICAgYy0xNi41ODEsMTUuNzk4LTE3LjIxNyw0Mi4xNDEtMS40MTcsNTguNzIzYzEzLjgxNSwxNC41LDY0LjgwNiwyNS42OTQsNzQuODg3LDI3Ljc5MSAgICBDMTA4LjM5MSwxNTkuNzg3LDExMy4zMjEsMTU1LjA4OSwxMTIuNDc2LDE0OS43MzJ6IE0zOS42MTEsMTIwLjAxM2MtOS43OTktMTAuMjg1LTkuNDA1LTI2LjYyNCwwLjg3OS0zNi40MjMgICAgYzQuOTc5LTQuNzQ1LDExLjM3Ny03LjA5OSwxNy43NjctNy4wOTljNi44MDcsMCwxMy42MDMsMi42NzMsMTguNjU3LDcuOTc4YzYuNzksNy4xMjUsMTMuODM0LDM0LjY5MywxNy45NTQsNTYuMTg5ICAgIEM3My41OTcsMTM1LjUwOCw0Ni40MDEsMTI3LjEzOSwzOS42MTEsMTIwLjAxM3oiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K"
						width="80px;" style="font-family: Gugi;font-size: 75px; color: #aaaaaa;">고기자바.</strong>
					</h2>
				</div>
							
			</div>
			<div class="row block-6">
				<div class="col-md-6 pr-md-5">
					<form action="logincheck">
						<div class="form-group">
						<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_nikname.png" alt="" 
						class="ico_login_nikname" style = "width: 34px; height: 26px; z-index: 49; position:relative; right:-85%; top: 38px;">
							<input id="mid" name="mid" type="text" class="form-control" placeholder="  아이디를 입력해주세요" value="">
						</div>
						<div class="form-group">
						<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_password.png" alt="" 
						class="ico_login_password" style = "width: 34px; height: 26px; z-index: 50; position:relative; right:-85%; top: 38px;">
							<input id="mpwd" name="mpwd" type="password" class="form-control"
								placeholder="  비밀번호를 입력해주세요" value="">
						</div>
		
						<div class="form-group">
							<input type="submit" value="로그인"
								class="btn btn-primary py-3 px-5" style="width: 100%;">
						</div>
						<div class="password_find">
							<a href="passwordfind" style="margin-left: 35%; font-weight: bold;">비밀번호를 잊으셨나요?</a>
						</div>
						<hr>
						<div class="box_area">
							<div class="full_btn_gray">
								<a href="addmember" style = "font-weight: bold;">회원 가입하기</a>
							</div>
							<hr>
							<div>
								<a id="kakao-login-btn"></a> <a
									href="http://developers.kakao.com/logout"></a>
									<a></a>
							</div>
							
					</form>
				</div>
				<!--  
				<div class="sns_login clearfix">
					<a href="javascript:ajaxKakaoLogin();" class="kakao_login"> <img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_kakao.png"
						alt=""> 시작하기
					</a> <a href="javascript:ajaxNaverLogin();" class="naver_login"> <img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_naver.png"
						alt=""> 시작하기
					</a>
				</div>
				  <div class="col-md-6" id="map"></div>-->
			</div>
		</div>
	</section>


	


	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('bb13ca7092cdd4aaf325f6a60fb053b1');
    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function(authObj) {
      	  Kakao.API.request({
                url: '/v1/user/me',
                success: function(res) {
              	  console.log(res.properties.nickname)
              	  console.log(res.id)
              	  location.href = "kakao?mid="+res.id
              
              	
              	  
                },
                fail: function(error) {
                  alert(JSON.stringify(error));
                }
              });
        },
        fail: function(err) {
           alert(JSON.stringify(err));
        }
      });

	
	/* $('#loginbtn').click(
			function() {
				$.ajax({
					url : "loginf?mid=" + $("#mid").val() + "&mpassword="
							+ $('#mpassword').val(),
					success : function(data) {
						if (data == 0) {
							alert("아이디 또는 비밀번호를 확인해 주세요");
							location = 'kloginForm';
						} else {

							console.log("mid" + $("#mid").val());
							if ($("#mid").val() == 'admin') {
								alert("관리자모드입니다.");
								location = 'admin';
							} else {
								alert("여기어때 입니다.");
								location = 'main';
							}
						}

					}
				});
			}); */
</script>


</html>