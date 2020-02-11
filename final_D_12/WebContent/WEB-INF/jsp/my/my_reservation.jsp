<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

	<section class="ftco-section"
		style="background: white;">
		<div class="container">
			<div class="row d-md-flex">
				<div class="col-md-6 ftco-animate p-md-5" style="margin: auto;">
					<div class="row">
						<div class="col-md-12 nav-link-wrap mb-5">
							<div class="nav ftco-animate nav-pills" id="v-pills-tab"
								role="tablist" aria-orientation="vertical"
								style="margin-top: -100px;">
								<a class="nav-link active" id="v-pills-whatwedo-tab"
									data-toggle="pill" href="#v-pills-whatwedo" role="tab"
									aria-controls="v-pills-whatwedo" aria-selected="true">예약내역</a>

								<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill"
									href="#v-pills-mission" role="tab"
									aria-controls="v-pills-mission" aria-selected="false">이용완료</a>

								<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill"
									href="#v-pills-mission" role="tab"
									aria-controls="v-pills-mission" aria-selected="false">취소환불</a>
							</div>
						</div>
						<div class="col-md-12 d-flex align-items-center">

							<div class="tab-content ftco-animate" id="v-pills-tabContent"
								style="margin-top: -50px; width: 400px; height: 300px;">

								<div class="tab-pane fade show active" id="v-pills-whatwedo"
									role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">

									<div class="destination">
										<a href="hotel-single.jsp"
											class="img img-2 d-flex justify-content-center align-items-center"
											style="background-image: url('${pageContext.request.contextPath}/resources/images/reservation/reserv1.jpg');">
											<div
												class="icon d-flex justify-content-center align-items-center">
												<span class="icon-search2"></span>
											</div>
										</a>
										<div class="text p-3">
											<div class="d-flex">
												<div class="one">
													<h3>
														<a href="hotel-single.jsp"><h2>
																<b>마리아나호</b>
															</h2></a>
													</h3>
												</div>
												<div class="two" style="padding-left: 20px;">
													<span class="price per-price">예약내역<br></span>
												</div>
											</div>
											<hr>
											<p class="bottom-area d-flex">
												<span><i class="icon-map-o"></i> 길찾기</span> <span
													class="ml-auto"><a href="#">방문확인</a></span>
											</p>
										</div>
									</div>
								</div>

								<div class="tab-pane fade" id="v-pills-mission" role="tabpanel"
									aria-labelledby="v-pills-mission-tab">
									<div class="destination">
										<a href="hotel-single.jsp"
											class="img img-2 d-flex justify-content-center align-items-center"
											style="background-image: url('${pageContext.request.contextPath}/resources/images/reservation/reserv1.jpg');">
											<div
												class="icon d-flex justify-content-center align-items-center">
												<span class="icon-search2"></span>
											</div>
										</a>
										<div class="text p-3">
											<div class="d-flex">
												<div class="one">
													<h3>
														<a href="hotel-single.jsp"><h2>
																<b>마리아나호</b>
															</h2></a>
													</h3>
												</div>
												<div class="two" style="padding-left: 20px;">
													<span class="price per-price">이용완료<br></span>
												</div>
											</div>
											<hr>
											<p class="bottom-area d-flex">
												<span><i class="icon-map-o"></i> 길찾기</span> <span
													class="ml-auto"><a href="#">방문확인</a></span>
											</p>
										</div>
									</div>
								</div>

								<div class="tab-pane fade" 
									aria-labelledby="v-pills-mission-tab">
									<div class="destination">
										<a href="hotel-single.jsp"
											class="img img-2 d-flex justify-content-center align-items-center"
											style="background-image: url('${pageContext.request.contextPath}/resources/images/reservation/reserv1.jpg');">
											<div
												class="icon d-flex justify-content-center align-items-center">
												<span class="icon-search2"></span>
											</div>
										</a>
										<div class="text p-3">
											<div class="d-flex">
												<div class="one">
													<h3>
														<a href="hotel-single.jsp"><h2>
																<b>마리아나호</b>
															</h2></a>
													</h3>
												</div>
												<div class="two" style="padding-left: 20px;">
													<span class="price per-price">취소환불<br></span>
												</div>
											</div>
											<hr>
											<p class="bottom-area d-flex">
												<span><i class="icon-map-o"></i> 길찾기</span> <span
													class="ml-auto"><a href="#">방문확인</a></span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div id="accordion">
						<div class="row"></div>
					</div>
				</div>
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
</html>