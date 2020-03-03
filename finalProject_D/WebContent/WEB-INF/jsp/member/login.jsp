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
				<div class="col-md-6 mb-4" style="margin-left: 20%;">
					<h2 class="h4">
						<br><strong><b style="color: #aaaaaa;">로그인</b></strong>
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