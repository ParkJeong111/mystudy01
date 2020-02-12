<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<style>
.active{
background: '#F85959';
}

</style>


	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>




	<section class="ftco-section ftco-degree-bg"
		style="background: white;  margin-top: 3%;">
		<div class="container" >
			<div class="row">

				<div class="col-lg-9" style="margin: auto;">
							<div class="nav ftco-animate nav-pills" id="v-pills-tab"
								role="tablist" aria-orientation="vertical"
								style="margin-top: -100px; text-align: center;">
								<!-- <a class="nav-link active" id="v-pills-whatwedo-tab"
									data-toggle="pill" href="#v-pills-whatwedo" role="tab"
									aria-controls="v-pills-whatwedo" aria-selected="true" >예약내역</a>

								<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill"
									href="#v-pills-mission" role="tab"
									aria-controls="v-pills-mission" aria-selected="false">이용완료</a>

								<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill"
									href="#v-pills-mission" role="tab"
									aria-controls="v-pills-mission" aria-selected="false">취소환불</a>-->
								<a class="nav-link" id="" data-toggle="" href="" role=""aria-controls="" aria-selected="" >
								예약내역</a>
								<a class="nav-link" id="" data-toggle="" href="" role=""aria-controls="" aria-selected="" >
								이용완료</a>
								<a class="nav-link" id="" data-toggle="" href="" role=""aria-controls="" aria-selected="" >
								취소환불</a>	
									
							</div>
				
					<div class="row"style="margin-top: 3%">
					
					<c:forEach var="r" items="${rlist}">
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="hotel-single.jsp"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/reservation/${r.hostdto.himage }');">
									<div class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="hotel-single.jsp">${r.hname } </a>
											</h3>
										</div>
										<div class="two">
											<span class="price per-price">${r.usedate}<br></span>
										</div>
									</div>
									<hr>
									<p class="bottom-area d-flex">
										<span style="text-overflow: ellipsis; width:65%;"><i class="icon-map-o"></i>${r.hostdto.haddr }</span> <span
											class="ml-auto"><a href="#">상세보기</a></span>
									</p>
								</div>
							</div>
						</div>
						</c:forEach>

				<!-- .col-md-8 -->
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