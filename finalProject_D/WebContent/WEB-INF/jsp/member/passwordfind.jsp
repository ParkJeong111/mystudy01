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
							<input type="email" class="form-control" id="memail" name="memail" placeholder="  이메일주소" style = "z-index: 1;">
							<br>
						</div>
						<!--  <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              -->
			<div id="pwcontent">
				
			</div>
						<div class="form-group">
							<input type="button" id="pwfind" value="비밀번호 찾기"
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
		$('#pwfind').click(function() {
			console.log("비밀번호")
			var email =  $('#memail').val();
			console.log(email)
			if(memail!=''){
				 $.ajax({
					type:'POST',
					url:'pwfind',
					data: {
						memail:email
						},
					datatype :'json',
					success:function(res){
						$('#pwcontent').html("");
						if(res.msg=='success'){
							alert('비밀번호를 찾았습니다.')
							$('#pwcontent').append('<div style="margin-left:180px; margin-top:-25px; margin-bottom:20px;"><span style="font-size:16px;"> 현재 비밀번호 : '+res.myinfo.mpwd+'</span><div>');
						}
						else{
							$('#pwcontent').append('<div  style="margin-left:160px; margin-top:-25px; margin-bottom:20px;"><span  style="font-size:16px;">'+res.msg+'</span><div>');
						}
						$("input[name=memail]").val('');
						$("input[name=memail]").focus();
					
					},
					error:function(res){
						console.log("실패했나")
					}
				}); 
			}else{
				alert("이메일을 입력해주세요.")
			}
		});
	});
  
	
  </script>
</html>