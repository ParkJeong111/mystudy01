<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="header.jsp" %>
<body>    
    <div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>
		
<section class="ftco-section contact-section ftco-degree-bg" >
      <div class="container" style = "margin: auto;">
        <div class="contact-info" style="padding: auto; font-family: Do Hyeon;">
        <br>
				<form action="pwdchk" style="margin:0px;; padding: 0px; text-align: center;">
					<table style="margin: auto;padding: auto; width: 50%;">
						<tr>
							<td>
								<p
									style="text-align: center; font-size: 25px; color: #333333; font-weight: bold; margin: 0px 0px 0px 0px;">
									현재 비밀번호를 입력해주세요</p>
							</td>
						</tr>
						<tr>
							<td>
								<div class="w-100"></div>
							</td>
						</tr>
						<tr>
							<td><input id="mpwd" name="mpwd" type="password" width="100%" class="form-control">
							</td>
						</tr>
						<tr>
							<td style="padding-top: 10%"><input type="submit" value="확인하기"
								class="btn btn-primary py-3 px-5" style="width: 70%;font-size: 20px;">

							</td>
						</tr>

					</table>
				</form>
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
  <script>
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