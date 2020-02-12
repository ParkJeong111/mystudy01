<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="header.jsp" %>
<html lang="ko">
<head>
<script src="//developers.kakao.com/sdk/${pageContext.request.contextPath}/resources/js/kakao.min.js"></script>
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
<title>Login������</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
</head>
<body>

	
	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

	<section class="ftco-section contact-section ftco-degree-bg"
		style="padding-left: 530px;">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-12 mb-4" style="margin-left: 230px;">
					<h2 class="h4">
						<br>�α���
					</h2>
				</div>
				<div class="w-100"></div>
				<!--  <div class="col-md-3">
            <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
          </div>
          <div class="col-md-3">
            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
          </div>
          <div class="col-md-3">
            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
          </div>
          <div class="col-md-3">
            <p><span>Website</span> <a href="#">yoursite.com</a></p>
          </div>-->
			</div>
			<div class="row block-9">
				<div class="col-md-6 pr-md-5">
					<form action="logincheck">
						<div class="form-group">
						<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_nikname.png" alt="" 
						class="ico_login_nikname" style = "width: 34px; height: 26px; z-index: 49; position:relative; right:-460px; top: 38px;">
							<input id="mid" name="mid" type="text" class="form-control" placeholder="  ���̵� �Է����ּ���" value="">
						</div>
						<div class="form-group">
						<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_password.png" alt="" 
						class="ico_login_password" style = "width: 34px; height: 26px; z-index: 50; position:relative; right:-460px; top: 38px;">
							<input id="mpwd" name="mpwd" type="password" class="form-control"
								placeholder="  ��й�ȣ�� �Է����ּ���" value="">
						</div>
		
						<div class="form-group">
							<input type="submit" value="�α����ϱ�"
								class="btn btn-primary py-3 px-5" style="width: 505px;">
						</div>
						<div class="password_find">
							<a href="passwordfind" style="margin-left: 185px; font-weight: bold;">��й�ȣ�� �����̳���?</a>
						</div>
						<hr>
						<div class="box_area">
							<div class="full_btn_gray">
								<a href="addmember" style = "font-weight: bold;">ȸ�� �����ϱ�</a>
							</div>
							<hr>
							<div>
								<a id="kakao-login-btn"></a> <a
									href="http://developers.kakao.com/logout"></a>
									<a>  ���ڸ��� ���̹�api</a>
							</div>
							
					</form>
				</div>
				<!--  
				<div class="sns_login clearfix">
					<a href="javascript:ajaxKakaoLogin();" class="kakao_login"> <img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_kakao.png"
						alt=""> �����ϱ�
					</a> <a href="javascript:ajaxNaverLogin();" class="naver_login"> <img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_naver.png"
						alt=""> �����ϱ�
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
<script type='text/javascript'>
	//<![CDATA[
	// ����� ���� JavaScript Ű�� ������ �ּ���.
	Kakao.init('6f4c6f3de3e26056bac5bd7d9faed18d'); //���⼭ �Ʊ� �߱޹��� Ű �� javascriptŰ�� ������ش�.
	// īī�� �α��� ��ư�� �����մϴ�.
	Kakao.Auth.createLoginButton({
		container : '#kakao-login-btn',

		success : function(authObj) {

			Kakao.API.request({

				url : '/v1/user/me',
				success : function(res) {
					//document.write(res.properties.nickname+"�� ȯ���մϴ�."+res.id+"���̵��Դϴ�.");

					location.href = "kakao?mnickname= "
							+ encodeURI(res.properties.nickname, "EUC-KR")
							+ "&mid=" + res.id;

					/*  alert(res.properties.nickname+"�� ȯ���մϴ�.");
					if(res.properties.nickname !== null){
						console.log("����ƾ");
						location.href = 'main';
					}else if(res.properties.nickname === null){
						$("#kakao-login-btn").show();
						
						console.log("����ƾ11");
					} */
					//alert(JSON.stringify(res)); //<---- kakao.api.request ���� �ҷ��� ����� json���·� ���
					//alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton���� �ҷ��� ����� json���·� ���
					console.log(res.id);//<---- �ܼ� �α׿� id ���� ���(id�� res�ȿ� �ֱ� ������  res.id �� �ҷ��´�)
					console.log(res.kaccount_email);//<---- �ܼ� �α׿� email ���� ��� 
					//console.log(res.profile_image);
					//console.log(res.properties['nickname']);//<---- �ܼ� �α׿� �г��� ���(properties�� �ִ� nickname ���� 
					// res.properties.nickname���ε� ���� ���� )
					//console.log(res.created);
					//console.log(res.status);
					//console.log(authObj.access_token);//<---- �ܼ� �α׿� ��ū�� ���
					// $('#kakao_id').val(res.properties.id);
					//$('#kakao_nickname').val(res.properties.nickname);  
					/*   var d = new Date(); */
					/*  
						
					}); */

				}
			})
		},
		fail : function(err) {
			alert(JSON.stringify(err));
		}
	});
	$('#loginbtn').click(
			function() {
				$.ajax({
					url : "loginf?mid=" + $("#mid").val() + "&mpassword="
							+ $('#mpassword').val(),
					success : function(data) {
						if (data == 0) {
							alert("���̵� �Ǵ� ��й�ȣ�� Ȯ���� �ּ���");
							location = 'kloginForm';
						} else {

							console.log("mid" + $("#mid").val());
							if ($("#mid").val() == 'admin') {
								alert("�����ڸ���Դϴ�.");
								location = 'admin';
							} else {
								alert("���� �Դϴ�.");
								location = 'main';
							}
						}

					}
				});
			});
</script>
</html>