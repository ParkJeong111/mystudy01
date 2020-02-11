<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>


  <style>
  .opc_bg{
  text-align: center;
  width: 100%
  
  }
  .lazy {
  width: 430px;
  height: 280px;
  padding-bottom: 10px;
  }

.event_area .eventNotice {
    font-size: 0;
}
.event_area .eventBox:nth-child(2n) {
    margin-left: 20px;
}
.event_area .eventBox {
    width: calc(50% - 10px);
    display: inline-block;
    position: relative;
    border: 1px solid #e6e6e6;
    margin-bottom: 20px;
    height: 267px;
}
.event_area section {
    padding-top: 30px;
}
section {
    width: 80%;
    position: relative;
    margin: 0 auto;
}
*, *::before, *::after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
section {
    display: block;
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

body, input, button {
    font-family: 'Noto Sans KR', Dotum, Sans-serif;
    font-size: 16px;
    color: #333333;
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
	이벤트
	</p>
	<hr>
	<!--  
	<div class="talk_header" style="">
					<div class="talk_tab_area" >
						<section>
							<ul class="talk_tab clearfix" style = "font-weight: bold; ">
								<li class="" style = "margin-left: 70px;"><a href = "" data-talk_key="6" data-tc_key="0"
									data-u_type="1">진행중인 이벤트</a></li>
								<li class="" style = "margin-right: 70px;"><a href = "" data-talk_key="1" data-tc_key="0"
									data-u_type="1">종료된 이벤트</a></li>
							</ul>
							<hr>
						</section>
					</div> -->
					<!--  <li class="active">-->
		<section>
		<div class="eventNotice"><!-- // 통이미지 사용 !-->
									<div class="eventBox">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/207">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20200113/6aaf4fdc7fc4397185a77f371eed1ae4.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20200113/6aaf4fdc7fc4397185a77f371eed1ae4.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20200113/6aaf4fdc7fc4397185a77f371eed1ae4.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20200113/6aaf4fdc7fc4397185a77f371eed1ae4.jpg" style="">
					</a>
				</div>
				

								</div><!-- // eventBox !-->
									<div class="eventBox">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/197">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191129/87f600627fc063f00a5e474f1d5c120e.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191129/87f600627fc063f00a5e474f1d5c120e.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191129/87f600627fc063f00a5e474f1d5c120e.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191129/87f600627fc063f00a5e474f1d5c120e.jpg" style="">
					</a>
				</div>

								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/201">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191213/7568d14d16fd2b77859a958451f3b4df.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191213/7568d14d16fd2b77859a958451f3b4df.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191213/7568d14d16fd2b77859a958451f3b4df.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191213/7568d14d16fd2b77859a958451f3b4df.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/198">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191202/85d96b69da295b0471a12d0d61e3edc0.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191202/85d96b69da295b0471a12d0d61e3edc0.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191202/85d96b69da295b0471a12d0d61e3edc0.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191202/85d96b69da295b0471a12d0d61e3edc0.jpg" style="">
						
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/194">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191121/9d70cf9e05e1c2bb52d67dfac05d4dba.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191121/9d70cf9e05e1c2bb52d67dfac05d4dba.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191121/9d70cf9e05e1c2bb52d67dfac05d4dba.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191121/9d70cf9e05e1c2bb52d67dfac05d4dba.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/187">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191030/f852df74eec510fc5ca49a07e3094aed.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191030/f852df74eec510fc5ca49a07e3094aed.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191030/f852df74eec510fc5ca49a07e3094aed.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191030/f852df74eec510fc5ca49a07e3094aed.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/186">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191029/2eac1d5b1c6c0ebcd1bc602e04451f8b.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191029/2eac1d5b1c6c0ebcd1bc602e04451f8b.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191029/2eac1d5b1c6c0ebcd1bc602e04451f8b.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191029/2eac1d5b1c6c0ebcd1bc602e04451f8b.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/185">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191025/be0fe7bfd9a4d0cb8e609f989a82671d.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191025/be0fe7bfd9a4d0cb8e609f989a82671d.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191025/be0fe7bfd9a4d0cb8e609f989a82671d.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191025/be0fe7bfd9a4d0cb8e609f989a82671d.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/183">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191014/74577988885044bb3e0cf1c0a7a2d1f3.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191014/74577988885044bb3e0cf1c0a7a2d1f3.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191014/74577988885044bb3e0cf1c0a7a2d1f3.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191014/74577988885044bb3e0cf1c0a7a2d1f3.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<div class="eventBox winner">
				<div class="opc_bg">
										<div class="boxState">
						<div class="msg">
							<i class="icon"></i>
						</div>
					</div>
										<a href="/more/event_info/181">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191004/a9ee9f87aab5256cdc1654d35c390046.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191004/a9ee9f87aab5256cdc1654d35c390046.jpg" style="">
						<img data-orig="https://img.moolban.com/unsafe/admin/event/20191004/a9ee9f87aab5256cdc1654d35c390046.jpg" class="lazy" src="https://img.moolban.com/unsafe/admin/event/20191004/a9ee9f87aab5256cdc1654d35c390046.jpg" style="">
					</a>
				</div>

								<div class="eventUrlBox" style="">
				</div>
								</div><!-- // eventBox !-->
									<!-- // eventBox !-->
					</div><!-- // eventNotice !-->
	</section>
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