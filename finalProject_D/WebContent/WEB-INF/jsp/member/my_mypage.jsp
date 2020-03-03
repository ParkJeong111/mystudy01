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
	width: 33.1111%;
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
				<section>
			
					<ul class="talk_tab clearfix" style="margin-top: 1%; font-size: 25px;">

						<li class="selecthead selected">
						<a href="javascript:void(0);" onclick="recent();"><strong><b>최근 본 가맹점</b></strong></a></li>
						<li class="selecthead">
						<a href="javascript:void(0);" onclick="mypoint();"><strong><b>포인트 내역</b></strong></a></li>
						<li class="selecthead">
						<a href="my_passwordcheck;"><strong><b>나의정보수정</b></strong></a></li>
					</ul>
					
				</section>
			</div>
				
					<!-- <div id="target" class="row mypagelist" style="margin-top: 3%">
						<div class="col-md-12 ftco-animate ">
						
							<div class="destination" style="font-size: 18px;">
							<p style="text-align: right;"><strong><b>잔여 포인트 : <span>10point</b></strong></span></p>
								<table style="width: 100%; font-size:20px; text-align: center;">
									<thead style="background-color: #f85959; color: #ffffff">
										<tr><th>구분</th><th>포인트</th><th>일자</th></tr>
									<tbody style="font-family:  Do Hyeon">
										<tr><td>적립</td><td>10 point</td><td>2020-02-06</td></tr>
										<tr><td>적립</td><td>10 point</td><td>2020-02-06</td></tr>
										<tr><td>사용</td><td>5 point</td><td>2020-02-06</td></tr>
									</tbody>
								
								</table>
							</div>
						</div>
					 -->
					
					
					<div id="target" class="row reservationlist"style="margin-top: 3%">
					<c:forEach var="r" items="${rlist}">
						<div class="col-md-4 ftco-animate ">
							<div class="destination">
								 <a href="javascript:void(0)" onclick="itemdetail(${r.hnum},'${r.hname }')"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/${r.himage }');">
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
											<span class="price per-price">${r.rhdate}<br></span>
										</div>
									</div>
									<hr>
									<p class="bottom-area d-flex">
										<span style="text-overflow: ellipsis; width:65%;"><i class="icon-map-o"></i>${r.haddr }</span> 
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



function mypoint() {
		console.log("함수호출!!")
		$.ajax({
			url : "my_point",
			datatype : 'json',
			success : function(data) {
				console.log("성공은했니?")
				$("#target").html("")
				$("#target").append('<div class="col-md-4 ftco-animate fadeInUp ftco-animated"><div class="destination" style="font-size: 18px;"><p style="text-align: left;"><strong><b>잔여 포인트 : <span class="product-price">'+data.mpoint+'P</b></strong></span></p>')
				$("#target").append('<table id="targettable" style="width: 100%; font-size:20px; text-align: center;"><thead style="background-color: #f85959; color: #ffffff"><tr><th>구분</th><th>포인트</th><th>일자</th></tr>')
				console.log("plist :" + data.plist);
				console.log("mpoint :" + data.mpoint);
				
				$.each(data.plist, function(key, value){
					console.log(data);
						/* $("#target").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated'><div class='destination'><a href='javascript:void(0)' onclick='itemdetail("+value.hostdto.hnum+",\""+value.hname+ "\")' class='img img-2 d-flex justify-content-center align-items-center' style='background-image: url(\"${pageContext.request.contextPath}/resources/images/"+value.hostdto.himage+"\");'><div class='icon d-flex justify-content-center align-items-center'><span class='icon-search2'></span></div></a><div class='text p-3'><div class='d-flex'><div class='one'><h3><a href='javascript:void(0)' onclick='itemdetail("+value.hostdto.hnum+",\""+value.hname+ "\")'>"+value.hname+"</a></h3></div><div class='two'><span class='price per-price'>"+value.usedate+"<br></span></div></div><hr><p class='bottom-area d-flex'><span style='text-overflow: ellipsis; width:65%;'><i class='icon-map-o'></i>"+ value.hostdto.haddr+"</span> </p></div></div></div>"); */
						console.log("key :" + key);
						console.log("value :" + value);
						 $("#targettable").append('<tbody style="font-family:  Do Hyeon"><tr><td>'+value.pltype+'</td><td class="product-price">'+value.plpoint+'P</td><td>'+value.pldate+'</td></tr></tbody></table></div></div>')
				});
				$(".product-price").each(function(idx) {
					// 금액에 천단위 콤마추가해주고 맨 뒤에 원을 붙임
					var value = $(this).text();
					$(this).text($.fn.priceBuilder(value));
				});
			}
		});
		
	}
$.fn.priceBuilder = function(price) {
	// 금액에 천단위 콤마 추가해주는 정규표현식
	return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function recent() {
	console.log("함수호출!!")
	$.ajax({
		url : "my_recent",
		datatype : 'json',
		success : function(data) {
			console.log("성공은했니?")
			$("#target").html("")
			$.each(data, function(key, value){
				$("#target").append('<div class="col-md-4 ftco-animate fadeInUp ftco-animated"><div class="destination"><a href="javascript:void(0)" onclick="itemdetail('+  value.hnum + ',\"' +value.hname +'\")" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/'+ value.himage + ');">'
				+'<div class="icon d-flex justify-content-center align-items-center"><span class="icon-search2"></span></div></a><div class="text p-3"><div class="d-flex"><div class="one"><h3><a href="hotel-single.jsp">'+value.hname +'</a></h3></div>'
				+'<div class="two"><span class="price per-price">'+value.rhdate +'<br></span></div></div><hr><p class="bottom-area d-flex"><span style="text-overflow: ellipsis; width:65%;"><i class="icon-map-o"></i>'+value.haddr +'</span></p></div></div></div>');					
					
			});
		}
	});
	
}
 

$(document).ready(function() {
	$(".selecthead").each(function() {
		$(this).click(function() {
			$(this).addClass("selected"); 
			$(this).siblings().removeClass("selected");
		});
	});

});




</script>
</html>