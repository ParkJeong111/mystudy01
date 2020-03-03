<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"> <!-- Poppins -->
<style>
.active{
background: '#F85959';
}


.selected {
	border-bottom: 2px solid #F85959;
	color: #F85959;
}

.selected a b{
	color: #F85959;
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
	font-size: 35px;
	letter-spacing: -0.6px;
	text-align: center;
	height: 44px;
	line-height: 42px;
	color: #333333;
	font-family: Do Hyeon;

	cursor: pointer;
	
}

.talk_tab{
border-bottom: 1px solid #e6e6e6;
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
				<section style="font-size: 45px; font-family: Do Hyeon;">
			
					<ul class="talk_tab clearfix" style="margin-top: 1%;">

						<li class="selecthead selected">
						<a href="javascript:void(0);" onclick="restpye(1)"><strong><b>예약내역</b></strong></a></li>
						<li class="selecthead">
						<a href="javascript:void(0);" onclick="restpye(2)"><strong><b>이용완료</b></strong></a></li>
						<li class="selecthead">
						<a href="javascript:void(0);" onclick="restpye(3)"><strong><b>취소환불</b></strong></a></li>
					</ul>
					
				</section>
			</div>
				
					<div id="reservationtarget" class="row reservationlist"style="margin-top: 3%">
					
					<c:forEach var="r" items="${rlist}">
						<div class="col-md-4 ftco-animate ">
							<div class="destination">
								 <a href="javascript:void(0)" onclick="itemdetail(${r.hostdto.hnum},'${r.hostdto.hname }')"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/${r.hostdto.himage }');">
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
										<span style="text-overflow: ellipsis; width:65%;"><i class="icon-map-o"></i>${r.hostdto.haddr }</span> 
									</p>
								</div>
							</div>
						</div>
						</c:forEach>
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
<script>

function itemdetail(hnum, hname) {
	location.href="itemdetail?hnum="+hnum+"&hname="+encodeURI(hname, "UTF-8");
};

$(document).ready(function() {
	$(".selecthead").each(function() {
		$(this).click(function() {
			$(this).addClass("selected"); 
			$(this).siblings().removeClass("selected");
		});
	});

});


function restpye(type) {
	console.log(type)
		$.ajax({
			url : "my_reservationtype?type=" + type,
			datatype : 'json',
			success : function(data) {
				$("#reservationtarget").html("")
				$.each(data, function(key, value){
						$("#reservationtarget").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated'><div class='destination'><a href='javascript:void(0)' onclick='itemdetail("+value.hostdto.hnum+",\""+value.hname+ "\")' class='img img-2 d-flex justify-content-center align-items-center' style='background-image: url(\"${pageContext.request.contextPath}/resources/images/"+value.hostdto.himage+"\");'><div class='icon d-flex justify-content-center align-items-center'><span class='icon-search2'></span></div></a><div class='text p-3'><div class='d-flex'><div class='one'><h3><a href='javascript:void(0)' onclick='itemdetail("+value.hostdto.hnum+",\""+value.hname+ "\")'>"+value.hname+"</a></h3></div><div class='two'><span class='price per-price'>"+value.usedate+"<br></span></div></div><hr><p class='bottom-area d-flex'><span style='text-overflow: ellipsis; width:65%;'><i class='icon-map-o'></i>"+ value.hostdto.haddr+"</span> </p></div></div></div>");
						
						
						
						/* 
						$("#reservationtarget").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated'><div class='destination'>"
																																		+ '<a href="javascript:void(0)" onclick="itemdetail('+  value.hnum + ',' +  value.hname +')" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/'+ value.himage + ');">'
						+"<div class='icon d-flex justify-content-center align-items-center'><span class='icon-search2'></span></div></a><div class='text p-3'><div class='d-flex'><div class='one'><h3><a href='itemdetail?hnum="+value.hostdto.hnum+"'>"+value.hname+"</a></h3></div><div class='two'><span class='price per-price'>"+value.usedate+"<br></span></div></div><hr><p class='bottom-area d-flex'><span style='text-overflow: ellipsis; width:65%;'><i class='icon-map-o'></i>"+ value.hostdto.haddr+"</span> </p></div></div></div>");"
						
						 */
						
						
						/* $("#reservationtarget").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated'><div class='destination'>"
						+ '<a href="javascript:void(0)" onclick="itemdetail('+value.hnum+',' + +value.hname+ +')" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/'+ value.himage + ');">'
						+"<div class='icon d-flex justify-content-center align-items-center'><span class='icon-search2'></span></div></a><div class='text p-3'><div class='d-flex'><div class='one'><h3><a href='itemdetail?hnum="+value.hostdto.hnum+"'>"+value.hname+"</a></h3></div><div class='two'><span class='price per-price'>"+value.usedate+"<br></span></div></div><hr><p class='bottom-area d-flex'><span style='text-overflow: ellipsis; width:65%;'><i class='icon-map-o'></i>"+ value.haddr+"</span> </p></div></div></div>");" */	
								
						
						
						
						
								});
			}
		});
		
	}


</script>
</html>