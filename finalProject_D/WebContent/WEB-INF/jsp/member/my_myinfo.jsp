<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp"%>

<style>
.signup_area .agree_txt {
	margin: 30px 0 20px
}

.signup_area .agree_section {
	background: #f8f8f8;
	padding: 0 15px;
	border-radius: .3rem;

}

.signup_area .agree_section label {
	display: block;
	position: relative;
}


.signup_area .agree_section label ins {
	position: absolute;
	top: 2px;
	left: 0;
	width: 20px;
	height: 20px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/lable_check_04.png')
		no-repeat;
	background-size: 100% auto;
}

.signup_area .agree_section label input:checked+ins {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/lable_check_05.png')
		no-repeat;
	background-size: 100% auto;
}

.signup_area .agree_section label span {
	display: block;
	margin-left: 30px;
}

.signup_area .agree_section .agree_all {
	padding: 20px 0;
	border-bottom: 1px solid #ebebeb;
}

.signup_area .agree_section .agree_all span {
	font-size: 15px;
	color: #333333;
	font-weight: 500;
}

.signup_area .agree_section .agree_box {
	padding: 15px 0 20px;
}

.signup_area .agree_section .agree_box label {
	margin-top: 13px;
}

.signup_area .agree_section .agree_box label:first-child {
	margin-top: 0;
}

.signup_area .agree_section .agree_box span {
	font-size: 15px;
	color: #aaa;
}

.signup_area .agree_section .agree_box span a {
	text-decoration: underline;
	font-size: 15px;
	color: #aaa;
}

.signup_area .agree_section .agree_box span em {
	font-size: 13px;
	color: #c7c7c7;
	margin-left: 10px;
}

.redcolor{
color: red;
}

