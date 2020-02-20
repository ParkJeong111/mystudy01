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

input[type=checkbox] {
	display: none;
}

input[type=checkbox]+label {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background:
		url('${pageContext.request.contextPath}/resources/images/icon/checkbox.png')
		left/22px no-repeat;
}

input[type=checkbox]:checked+label {
	background-image:
		url('${pageContext.request.contextPath}/resources/images/icon/star1.png');
}
</style>

<!-- END nav -->

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');">
	<div class="overlay"></div>
	<div class="container" style="margin-top: -40%;"></div>
</div>
<!--  여기에 헤더부분 추가  -->
<p
	style="text-align: center; font-weight: bold; color: #606060; font-size: 30px; padding-top: 25px; padding-bottom: 5px;">
	결제</p>
<hr>
<div class="talk_header"
	style="font-family: 'Poppins', Arial, sans-serif; margin-bottom: 10%">
	<section class="ftco-section ftco-degree-bg" style="padding-top: 10px;">
		<div class="noticeList_area container">
			<section>
				<div class="middle notice_wrap">
					<div class="sectionArea">
						<div class="tabContainer">
							<div id="tab_notice" class="tabConents"></div>
							<form action="resInsert" method="post" id="insertForm">
								<input type="hidden" name="hnum" value="${host.hnum}"> <input
									type="hidden" id="hgnum" name="hgnum"
									value="${hostgoods.hgnum}"> <input type="hidden"
									id="hgmoney" name="rmoney" value="${hostgoods.hgmoney}">
								<div style="width: 80%; margin: auto;" id="totaldiv">
									<!-- 구매정보 시작 -->
									<div id=left
										style="display: inline-block; float: left; width: 60%;">
										<section>
											<h2>
												<b>구매 정보</b>
											</h2>
											<!-- 구매자 -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>구매자</b></strong><br>
											<p>
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="text" name="mid" value="${sessionScope.m.mid}">
											</p>
											<!-- 사용일자 -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>사용일자</b></strong><br>
											<p>
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="text" id="datepicker" name="usedate">
											</p>
											<br>
											<!-- 포인트사용 -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>포인트</b></strong>
											<strong style="font-size: 12px; color: #aaaaaa;">&nbsp;&nbsp;&nbsp;사용 가능 포인트 : ${sessionScope.m.mpoint}</strong>
											<br>
											<p>
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="number" id="mpoint" name="mpoint" value="0" min="1000" max="${sessionScope.m.mpoint}" step="100">
											</p>
											<br>
											<!-- 결제수단 시작 -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>결제수단
													선택</b></strong> <select
												style="width: 80%; height: 48px; font-size: 18px; cursor: pointer;">
												<option>카드결제 (신용, 체크)</option>
												<option>휴대폰 결제</option>
												<option>PAYCO 결제</option>
												<option>네이버페이 결제</option>
											</select>
											<!-- 결제수단 끝 -->
										</section>
										<br>
										<!-- 결제동의 시작 -->
										<strong style="font-size: 18px; color: #aaaaaa;"><b>결제동의</b></strong>
										<section style="margin-top: 3%;">
											<p style="width: 564px; height: 30px; font-size: 18px;">
												<input type="checkbox" id="rbox0" class="inp_chk_02"><label
													for="rbox0"> &nbsp; <b>전체 동의</b></label>

											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox1" class="inp_chk_02"><label
													for="rbox1"> &nbsp; 취소/환불규정 동의 <b>(필수)</b>
												</label>

											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox2" class="inp_chk_02"><label
													for="rbox2"> &nbsp; 개인정보 수집 및 이용 동의</label> <b>(필수)</b>
											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox3" class="inp_chk_02"><label
													for="rbox3"> &nbsp; 개인정보 제 3자 제공 동의 </label> <b>(필수)</b>
											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox4" class="inp_chk_02"><label
													for="rbox4"> &nbsp; 만 14세 이상입니다.</label> <b>(필수)</b>

											</p>
										</section>
										<!-- 결제동의 끝 -->
									</div>
									<!-- 구매정보 끝 -->
									<!-- 업체, 이용권 정보 시작 -->
									<div id="right"
										style="padding-left: 2%; padding-right: 2%; width: 30%; margin-right: 31px; float: right; color: rgba(0, 0, 0, 0.87); background-color: #FAFAFA">
										<section>
											<p class="name" style="font-size: 20px; margin-top: 5%;">
												<strong style="color: rgba(0, 0, 0, 0.38); font-size: 18px"><b>업체이름</b></strong><br>
												<b><strong>${host.hname}</strong></b><input type="hidden"
													value="${host.hname}" id="hname" name="hname"><br>
											</p>
											<p style="font-size: 20px;">
												<strong style="color: rgba(0, 0, 0, 0.38); font-size: 18px;"><b>이용권</b></strong>
												<br> <select id="hgselect"
													style="width: 80%; height: 48px; font-size: 18px; cursor: pointer;">
													<c:forEach var="e" items="${host.hgdto}">
														<c:choose>
															<c:when test="${e.hgnum == hostgoods.hgnum}">
																<option selected="selected" value='${e.hgnum}'>${e.hgname}</option>
															</c:when>
															<c:otherwise>
																<option value="${e.hgnum}">${e.hgname}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</select>
											</p>
										</section>
										<hr style="width: 98%;">
										<section>
											<!-- 결제 금액 -->
											<p style="font-size: 16px;">
												<strong> <b
													style="color: rgba(0, 0, 0, 0.87); font-size: 18px;">결제
														금액</b> (VAT 포함)
												</strong> <br> <span class="product-price"
													style="font-size: 24px; color: #f85959;">
													${hostgoods.hgmoney} </span>
											</p>
											<hr style="width: 98%;">
											<ul style="font-size: 16px; padding-left: 0%;">
												<li style="font-size: 16px;">해당 결제금액은 세금, 이용료가 포함된
													금액입니다.</li>
												<li style="font-size: 16px;">결제 당일부터 사용이 가능합니다.</li>
												<li style="font-size: 16px;">사용방법 : 결제 후 <span
													style="color: #f85959;">직접 방문</span> 시 제시
												</li>
											</ul>
											<button type="button" id="insert"
												style="margin-top: 10%; width: 99%; height: 56px; border: 0; outline: 0; cursor: pointer; color: #FFFFFF; font: 15px; background-color: #f85959; font-size: 15px;">결제하기
											</button>
										</section>
									</div>
									<!-- 업체, 이용권 정보 끝 -->
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</section>
</div>
<!-- .section -->

