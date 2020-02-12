<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/admin/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/resources/admin/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/resources/admin/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin/img/favicon.ico">
	<!-- end: Favicon -->

</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index"><span>GOGI-JAVA</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
					
						
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Dennis Ji
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="#"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="login.jsp"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="admin"><i class="icon-home"></i><span class="hidden-tablet"> 홈</span></a></li>
						<li><a href="admin_dashboard"><i class="icon-bar-chart"></i><span class="hidden-tablet"> 이용통계 현황</span></a></li>
						<li><a class="submenu" href="admin_sales"><i class="icon-signal white"></i><span class="hidden-tablet"> 매출통계 현황 </span></a></li>
						<li><a href="admin_hostapply"><i class="icon-plus-sign"></i><span class="hidden-tablet"> 가맹점 요청 관리</span></a></li>
						<li><a href="admin_host"><i class="icon-credit-card"></i><span class="hidden-tablet"> 가맹점 관리</span></a></li>
						
						<li><a href="admin_member"><i class="icon-group white user"></i><span class="hidden-tablet"> 회원 관리</span></a></li>
						<li><a href="admin_reservation"><i class="icon-book white"></i><span class="hidden-tablet"> 예약 관리</span></a></li>
						<li><a href="admin_matching"><i class="icon-link white"></i><span class="hidden-tablet"> 매칭시스템  관리</span></a></li>
						<li><a href="admin_board"><i class="icon-edit white"></i><span class="hidden-tablet"> 게시판 관리</span></a></li>
						<li><a href="admin_mtmqna"><i class="icon-comments-alt white"></i><span class="hidden-tablet"> 1:1 문의 관리</span></a></li>
						<li><a href="admin_adminlogboard"><i class="icon-list white"></i><span class="hidden-tablet"> 관리자 작업 내역</span></a></li>
						<li><a href="admin_scheduler"><i class="icon-calendar"></i><span class="hidden-tablet"> 관리자 스케쥴러</span></a></li>
						<li><a href="admin_settings"><i class="icon-lock"></i><span class="hidden-tablet"> 관리자 설정 </span></a></li>
						
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
		<div id="content" class="span10">
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="admin">Home</a> 

			
<!-- ADMIN Header End -->