.bluecolor{
color: blue;
}
</style>

	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

	<section class="ftco-section contact-section ftco-degree-bg" style="padding-left: 530px;">
		<div class="container" style="margin: auto;">
			<div class="row d-flex mb-5 contact-info" style="margin-top:-8%; padding: auto;">
				<h2 class="h4" style="text-align: center; margin-top: -100px; font-family: Do Hyeon;margin-left: 10%;">
					<br>나의 정보
				</h2>
				<div class="w-100"></div>
				
			</div>
			<div class="row block-9">
				<div class="col-md-6 pr-md-5">
					<form action="my_myupdate" accept-charset="UTF-8">
						<div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iNTEycHgiIGhlaWdodD0iNTEycHgiPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik00NjcsNjFINDVDMjAuMjE4LDYxLDAsODEuMTk2LDAsMTA2djMwMGMwLDI0LjcyLDIwLjEyOCw0NSw0NSw0NWg0MjJjMjQuNzIsMCw0NS0yMC4xMjgsNDUtNDVWMTA2ICAgIEM1MTIsODEuMjgsNDkxLjg3Miw2MSw0NjcsNjF6IE00NjAuNzg2LDkxTDI1Ni45NTQsMjk0LjgzM0w1MS4zNTksOTFINDYwLjc4NnogTTMwLDM5OS43ODhWMTEyLjA2OWwxNDQuNDc5LDE0My4yNEwzMCwzOTkuNzg4eiAgICAgTTUxLjIxMyw0MjFsMTQ0LjU3LTE0NC41N2w1MC42NTcsNTAuMjIyYzUuODY0LDUuODE0LDE1LjMyNyw1Ljc5NSwyMS4xNjctMC4wNDZMMzE3LDI3Ny4yMTNMNDYwLjc4Nyw0MjFINTEuMjEzeiBNNDgyLDM5OS43ODcgICAgTDMzOC4yMTMsMjU2TDQ4MiwxMTIuMjEyVjM5OS43ODd6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=="
								alt="" class="ico_login_email"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label>이메일 주소</label>
							<input id="memail" name="memail" type="email" class="form-control" value="${my.memail}" style="z-index: 1;">
						</div>
						<div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MTIgNTEyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPGc+Cgk8Zz4KCQk8Zz4KCQkJPHBhdGggZD0iTTIzMC43OTIsMzU0LjMxM2wtNi43MjksNjAuNTFjLTAuMzMzLDMuMDEsMC42MzUsNi4wMzEsMi42NTYsOC4yOTJjMi4wMjEsMi4yNiw0LjkxNywzLjU1Miw3Ljk0OCwzLjU1Mmg0Mi42NjcgICAgIGMzLjAzMSwwLDUuOTI3LTEuMjkyLDcuOTQ4LTMuNTUyYzIuMDIxLTIuMjYsMi45OS01LjI4MSwyLjY1Ni04LjI5MmwtNi43MjktNjAuNTFjMTAuOTI3LTcuOTQ4LDE3LjQ1OC0yMC41MjEsMTcuNDU4LTM0LjMxMyAgICAgYzAtMjMuNTMxLTE5LjEzNS00Mi42NjctNDIuNjY3LTQyLjY2N1MyMTMuMzMzLDI5Ni40NjksMjEzLjMzMywzMjBDMjEzLjMzMywzMzMuNzkyLDIxOS44NjUsMzQ2LjM2NSwyMzAuNzkyLDM1NC4zMTN6ICAgICAgTTI1NiwyOTguNjY3YzExLjc2LDAsMjEuMzMzLDkuNTczLDIxLjMzMywyMS4zMzNjMCw4LjE3Ny00LjY0NiwxNS41LTEyLjEyNSwxOS4xMjVjLTQuMDczLDEuOTc5LTYuNDU4LDYuMjkyLTUuOTU4LDEwLjc4MSAgICAgbDYuMTY3LDU1LjQyN2gtMTguODMzbDYuMTY3LTU1LjQyN2MwLjUtNC40OS0xLjg4NS04LjgwMi01Ljk1OC0xMC43ODFjLTcuNDc5LTMuNjI1LTEyLjEyNS0xMC45NDgtMTIuMTI1LTE5LjEyNSAgICAgQzIzNC42NjcsMzA4LjI0LDI0NC4yNCwyOTguNjY3LDI1NiwyOTguNjY3eiIgZmlsbD0iIzAwMDAwMCIvPgoJCQk8cGF0aCBkPSJNNDM3LjMzMywxOTJoLTMydi00Mi42NjdDNDA1LjMzMyw2Ni45OSwzMzguMzQ0LDAsMjU2LDBTMTA2LjY2Nyw2Ni45OSwxMDYuNjY3LDE0OS4zMzNWMTkyaC0zMiAgICAgQzY4Ljc3MSwxOTIsNjQsMTk2Ljc3MSw2NCwyMDIuNjY3djI2Ni42NjdDNjQsNDkyLjg2NSw4My4xMzUsNTEyLDEwNi42NjcsNTEyaDI5OC42NjdDNDI4Ljg2NSw1MTIsNDQ4LDQ5Mi44NjUsNDQ4LDQ2OS4zMzMgICAgIFYyMDIuNjY3QzQ0OCwxOTYuNzcxLDQ0My4yMjksMTkyLDQzNy4zMzMsMTkyeiBNMTI4LDE0OS4zMzNjMC03MC41ODMsNTcuNDE3LTEyOCwxMjgtMTI4czEyOCw1Ny40MTcsMTI4LDEyOFYxOTJoLTIxLjMzMyAgICAgdi00Mi42NjdjMC01OC44MTMtNDcuODU0LTEwNi42NjctMTA2LjY2Ny0xMDYuNjY3UzE0OS4zMzMsOTAuNTIxLDE0OS4zMzMsMTQ5LjMzM1YxOTJIMTI4VjE0OS4zMzN6IE0zNDEuMzMzLDE0OS4zMzNWMTkyICAgICBIMTcwLjY2N3YtNDIuNjY3QzE3MC42NjcsMTAyLjI4MSwyMDguOTQ4LDY0LDI1Niw2NFMzNDEuMzMzLDEwMi4yODEsMzQxLjMzMywxNDkuMzMzeiBNNDI2LjY2Nyw0NjkuMzMzICAgICBjMCwxMS43Ni05LjU3MywyMS4zMzMtMjEuMzMzLDIxLjMzM0gxMDYuNjY3Yy0xMS43NiwwLTIxLjMzMy05LjU3My0yMS4zMzMtMjEuMzMzdi0yNTZoMzQxLjMzM1Y0NjkuMzMzeiIgZmlsbD0iIzAwMDAwMCIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K"
								alt="" class="ico_login_password"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label>변경 비밀번호</label>
							<input id="mpwd" name="mpwd" type="password" class="form-control" value=""	placeholder="변경 비밀번호 입력해주세요" style="z-index: 1;">
						</div>
						<div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iNTEycHgiIGhlaWdodD0iNTEycHgiPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik00MzcuMzMzLDE5MmgtMzJ2LTQyLjY2N0M0MDUuMzMzLDY2Ljk5LDMzOC4zNDQsMCwyNTYsMFMxMDYuNjY3LDY2Ljk5LDEwNi42NjcsMTQ5LjMzM1YxOTJoLTMyICAgIEM2OC43NzEsMTkyLDY0LDE5Ni43NzEsNjQsMjAyLjY2N3YyNjYuNjY3QzY0LDQ5Mi44NjUsODMuMTM1LDUxMiwxMDYuNjY3LDUxMmgyOTguNjY3QzQyOC44NjUsNTEyLDQ0OCw0OTIuODY1LDQ0OCw0NjkuMzMzICAgIFYyMDIuNjY3QzQ0OCwxOTYuNzcxLDQ0My4yMjksMTkyLDQzNy4zMzMsMTkyeiBNMjg3LjkzOCw0MTQuODIzYzAuMzMzLDMuMDEtMC42MzUsNi4wMzEtMi42NTYsOC4yOTIgICAgYy0yLjAyMSwyLjI2LTQuOTE3LDMuNTUyLTcuOTQ4LDMuNTUyaC00Mi42NjdjLTMuMDMxLDAtNS45MjctMS4yOTItNy45NDgtMy41NTJjLTIuMDIxLTIuMjYtMi45OS01LjI4MS0yLjY1Ni04LjI5Mmw2LjcyOS02MC41MSAgICBjLTEwLjkyNy03Ljk0OC0xNy40NTgtMjAuNTIxLTE3LjQ1OC0zNC4zMTNjMC0yMy41MzEsMTkuMTM1LTQyLjY2Nyw0Mi42NjctNDIuNjY3czQyLjY2NywxOS4xMzUsNDIuNjY3LDQyLjY2NyAgICBjMCwxMy43OTItNi41MzEsMjYuMzY1LTE3LjQ1OCwzNC4zMTNMMjg3LjkzOCw0MTQuODIzeiBNMzQxLjMzMywxOTJIMTcwLjY2N3YtNDIuNjY3QzE3MC42NjcsMTAyLjI4MSwyMDguOTQ4LDY0LDI1Niw2NCAgICBzODUuMzMzLDM4LjI4MSw4NS4zMzMsODUuMzMzVjE5MnoiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K"
								alt="" class="ico_login_password"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label style="width: 70%">변경 비밀번호 <span id="pwdch" style="margin-left: 2%">확인</span></label>
							<input id="mpwdcheck" name="mpwdcheck" type="password" class="form-control" value="" placeholder="변경 비밀번호를 확인해주세요" style="z-index: 1;">
						</div>
						<%-- <div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSItOTMgLTIwIDYzNyA2MzcuMzMzMzEiIHdpZHRoPSI1MTJweCI+PHBhdGggZD0ibTIyMC4yNSAyNzYuNjI1YzM1LjY2MDE1Ni0uMDMxMjUgNjQuNTM1MTU2LTI4Ljk2ODc1IDY0LjUtNjQuNjI1LS4wMzEyNS0zNS42NTYyNS0yOC45Njg3NS02NC41MzUxNTYtNjQuNjI4OTA2LTY0LjUtMzUuNjUyMzQ0LjAzNTE1Ni02NC41MzEyNSAyOC45Njg3NS02NC40OTYwOTQgNjQuNjI1LjExMzI4MSAzNS42MjUgMjkgNjQuNDUzMTI1IDY0LjYyNSA2NC41em0wLTEwNC4xMjVjMjEuODgyODEyIDAgMzkuNjI1IDE3LjczODI4MSAzOS42MjUgMzkuNjI1IDAgMjEuODgyODEyLTE3Ljc0MjE4OCAzOS42MjUtMzkuNjI1IDM5LjYyNS0yMS44ODY3MTkgMC0zOS42MjUtMTcuNzQyMTg4LTM5LjYyNS0zOS42MjUuMDAzOTA2LTIxLjg4MjgxMiAxNy43NDYwOTQtMzkuNjIxMDk0IDM5LjYyNS0zOS42MjV6bTAgMCIgZmlsbD0iIzAwMDAwMCIvPjxwYXRoIGQ9Im0xMzMuNSA0MTUuNzVoMTczLjQ5NjA5NGM2LjkwMjM0NC0uMDE1NjI1IDEyLjQ4MDQ2OC01LjYwMTU2MiAxMi41LTEyLjUgMC0yOC4yNS0xMC4yNDYwOTQtNTQuMjUtMjguOTk2MDk0LTczLjM3NS0xOC41NDY4NzUtMTguNzk2ODc1LTQzLjg0NzY1Ni0yOS4zNzUtNzAuMjUtMjkuMzc1cy01MS43MDMxMjUgMTAuNTc4MTI1LTcwLjI1IDI5LjM3NWMtMTguNzUgMTkuMTI1LTI5IDQ1LjEyNS0yOSA3My4zNzUuMDE5NTMxIDYuODk4NDM4IDUuNjAxNTYyIDEyLjQ4NDM3NSAxMi41IDEyLjV6bTM0LjM3NS02OC4zNzVjMTMuODM1OTM4LTEzLjk5NjA5NCAzMi42OTUzMTItMjEuODc1IDUyLjM3NS0yMS44NzUgMTkuNjc1NzgxIDAgMzguNTM5MDYyIDcuODc4OTA2IDUyLjM3MTA5NCAyMS44NzUgMTEuNDcyNjU2IDExLjgzNTkzOCAxOC44MzU5MzcgMjcuMDM5MDYyIDIxLjAwMzkwNiA0My4zNzVoLTE0Ni43NWMyLjE0MDYyNS0xNi4zNDM3NSA5LjUwNzgxMi0zMS41NjI1IDIxLTQzLjM3NXptMCAwIiBmaWxsPSIjMDAwMDAwIi8+PHBhdGggZD0ibTM4Mi43NSA0Mi41aC0xMTIuNXYtMzBjLS4wMTk1MzEtNi44OTQ1MzEtNS42MDU0NjktMTIuNDgwNDY4OC0xMi41LTEyLjVoLTc1Yy02Ljg5NDUzMS4wMTk1MzEyLTEyLjQ4MDQ2OSA1LjYwNTQ2OS0xMi41IDEyLjV2MzBoLTExMi41Yy0zNC41MTE3MTkuMDE1NjI1LTYyLjQ4NDM3NSAyNy45ODgyODEtNjIuNSA2Mi41djQzMGMuMDE1NjI1IDM0LjUxMTcxOSAyNy45ODgyODEgNjIuNDg0Mzc1IDYyLjUgNjIuNWgzMjVjMzQuNTExNzE5LS4wMTU2MjUgNjIuNDg0Mzc1LTI3Ljk4ODI4MSA2Mi41LTYyLjV2LTQzMGMtLjAxNTYyNS0zNC41MTE3MTktMjcuOTg4MjgxLTYyLjQ4NDM3NS02Mi41LTYyLjV6bS0xODcuNS0xNy41aDUwdjUwaC01MHptMjI1IDUxMGMtLjA1ODU5NCAyMC42ODM1OTQtMTYuODE2NDA2IDM3LjQ0MTQwNi0zNy41IDM3LjVoLTMyNWMtMjAuNjgzNTk0LS4wNTg1OTQtMzcuNDQxNDA2LTE2LjgxNjQwNi0zNy41LTM3LjV2LTQzMGMuMDU4NTk0LTIwLjY4MzU5NCAxNi44MTY0MDYtMzcuNDQxNDA2IDM3LjUtMzcuNWgxMTIuNXYyMGMuMDE5NTMxIDYuODk0NTMxIDUuNjA1NDY5IDEyLjQ4MDQ2OSAxMi41IDEyLjVoNzVjNi44OTQ1MzEtLjAxOTUzMSAxMi40ODA0NjktNS42MDU0NjkgMTIuNS0xMi41di0yMGgxMTIuNWMyMC42ODM1OTQuMDU4NTk0IDM3LjQ0MTQwNiAxNi44MTY0MDYgMzcuNSAzNy41em0wIDAiIGZpbGw9IiMwMDAwMDAiLz48cGF0aCBkPSJtMzU1LjUgNTA1aC0yNzAuNWMtNi45MDIzNDQgMC0xMi41IDUuNTkzNzUtMTIuNSAxMi41czUuNTk3NjU2IDEyLjUgMTIuNSAxMi41aDI3MC42MjVjNi45MDYyNS0uMDM1MTU2IDEyLjQ3MjY1Ni01LjY2MDE1NiAxMi40Mzc1LTEyLjU2MjUtLjAzNTE1Ni02LjkwNjI1LTUuNjYwMTU2LTEyLjQ3MjY1Ni0xMi41NjI1LTEyLjQzNzV6bTAgMCIgZmlsbD0iIzAwMDAwMCIvPjxwYXRoIGQ9Im0xNDcuNSA0NTBjLTYuOTAyMzQ0IDAtMTIuNSA1LjU5Mzc1LTEyLjUgMTIuNXM1LjU5NzY1NiAxMi41IDEyLjUgMTIuNWgxNDUuNjI1YzYuOTA2MjUgMCAxMi41LTUuNTkzNzUgMTIuNS0xMi41cy01LjU5Mzc1LTEyLjUtMTIuNS0xMi41em0wIDAiIGZpbGw9IiMwMDAwMDAiLz48L3N2Zz4K"
								alt="" class="ico_login_nikname"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label>닉네임</label>
							<input id="mnickname" name="mnickname" type="text" class="form-control" value="${my.mnickname }" style="z-index: 1;">
						</div> --%>
						<div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMS45OTkgNTExLjk5OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTExLjk5OSA1MTEuOTk5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNNDk4LjgyNywzNzcuNjMzbC02My42NDktNjMuNjQ5Yy0xNy41NDgtMTcuNTQ3LTQ2LjEwMi0xNy41NDctNjMuNjQ5LDBsLTI4LjkzMSwyOC45MzEgICAgYy0xMy4yOTQsMTMuMjk0LTM0LjkyNiwxMy4yOS00OC4yMTUsMC4wMDVsLTEyNS40LTEyNS41MDdjLTEzLjMyNS0xMy4zMjUtMTMuMzI3LTM0Ljg5MiwwLTQ4LjIxOSAgICBjNC42Ni00LjY2LDE4LjA0MS0xOC4wNDEsMjguOTMxLTI4LjkzMWMxNy40NzEtMTcuNDcsMTcuNzE1LTQ1LjkzNS0wLjAxNy02My42NjVsLTYzLjYzMi02My40MzIgICAgQzExNi43MTctNC4zODEsODguMTY0LTQuMzgxLDcwLjY2MywxMy4xMkM1Ny41NjcsMjYuMTAyLDUzLjM0MywzMC4yOSw0Ny40NzEsMzYuMTExYy02My4yOCw2My4yNzktNjMuMjgsMTY2LjI0Mi0wLjAwMywyMjkuNTE5ICAgIGwxOTguNjkyLDE5OC43OTZjNjMuNDI4LDYzLjQyOSwxNjYuMDg4LDYzLjQzNCwyMjkuNTIxLDBsMjMuMTQ2LTIzLjE0NUM1MTYuMzc1LDQyMy43MzMsNTE2LjM3NSwzOTUuMTgxLDQ5OC44MjcsMzc3LjYzM3ogICAgIE05MS44MzMsMzQuMzgyYzUuODQ5LTUuODQ5LDE1LjM2NS01Ljg1LDIxLjIzMywwLjAxNmw2My42MzIsNjMuNDMyYzUuODYzLDUuODYzLDUuODYzLDE1LjM1MiwwLDIxLjIxNmwtMTAuNjA5LDEwLjYwOCAgICBsLTg0LjgxLTg0LjgxTDkxLjgzMywzNC4zODJ6IE0yNjcuMzgsNDQzLjIxM0w2OC42ODcsMjQ0LjQxNWMtNDguOTU4LTQ4Ljk1OC01MS42NDktMTI1LjgzMy04LjI3Ni0xNzguMDA2bDg0LjU2NCw4NC41NjQgICAgYy0yMi4yMiwyNS4xODktMjEuMjk0LDYzLjU3MiwyLjc4Nyw4Ny42NTNsMTI1LjM5NiwxMjUuNTAxYzAuMDAxLDAuMDAxLDAuMDAzLDAuMDAzLDAuMDA0LDAuMDA0ICAgIGMyNC4wNTUsMjQuMDU2LDYyLjQzNiwyNS4wNDIsODcuNjU2LDIuNzkybDg0LjU2Niw4NC41NjZDMzkzLjM3Nyw0OTQuNzg3LDMxNi42NzUsNDkyLjUwOCwyNjcuMzgsNDQzLjIxM3ogTTQ3Ny42MTIsNDIwLjA2NSAgICBsLTEwLjYwOSwxMC42MDlsLTg0Ljg2NS04NC44NjZsMTAuNjA3LTEwLjYwOGM1Ljg1LTUuODQ5LDE1LjM2Ny01Ljg1LDIxLjIxNywwbDYzLjY0OSw2My42NDkgICAgQzQ4My40NjEsNDA0LjY5OSw0ODMuNDYxLDQxNC4yMTcsNDc3LjYxMiw0MjAuMDY1eiIgZmlsbD0iIzAwMDAwMCIvPgoJPC9nPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo="
								alt="" class="ico_login_email"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label>전화번호</label>
							<input id="mphone" name="mphone" type="text" class="form-control" value="${my.mphone }" style="z-index: 1;">
						</div>
						<div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgd2lkdGg9IjUxMnB4Ij48cGF0aCBkPSJtNDI0LjQ3MjY1NiAzMDFoLTExMy4yMTQ4NDRsNTguOTYwOTM4LTk0LjA3ODEyNWMxMy41NjI1LTIxLjUxMTcxOSAyMC43MzQzNzUtNDYuMzgyODEzIDIwLjczNDM3NS03MS45MjE4NzUgMC03NC40Mzc1LTYwLjU2MjUtMTM1LTEzNS0xMzUtNzQuNDQxNDA2IDAtMTM1IDYwLjU2MjUtMTM1IDEzNSAwIDI1LjUzOTA2MiA3LjE2Nzk2OSA1MC40MTAxNTYgMjAuNzEwOTM3IDcxLjg4NjcxOWw1OC45ODQzNzYgOTQuMTEzMjgxaC0xMTMuMjE4NzVsLTg3LjQyOTY4OCAyMTFoNTExLjkwMjM0NHptLTc2LjkzMzU5NCAxMjBoOTQuMTgzNTk0bDI1LjI3NzM0NCA2MWgtMTExLjY4MzU5NHptLTIyLjQ2ODc1IDYxaC0xMzguMzg2NzE4bDcuNTgyMDMxLTYxaDEyMy4wMzEyNXptMTA0LjIyMjY1Ny05MWgtODUuNTc4MTI1bC03LjY0ODQzOC02MGg2OC4zNjMyODJ6bS0yNzguMzM5ODQ0LTI1NmMwLTU3Ljg5ODQzOCA0Ny4xMDE1NjMtMTA1IDEwNS0xMDUgNTcuODk0NTMxIDAgMTA1IDQ3LjEwMTU2MiAxMDUgMTA1IDAgMTkuODY3MTg4LTUuNTcwMzEzIDM5LjIwMzEyNS0xNi4xMzI4MTMgNTUuOTUzMTI1bC04OC44NjcxODcgMTQxLjgwMDc4MS04OC44OTA2MjUtMTQxLjgzMjAzMWMtMTAuNTM5MDYyLTE2LjcxODc1LTE2LjEwOTM3NS0zNi4wNTQ2ODctMTYuMTA5Mzc1LTU1LjkyMTg3NXptMTA1IDI1NC4yNDYwOTQgMzYuNTAzOTA2LTU4LjI0NjA5NGgxMy4zNjcxODhsNy42NDg0MzcgNjBoLTExNS40ODA0NjhsNy40NjA5MzctNjBoMTMuOTk2MDk0em0tMTQ4LjQ4MDQ2OS01OC4yNDYwOTRoNjcuNzVsLTcuNDYwOTM3IDYwaC04NS4xNTIzNDR6bS0zNy4yOTI5NjggOTBoOTMuODU1NDY4bC03LjU4NTkzNyA2MWgtMTExLjU0Njg3NXptMCAwIiBmaWxsPSIjMDAwMDAwIi8+PHBhdGggZD0ibTMzMC45NTMxMjUgMTM1YzAtNDEuMzU1NDY5LTMzLjY0NDUzMS03NS03NS03NXMtNzUgMzMuNjQ0NTMxLTc1IDc1IDMzLjY0NDUzMSA3NSA3NSA3NSA3NS0zMy42NDQ1MzEgNzUtNzV6bS0xMjAgMGMwLTI0LjgxMjUgMjAuMTg3NS00NSA0NS00NXM0NSAyMC4xODc1IDQ1IDQ1LTIwLjE4NzUgNDUtNDUgNDUtNDUtMjAuMTg3NS00NS00NXptMCAwIiBmaWxsPSIjMDAwMDAwIi8+PC9zdmc+Cg=="
								alt="" class="ico_login_email"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label>주소</label>
							<input id="maddr1" name="maddr1" type="text" class="form-control" value="${my.maddr1 }" style="z-index: 1;">
						</div>
						<div class="form-group">
							<img
								src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIC0xIDUxMiA1MTIiIHdpZHRoPSI1MTJweCI+PHBhdGggZD0ibTIwNC41IDQ1OC42MDU0Njl2NTEuODU1NDY5bC0xMi41MzkwNjItMTAuMTI4OTA3Yy0xLjkzNzUtMS41NjY0MDYtNDguMDM1MTU3LTM4Ljk5MjE4Ny05NC43ODEyNS05Mi42NjAxNTYtNjQuNDg0Mzc2LTc0LjAzNTE1Ni05Ny4xNzk2ODgtMTQwLjQ5MjE4Ny05Ny4xNzk2ODgtMTk3LjUxOTUzMXYtNS42NTIzNDRjMC0xMTIuNzYxNzE5IDkxLjczODI4MS0yMDQuNSAyMDQuNS0yMDQuNXMyMDQuNSA5MS43MzgyODEgMjA0LjUgMjA0LjV2NS42NTIzNDRjMCA0Ljc4OTA2Mi0uMjUzOTA2IDkuNjUyMzQ0LS43MTQ4NDQgMTQuNTc0MjE4bC0zOS45OTIxODctMzYuNDg0Mzc0Yy04LjE5MTQwNy04My4xNTYyNS03OC41MTk1MzEtMTQ4LjMzOTg0NC0xNjMuNzkyOTY5LTE0OC4zMzk4NDQtOTAuNzU3ODEyIDAtMTY0LjU5NzY1NiA3My44Mzk4NDQtMTY0LjU5NzY1NiAxNjQuNTk3NjU2djUuNjUyMzQ0YzAgOTYuMzY3MTg3IDEyNC4xNjQwNjIgMjEzLjAyNzM0NCAxNjQuNTk3NjU2IDI0OC40NTMxMjV6bTEyMi42OTkyMTktMjguNjYwMTU3aDU5Ljg1MTU2MnYtNTkuODUxNTYyaC01OS44NTE1NjJ6bS0xMjIuNjk5MjE5LTMxMC4yMzgyODFjNDYuNzUzOTA2IDAgODQuNzkyOTY5IDM4LjAzOTA2MyA4NC43OTI5NjkgODQuNzkyOTY5cy0zOC4wMzkwNjMgODQuNzkyOTY5LTg0Ljc5Mjk2OSA4NC43OTI5NjktODQuNzkyOTY5LTM4LjAzOTA2My04NC43OTI5NjktODQuNzkyOTY5IDM4LjAzOTA2My04NC43OTI5NjkgODQuNzkyOTY5LTg0Ljc5Mjk2OXptMCAzOS45MDIzNDRjLTI0Ljc1MzkwNiAwLTQ0Ljg5MDYyNSAyMC4xMzY3MTktNDQuODkwNjI1IDQ0Ljg5MDYyNSAwIDI0Ljc1IDIwLjEzNjcxOSA0NC44OTA2MjUgNDQuODkwNjI1IDQ0Ljg5MDYyNSAyNC43NSAwIDQ0Ljg5MDYyNS0yMC4xNDA2MjUgNDQuODkwNjI1LTQ0Ljg5MDYyNSAwLTI0Ljc1MzkwNi0yMC4xNDA2MjUtNDQuODkwNjI1LTQ0Ljg5MDYyNS00NC44OTA2MjV6bTI4MC42MDkzNzUgMjQzLjIyMjY1Ni0xMS4yMTg3NS0xMC4yMzQzNzV2NjQuMDU4NTk0YzAgMjkuODI4MTI1LTI0LjI2OTUzMSA1NC4wOTM3NS01NC4wOTc2NTYgNTQuMDkzNzVoLTEyNi4zMzIwMzFjLTI5LjgyODEyNiAwLTU0LjA5NzY1Ny0yNC4yNjU2MjUtNTQuMDk3NjU3LTU0LjA5Mzc1di02NC4wNTg1OTRsLTExLjIxODc1IDEwLjIzNDM3NS0yNi44OTA2MjUtMjkuNDc2NTYyIDE1NS4zNzEwOTQtMTQxLjc0NjA5NCAxNTUuMzc1IDE0MS43NDYwOTR6bS01MS4xMjEwOTQtNDYuNjM2NzE5LTc3LjM2MzI4MS03MC41NzQyMTgtNzcuMzU5Mzc1IDcwLjU3NDIxOHYxMDAuNDU3MDMyYzAgNy44MjgxMjUgNi4zNjcxODcgMTQuMTk1MzEyIDE0LjE5NTMxMyAxNC4xOTUzMTJoMTI2LjMzMjAzMWM3LjgyODEyNSAwIDE0LjE5NTMxMi02LjM2NzE4NyAxNC4xOTUzMTItMTQuMTk1MzEyem0wIDAiIGZpbGw9IiMwMDAwMDAiLz48L3N2Zz4K"
								alt="" class="ico_login_email"
								style="width: 34px; height: 26px; z-index: 2; position: relative; right: -90%; top: 38px;">
							<label>상세 주소</label> 
							<input id="maddr2" name="maddr2" type="text" class="form-control" value="${my.maddr2 }" style="z-index: 1;">
						</div>
						<div class="agree_section">
							<div class="agree_all" style="font-weight: bold;">
								<label class="clearfix">
								</label>
							</div>
				</div>
						<div class="form-group">
							<input type="submit" value="변경하기" id="updateBtn"
								class="btn btn-primary py-3 px-5" style="width: 80%;">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- loader -->
</body>

	<script	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


<script type='text/javascript'>
	$(function() {
		$('#mpwdcheck').on('keyup', function() { //비밀번호 확인 입력시 바로 값 비교  
			if ($('#mpwd').val() === $('#mpwdcheck').val()){
				$('#pwdch').text("일치");
				$('#pwdch').removeClass("redcolor");
				$('#pwdch').addClass("bluecolor");
			}else{
				console.log("비밀번호 불일치");
				$('#pwdch').text("불일치");
				$('#pwdch').removeClass("bluecolor");
				$('#pwdch').addClass("redcolor");
			}
		});
	});


</script>
</html>