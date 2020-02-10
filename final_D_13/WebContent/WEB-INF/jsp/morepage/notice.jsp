<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html lang="ko">
<%@ include file="header.jsp"%>
<style>
tp {
	font-weight: bold;
}

element.style {
	display: none;
}

element.style {
	padding-top: 112px;
}

div {
	display: block;
}

body, div, dl, dt, dd, ol, h1, h2, h3, h4, h5, form, fieldset, p,
	button {
	margin: 0;
	padding: 0;
}

*, *::before, *::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

div {
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
	box-sizing: border-box
}



h2 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

.noticeList_area ol a h2 {
	line-height: 1.3;
	font-size: 18px;
	font-weight: 500;
	margin-bottom: 5px;
}

.noticeList_area ol a {
	padding: 25px 18px;
	display: block;
	border-bottom: 1px solid #e6e6e6;
	background:
		url(https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_02.png)
		top 36px right no-repeat;
	transition: inherit;
	-webkit-transition: inherit;
	-moz-transition: inherit;
}


.more_roll_btn {
	margin-top: 50px;
}

li {
	list-style: none;
}

ol {
	display: block;
	list-style-type: decimal;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

.more_roll_btn a {
	width: 482px;
	height: 69px;
	line-height: 67px;
	border: 1px solid #ff724c;
	background: #fff;
	border-radius: 3em;
	display: block;
	margin: 0 auto;
	color: #ff724c;
	font-weight: 500;
	font-size: 20px;
	text-align: center;
}

html, body {
	width: 100%;
	height: 100%;
	-webkit-text-size-adjust: 100%;
}

*, *::before, *::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

*, *::before, *::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
</style>

	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');">
		<div class="overlay"></div>
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>
	<!--  ���⿡ ����κ� �߰�  -->
	<p
		style="text-align: center; font-weight: bold; color: #606060; font-size: 30px; padding-top: 25px; padding-bottom: 5px;">
		��������</p>
	<hr>
	<div class="talk_header" style="">
		<section class="ftco-section ftco-degree-bg"
			style="padding-top: 10px;">
			<div class="noticeList_area container"
				style="padding-top: 112px; padding-bottom: 80px;">
				<section>
					<div class="middle notice_wrap">
						<div class="sectionArea">
							<!-- <ul class="tabBtn">
					<li class="active"><a href="/webview/notice_list">��������</a></li>
					<li ><a href="/webview/news_list">��к���</a></li>
				</ul> -->

							<div class="tabContainer">
								<div id="tab_notice" class="tabConents">
									<ol data-start_key="0" data-offset="0" data-limit="5"
										data-last_offset="">

										<a href="/more/notice_info/208" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">�������� ���� ������</span>
												</h2>
												<p style="color: #777777;">2020.01.17</p>
										</li>
										</a>
										<a href="/more/notice_info/206" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] ���ݰ��� X ����ȣ ũ�������� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2020.01.06</p>
										</li>
										</a>
										<a href="/more/notice_info/205" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�ȳ�] 2020�� ����ǥ ���� ���� �ȳ�</span>
												</h2>
												<p style="color: #777777;">2020.01.03</p>
										</li>
										</a>
										<a href="/more/notice_info/204" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">�Ƶ�2019, ���Ǵ��̾� 2020</span>
												</h2>
												<p style="color: #777777;">2019.12.31</p>
										</li>
										</a>
										<a href="/more/notice_info/203" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] ȭ��Ʈũ�������� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.12.27</p>
										</li>
										</a>
										<a href="/more/notice_info/202" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] ���ݰ��� ������ ��� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.12.27</p>
										</li>
										</a>
										<a href="/more/notice_info/200" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">�ո� ����� �ܿ� �������� �ȳ�</span>
												</h2>
												<p style="color: #777777;">2019.12.12</p>
										</li>
										</a>
										<a href="/more/notice_info/199" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] �������� ���߱⿵�� 2�� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.12.03</p>
										</li>
										</a>
										<a href="/more/notice_info/196" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[TIP] ���� ������ ����! ����Ʈ �¼���� Open!</span>
												</h2>
												<p style="color: #777777;">2019.11.28</p>
										</li>
										</a>
										<a href="/more/notice_info/193" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] �������� ���߱⿵�� 1�� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.11.20</p>
										</li>
										</a>
										<a href="/more/notice_info/191" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] �ٽ� ���ƿ� ���ÿ��ຸ�� �̺�Ʈ 2ź ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.11.07</p>
										</li>
										</a>
										<a href="/more/notice_info/190" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] �ֲٹ� ������� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.11.06</p>
										</li>
										</a>
										<a href="/more/notice_info/189" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] ���� �ҷ��� in��õ���� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.11.06</p>
										</li>
										</a>
										<a href="/more/notice_info/184" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] 2019 �ֲٹ� �丮�� ���ߴ�ȸ �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.10.21</p>
										</li>
										</a>
										<a href="/more/notice_info/182" style="text-decoration: none;">
											<li>
												<h2>
													<span class="tp">[�̺�Ʈ] �ٽ� ���ƿ� ���ÿ��ຸ�� �̺�Ʈ ��÷�� ��ǥ</span>
												</h2>
												<p style="color: #777777;">2019.10.07</p>
										</li>
										</a>
									</ol>

									<!-- ������ -->
									<div class="more_roll_btn" style="display: none;">
										<a>������</a>
									</div>
									<!--// ������ -->
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</section>
		<!-- .section -->

		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/range.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>