<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<style>
.active{
background: '#F85959';
}


.selected a{
	border-bottom: 3px solid #F85959;
	border-top: 3px solid #F85959;
}

.talk_tab li {
	float: left;
	width: 19.1111%;
	position: relative;
	top: 1px;
	list-style: none;
	
}
.talk_tab li a {
	display: block;
	font-size: 19px;
	letter-spacing: -0.6px;
	text-align: center;
	height: 44px;
	line-height: 42px;
	color: black;
		 font-family: Jua;
	 font-size: 19px;
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
							
			<div class="talk_tab_area" style="margin-top: -100px;">
				<section>
			
					<ul class="talk_tab clearfix" style="margin-top: 1%;">

						<li class="selecthead selected">
						<a href='javasript:void(0);' onclick="restype(1)" >예약내역</a></li>
						<li class="selecthead">
						<a href='javascript:void(0);' onclick="restype(2)">이용완료</a></li>
						<li class="selecthead">
						<a href='javascript:void(0);' onclick="restype(3)">취소환불</a></li>
					</ul>
					
				</section>
			</div>
				
					<div class="row reservationlist"style="margin-top: 3%">
					
					<c:forEach var="r" items="${rlist}">
						<div class="col-md-4 ftco-animate ">
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
<script>
$(document).ready(function() {
	$(".selecthead").each(function() {
		$(this).click(function() {
			$(this).addClass("selected"); 
			$(this).siblings().removeClass("selected");
		});
	});

});

function restype(num) {
	$.ajax({
			url : "myReservationType?type="+num,
			datatype : 'json',
			success : function(data) {
				$("#reservationlist").html("")
				$.each(data, function(key, value){
						$("#reservationlist").append("	<div class='talk_box_area' id='talk_visual135516'> <div class='profile_line'><div class='profile_img'><p class='lv98'><img src='https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg' class='profile' alt=''></p></div><div class='profile_name'><strong>"+value.mid+"</strong><p><a href='/' class='header_logo'> <img src='https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg' alt=''></a></p></div>"+
									"<div class='profile_date'><p>"+ value.ibdate +"</p></div></div><div class='talk_view_btn' OnClick=\"location.href ='talk_detail?bnum="+value.ibnum+"'\" style='cursor: pointer;'><p class='talk_pic'><span class='manage'>중고장터</span></p>"+
									"<div class='talk_text'><strong>"+value.ibtitle+"</strong><p class='more'>"+value.ibcontent+"</p></div><div class='img_box' style='width: 608px;'><img src='${pageContext.request.contextPath}/resources/images/"+value.ibimage+"' alt=''></div></div><div class='talk_count_btn'><div class='talk_count clearfix'></p><div class='comm_mark_line'><p class='comm_line'>댓글 <span>0</span></p></div></div>"+
									"<div class='talk_btn clearfix'><a class='talk_money_btn' href='#'>"+value.ibmoney+"원</a><a class='talk_comm_btn' style='width:50%;' href='talk_detail?ibnum="+value.ibnum+"#comment_box'>댓글쓰기</a></div></div></div>")
				    });
			}
		});
		
	}

</script>
</html>