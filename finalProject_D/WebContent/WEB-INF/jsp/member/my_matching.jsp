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
	font-size: 19px;
	letter-spacing: -0.6px;
	text-align: center;
	height: 44px;
	line-height: 42px;
	color: #606060;;
	font-family: "Poppins", Arial, sans-serif;
	 font-size: 19px;
	cursor: pointer;
	
}

.talk_tab{
border-bottom: 1px solid #e6e6e6;
}


</style>
<link href="css/bootstrap.min.css" rel="stylesheet">


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
						<a href="javascript:void(0);" onclick="matching()"  style = "margin: auto;"><strong><b>매칭중</b></strong></a></li>
						<li class="selecthead selected1">
						<a href="javascript:void(0);" onclick="matchingres()"  style = "margin: auto;"><strong><b>매칭완료</b></strong></a></li>
						
					</ul>
					
				</section>
			</div>
				
					<div id="reservationtarget" class="row reservationlist"style="margin-top: 3%">
					
					<c:forEach var="r" items="${list.req}">
						<div class="col-md-4 ftco-animate ">
							<div class="destination">
								<a href="#"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/matching.JPG');
									">
									<div class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="hotel-single.jsp">${r.rmid} </a>
											</h3>
										</div>
										<div class="two">
											<span class="price per-price">${r.rmcount}<br></span>
										</div>
									</div>
									<hr>
									<p class="bottom-area d-flex">
										<span style="text-overflow: ellipsis; width:65%;"><i class="icon-map-o"></i>${r.rmlocation}</span> 
									</p>
								</div>
							</div>
						</div>
						</c:forEach>
						<br>
						<hr>
						  
						<c:forEach var="r" items="${list.res}">
						<div class="col-md-4 ftco-animate ">
							<div class="destination">
								<a href="itemdetail?hnum=${r.rmnum}"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/about.jpg');">
									<div class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="hotel-single.jsp">${r.mrresult} </a>
											</h3>
										</div>
										<div class="two">
											<span class="price per-price">${r.rmcount}<br></span>
										</div>
									</div>
									<hr>
									<p class="bottom-area d-flex">
										<span style="text-overflow: ellipsis; width:65%;"><i class="icon-map-o"></i>${r.rmlocation}</span> 
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
	
<div id="matchingModal" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style = "font-family: Jua;">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="myModalLabel" style = "margin: auto;">랜덤 매칭 완료 내역</h4>
</div>
<form action="randommatching" method="post">
<div class="modal-body">
<p>매칭 완료 아이디</p>
<p id = "resid"></p>
<hr>
<p>출조 지역</p>
<p id = "reslocation"></p>
<hr>
<p>출조 유형</p>
<p id = "restype"></p>
<hr>
<p>나이대</p>
<p id = "resage"></p>
<hr>
<p>시간대</p>
<p id = "restime"></p>
<hr>
<p>성별</p>
<p id = "ressex"></p>
<hr>
<div style = "margin-left: 400px;">
<button type="button" class="btn btn-default" id="closeModalBtn" onclick="resval()" >취소</button>
</div>
</div>
</div>
</form>
</div>
</div>
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
$(document).on("click", "#modalmatch", function(){
	$('#matchingModal').modal('show');
});

$(document).on("click", "#closeModalBtn", function(){
	$('#matchingModal').modal('hide');
});

	
$(document).ready(function() {
	$(".selecthead").each(function() {
		$(this).click(function() {
			$(this).addClass("selected"); 
			$(this).siblings().removeClass("selected");
		});
	});
	

});


function matching() {
		$.ajax({
			url : "my_matchinglist",
			datatype : 'json',
			success : function(data) {
				$("#reservationtarget").html("")
				$.each(data, function(key, value){
						$("#reservationtarget").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated'><div class='destination'><a href='#' class='img img-2 d-flex justify-content-center align-items-center' style='background-image: url(\"${pageContext.request.contextPath}/resources/images/matching.JPG\");'><div class='icon d-flex justify-content-center align-items-center'><span class='icon-search2'></span></div></a><div class='text p-3'><div class='d-flex'><div class='one'><h3><a href='itemdetail?hnum="+value.rmnum+"'>"+"매칭중"+"</a></h3></div><div class='two'><span class='price per-price'>"+value.rmcount+"<br></span></div></div><hr><p class='bottom-area d-flex'><span style='text-overflow: ellipsis; width:65%;'><i class='icon-map-o'></i>&nbsp;&nbsp;"+ value.rmlocation+"</span> </p></div></div></div>");
								});
			}
		});
		
	}
	
function matchingres() {
		$.ajax({
			url : "my_matchingresult",
			datatype : 'json',
			success : function(data) {
				$("#reservationtarget").html("")
				$.each(data, function(key, value){
						$("#reservationtarget").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated' id = 'modalmatch' style = 'cursor: pointer;'><div class='destination'><a class='img img-2 d-flex justify-content-center align-items-center'  style='background-image: url(\"${pageContext.request.contextPath}/resources/images/complete.JPG\");'><div class='icon d-flex justify-content-center align-items-center'><span class='icon-search2'></span></div></a><div class='text p-3'><div class='d-flex'><div class='one'><h3><a>"+"매칭완료("+value.mrresult+")</a></h3></div><div class='two'><span class='price per-price'>"+value.rmcount+"<br></span></div></div><hr><p class='bottom-area d-flex'><span style='text-overflow: ellipsis; width:65%;'><i class='icon-map-o'></i>&nbsp;&nbsp;"+ value.rmlocation+"</span> </p></div></div></div>");
						$('#resid').html(value.mrresult);
						$('#reslocation').html(value.rmlocation);
						$('#restype').html(value.rmtype);
						$('#resage').html(value.rmage);
						$('#restime').html(value.rmtime);
						$('#ressex').html(value.rmsex);
				});
				
				
			}
		});
		
	}




</script>
</html>