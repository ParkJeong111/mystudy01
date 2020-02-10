<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="header.jsp" %>
<html lang="ko">
  <head>
  <script src="//developers.kakao.com/sdk/${pageContext.request.contextPath}/resources/js/kakao.min.js"></script>
  <style>

  </style>
    <title>Login페이지</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
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
  </head>
  <body>
    
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>
		
<section class="ftco-section contact-section ftco-degree-bg" style="padding-left: 530px;">
      <div class="container" style = "margin: auto;">
        <div class="row d-flex mb-5 contact-info" style="margin-left: 35px;">
        <!--  <h2 class="h4" style = "margin-left: 200px;">비밀번호 찾기</h2>-->
        <br>
        <p style = "text-align:center;font-size:15px;color:#c0c0c0;margin-bottom:45px; font-weight: bold; margin: 0px 0px 0px 0px;  ">
        회원가입 시 등록한 이메일로 비밀번호를 재설정 할 수 있습니다.
        <br>
        단, 간편아이디로 가입하신 회원은 비밀번호 재설정이 불가합니다.</p>
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
					<form action="#" style="left: 300px;">
						<div class="form-group">
						<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_login_email.png" 
						alt="" class="ico_login_email" style = "width: 34px; height: 26px; z-index: 50; position:relative; right:-460px; top: 38px;">
							<input type="email" class="form-control" placeholder="  이메일주소" style = "z-index: 1;">
							<br>
						</div>
						<!--  <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              -->

						<div class="form-group">
							<input type="submit" value="가입하기"
								class="btn btn-primary py-3 px-5" style = "width: 520px;" >
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
  

  <!-- loader -->


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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
  </body>
  <script type='text/javascript'>
  $(function(){

	    $(".agree_all label").click(function(){
	        if($(".agree_all label input").prop("checked")) {
	         $("input[type=checkbox]").prop("checked",true);
	        } else {
	         $("input[type=checkbox]").prop("checked",false);
	        }
	    })
	})
  
//<![CDATA[
	// 사용할 앱의 JavaScript 키를 설정해 주세요.
	Kakao.init('6f4c6f3de3e26056bac5bd7d9faed18d'); //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
	// 카카오 로그인 버튼을 생성합니다.
	Kakao.Auth.createLoginButton({
		container : '#kakao-login-btn',

		success : function(authObj) {

			Kakao.API.request({

				url : '/v1/user/me',
				success : function(res) {
					//document.write(res.properties.nickname+"님 환영합니다."+res.id+"아이디입니다.");

					location.href = "kakao?mnickname= "
							+ encodeURI(res.properties.nickname, "EUC-KR")
							+ "&mid=" + res.id;

					/*  alert(res.properties.nickname+"님 환영합니다.");
					if(res.properties.nickname !== null){
						console.log("적용됐어염");
						location.href = 'main';
					}else if(res.properties.nickname === null){
						$("#kakao-login-btn").show();
						
						console.log("적용됐어염11");
					} */
					//alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
					//alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
					console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
					console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 
					//console.log(res.profile_image);
					//console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
					// res.properties.nickname으로도 접근 가능 )
					//console.log(res.created);
					//console.log(res.status);
					//console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
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
			});
  </script>
</html>