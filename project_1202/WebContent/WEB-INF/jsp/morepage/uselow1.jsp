<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
  <style>

.agreement_area section {
    padding-top: 35px;
    width: 50%;
}
section {
    width: 964px;
    position: relative;
    margin: 0 auto;
}
*, *::before, *::after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

body {
    background-color: #fff;
    text-align: left;
    word-break: break-all;
    *word-break: break-all;
    -ms-word-break: break-all;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

html, body {
    width: 100%;
    height: 100%;
    -webkit-text-size-adjust: 100%;
}
html {
    color: -internal-root-color;
}
*, *::before, *::after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
section:after {
    display: block;
    content: '';
    clear: both;
}
*, *::before, *::after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.agreement_area a {
    margin-top: 15px;
    font-size: 20px;
    color: #808080;
    text-align: center;
    letter-spacing: -0.8px;
    width: 100%;
    display: block;
    height: 70%;
    line-height: 67px;
    border: 1px solid #c0c0c0;
    background: #fff;
}

element.style {
    padding-top: 112px;
}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p, button {
    margin: 0;
    padding: 0;
}
div {
    display: block;
}
  </style>

    
  
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');">
      <div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
    </div>
	<!--  여기에 헤더부분 추가  -->
	<p style = "text-align: center; font-weight: bold; color: #606060; font-size: 30px; padding-top: 25px; padding-bottom: 5px;">
	이용약관 및 정책
	</p>
	<hr>
	<div class="agreement_area container bg_mp" style="padding-top: 30px; padding-bottom: 80px;">
	<section>
				<a href="uselow_detail?num=1" style = "text-decoration: none; color: #777777; font-weight: bold;">이용약관</a>
				<a href="uselow_detail?num=2" style = "text-decoration: none; color: #777777; font-weight: bold;">개인정보처리방침</a>
				<a href="uselow_detail?num=3" style = "text-decoration: none; color: #777777; font-weight: bold;">위치기반 서비스이용약관</a>
				<a href="uselow_detail?num=4" style = "text-decoration: none; color: #777777; font-weight: bold;">청소년 보호정책</a>
				<a href="uselow_detail?num=5" style = "text-decoration: none; color: #777777; font-weight: bold;">취소 및 환불 규정</a>
				<a href="uselow_detail?num=6" style = "text-decoration: none; color: #777777; font-weight: bold;">개인정보 제 3자 제공 동의</a>
				<a href="uselow_detail?num=7" style = "text-decoration: none; color: #777777; font-weight: bold;">포인트 유의사항</a>
			</section>
</div>
		<!-- .section -->


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
		<script src="${pageContext.request.contextPath}/resources/js/range.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
		</body>
</html>