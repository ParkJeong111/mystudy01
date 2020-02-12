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

body, div, dl, dt, dd, ol, h1, h2, h3, h4, h5, form, fieldset, p, button
	{
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
	<div class="overlay"></div>
	<div class="container" style="margin-top: -40%;"></div>
</div>
<!--  ���⿡ ����κ� �߰�  -->
<p
	style="text-align: center; font-weight: bold; color: #606060; font-size: 30px; padding-top: 25px; padding-bottom: 5px;">
	����</p>
<hr>
<div class="talk_header" style="">
	<section class="ftco-section ftco-degree-bg" style="padding-top: 10px;">
		<div class="noticeList_area container"
			style="padding-top: 112px; padding-bottom: 80px;">
			<section>
				<div class="middle notice_wrap">
					<div class="sectionArea">
						<div class="tabContainer">
							<div id="tab_notice" class="tabConents"></div>
							<form action="resInsert" method="post" id="insertForm">
								<div style="width: 993px; height: 950px; margin: auto;"
									id="totaldiv">
									<div id=left
										style="display: inline-block; float: left; width: 564px; height: 892px; margin-right: 88px; margin-top: 40px;">
										<c:choose>
											<c:when test="${id==null }">
												<section>
													<h3>������ ����</h3>
													<br> <strong style="font-size: 18px;">������ �̸�</strong><br>
													<p>
														<input
															style="width: 560px; height: 44px; font-size: 16px;"
															type="text" placeholder="üũ�� �� �ʿ��� ���� �Դϴ�." id="nname"
															class="reservid" name="nname"> <span
															style="margin-top: -15px; font-size: 14px; color: red; visibility: hidden;"
															id="here"><br>�ѱ�, ����, ���ڸ� �Է��� �����մϴ�.</span>
													</p>
													<br> <strong style="font-size: 18px;">�޴��� ��ȣ</strong>
													<br> <span style="font-size: 14px;">���� ���� ��ȣ��
														���� �Ƚɹ�ȣ�� ���ҿ� ���۵˴ϴ�.</span> <br> <input type="text"
														id="nphone"
														style="width: 454px; height: 44px; font-size: 16px"
														placeholder="üũ�� �� �ʿ��� ���� �Դϴ�." name="nphone">
													<button type="button"
														style="width: 100px; height: 52px; background: #CCCCCC; color: white; border: 0; outline: 0; cursor: pointer;">������ȣ
														����</button>
												</section>
												<br>
												<br>
												<br>
												<br>
												<br>
												<div style="display: block;">
													<a href="kloginForm"><img
														src="resources/images/icon/reserv_detail.png"> </a>
												</div>
											</c:when>

											<c:otherwise>
												<section>
													<h3>������ ����</h3>
													<br> <strong style="font-size: 18px;">������ �̸�</strong><br>
													<p>
														<input
															style="width: 560px; height: 44px; font-size: 16px;"
															type="text" value="${name }" id="nname" class="reservid">
														<input type="hidden" value="${id }" name="mid"> <span
															style="margin-top: -15px; font-size: 14px; color: red; visibility: hidden;"
															id="here"><br>�ѱ�, ����, ���ڸ� �Է��� �����մϴ�.</span>
													</p>
													<br> <strong style="font-size: 18px;">�޴��� ��ȣ</strong>
													<br> <span style="font-size: 14px;">���� ���� ��ȣ��
														���� �Ƚɹ�ȣ�� ���ҿ� ���۵˴ϴ�.</span> <br> <input type="text"
														id="nphone"
														style="width: 454px; height: 44px; font-size: 16px"
														value="${phone }">
													<button type="button"
														style="width: 100px; height: 52px; background: #CCCCCC; color: white; border: 0; outline: 0; cursor: pointer;">������ȣ
														����</button>
												</section>
												<br>
												<br>
												<br>
												<br>
												<br>
											</c:otherwise>
										</c:choose>
										<section>
											<h3>�������� ����</h3>
											<select
												style="width: 288px; height: 48px; font-size: 18px; cursor: pointer;">
												<option>ī����� (�ſ�, üũ)</option>
												<option>�޴��� ����</option>
												<option>PAYCO ����</option>
												<option>���̹����� ����</option>
											</select>
										</section>

										<section>
											<p style="width: 564px; height: 30px; font-size: 18px;">
												<input type="checkbox" id="rbox0" class="inp_chk_02"><label
													for="rbox0"><b>��ü ����</b></label>

											</p>
											<p style="font-size: 18px;">
												<input type="checkbox" id="rbox1" class="inp_chk_02"><label
													for="rbox1">�����̿��Ģ �� ���/ȯ�ұ��� ���� <b>(�ʼ�)</b>
												</label>

											</p>
											<p style="font-size: 18px;">
												<input type="checkbox" id="rbox2" class="inp_chk_02"><label
													for="rbox2">�������� ���� �� �̿� ����</label> <b>(�ʼ�)</b>
											</p>
											<p style="font-size: 18px;">
												<input type="checkbox" id="rbox3" class="inp_chk_02"><label
													for="rbox3">�������� �� 3�� ���� ���� </label> <b>(�ʼ�)</b>
											</p>
											<p style="font-size: 18px;">
												<input type="checkbox" id="rbox4" class="inp_chk_02"><label
													for="rbox4">�� 14�� �̻��Դϴ�.</label> <b>(�ʼ�)</b>

											</p>
										</section>
									</div>
									<div id="right"
										style="width: 310px; height: 733px; margin-top: 40px; margin-right: 31px; float: right; color: rgba(0, 0, 0, 0.87); background-color: #FAFAFA">
										<section>
											<p class="name"
												style="font-size: 20px; margin-left: 25px; margin-top: 40px;">
												<strong style="color: rgba(0, 0, 0, 0.38); font-size: 18px">��ü�̸�</strong><br>
												${host.hname}<%-- <input type="hidden" value="${host.hname}"
													id="hname" name="hname"><br> --%>
											</p>
											<p style="font-size: 20px; margin-left: 25px;">
												<strong style="color: rgba(0, 0, 0, 0.38); font-size: 18px;">�̿��</strong>
												<br>${hostgoods.hgname}
											</p>
											<br>
										</section>

										<hr style="width: 270px;">
										<section>
											<br>
											<p style="font-size: 16px; margin-left: 25px;">
												<strong> <b
													style="color: rgba(0, 0, 0, 0.87); font-size: 18px;">���� �ݾ�</b> (VAT ����)
												</strong> <br> <span style="font-size: 24px; color: #E61C51;"><b>${hostgoods.hgmoney} <%--<input
														type="hidden" value="${hostgoods.hgmoney}" name="hgmoney"><br></b></span> --%>
											</p>

											<ul style="font-size: 16px;">
												<li style="font-size: 16px; padding-right: 16px;">�ش�
													�����ݾ��� ����, �̿�ᰡ ���Ե� �ݾ��Դϴ�</li>
												<li style="font-size: 16px; padding-right: 16px;">�����Ϸ�
													�� <span style="color: #E61C51;">������ �̸�</span>���� �ٷ� <span
													style="color: #E61C51;">����</span>�Ͻø� �˴ϴ�.
												</li>
											</ul>
											<button type="button" id="insert"
												style="width: 310px; height: 56px; border: 0; outline: 0; cursor: pointer; color: #FFFFFF; font: 15px; background-color: #F2114C; margin-top: 90px; font-size: 15px;">�����ϱ�
											</button>
										</section>
									</div>
								</div>
							</form>
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