<script>
	$(function() {
		$.fn.priceBuilder = function(price) {
			// 금액에 천단위 콤마 추가해주는 정규표현식
			return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}

		$(".product-price").each(function(idx) {
			// 금액에 천단위 콤마추가해주고 맨 뒤에 원을 붙임
			var value = $(this).text();
			$(this).text($.fn.priceBuilder(value) + ' 원');
		});

		$('#hgselect').change(
				function() {
					$.ajax({
						url : 'ticketSelect?hgnum='
								+ $('#hgselect option:selected').val(),
						datatype : 'json',
						success : function(data) {
							$('.product-price').text(
									$.fn.priceBuilder(data.hgmoney) + ' 원');
							$('#hgnum').val(data.hgnum);
							$('#hgmoney').val(data.hgmoney);
						}
					});
				});

		$('#insert').click(
				function() {
					var name = $("#mname").val();
					if (name !== "" && $('#rbox1').prop("checked")
							&& $('#rbox2').prop("checked")
							&& $('#rbox3').prop("checked")
							&& $('#rbox4').prop("checked")) {
						$('#agreebtn').attr("disabled", false);
						var form = $("#insertForm").serialize();
						var result = confirm("구매하시겠습니까?");
						if (result) {
							$("#insertForm").submit();
						} else {
							alert("취소되었습니다.");
						}
					} else {
						if (!($('#rbox1').prop("checked"))
								|| !($('#rbox2').prop("checked"))
								|| !($('#rbox3').prop("checked"))
								|| !($('#rbox4').prop("checked"))) {
							$('#agreebtn').attr("disabled", false);
							alert('필수 선택사항이 있습니다.');
						} else {
							alert('입력하지 않은 사항이 있습니다.');
						}

					}
				});
		$('#mname')
				.keyup(
						function() {
							var reservid = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
							var str = $('#mname').val()

							if (reservid.test(str) == true) {
								$("#here")
										.append(
												"<br><span style='margin-top: -15px; font-size: 14px; font-color: red;'>한글, 영문, 숫자만 입력이 가능합니다.</span>");
								document.getElementById("here").innerHTML = "<span style='margin-top: -15px; font-size: 14px; color: red;'>한글, 영문, 숫자만 입력이 가능합니다.</span>";
								$('#here').css('visibility', 'visible');
							} else {
								document.getElementById("here").innerHTML = "";
								$('#here').css('visibility', 'hidden');
							}

						});

		$('#rbox0').click(function() {
			if ($('#rbox0').prop("checked")) {
				$('.inp_chk_02').prop("checked", true);
			} else {
				$('.inp_chk_02').prop("checked", false);
			}

		});

		// datepicker에 대한 공통 옵션 설정
		$.datepicker
				.setDefaults({
					dateFormat : 'yy-mm-dd' //Input Display Format 변경
					,
					showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
					,
					showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
					,
					changeYear : true //콤보박스에서 년 선택 가능
					,
					changeMonth : true //콤보박스에서 월 선택 가능
					,
					showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
					,
					buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
					,
					buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
					,
					buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
					,
					yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
					,
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ] //달력의 월 부분 텍스트
					,
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
					,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
					,
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
							'토요일' ]
				//달력의 요일 부분 Tooltip 텍스트                  
				});

		//input을 datepicker로 선언
		$("#datepicker").datepicker();
		$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
	});
</script>
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>