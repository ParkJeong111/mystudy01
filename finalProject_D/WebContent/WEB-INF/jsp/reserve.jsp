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

input[type=checkbox] {
	display: none;
}

input[type=checkbox]+label {
	display: inline-block;
	cursor: pointer;
	line-height: 22px;
	padding-left: 22px;
	background: url('resources/images/icon/checkbox.png') left/22px
		no-repeat;
}

input[type=checkbox]:checked+label {
	background-image: url('resources/images/icon/checkedbox.png');
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
<div class="talk_header" style="font-family: 'Poppins', Arial, sans-serif;">
	<section class="ftco-section ftco-degree-bg" style="padding-top: 10px;">
		<div class="noticeList_area container"
			style="padding-top: 112px; padding-bottom: 80px;">
			<section>
				<div class="middle notice_wrap">
					<div class="sectionArea">
						<div class="tabContainer">
							<div id="tab_notice" class="tabConents"></div>
							<form action="resInsert" method="post" id="insertForm">
								<input type="hidden" name="hnum" value="${host.hnum}"> <input
									type="hidden" name="hgnum" value="${hostgoods.hgnum}">
								<input type="hidden" name="rmoney" value="${hostgoods.hgmoney}">
								<div style="width: 993px; height: 950px; margin: auto;"
									id="totaldiv">
									<div id=left
										style="display: inline-block; float: left; width: 564px; height: 892px; margin-right: 88px; margin-top: 40px;">
										<section>
											<h3>������ ����</h3>
											<br> <strong style="font-size: 18px;">������ ���̵�</strong><br>
											<p>
												<input style="width: 560px; height: 44px; font-size: 16px;"
													type="text" placeholder="���� �� �ʿ��� ���� �Դϴ�." id="mname"
													class="reservid" name="mname" value="${sessionScope.m.mid}">
												<span
													style="margin-top: -15px; font-size: 14px; color: red; visibility: hidden;"
													id="here"><br>�ѱ�, ����, ���ڸ� �Է��� �����մϴ�.</span>
											</p>
											<br> <strong style="font-size: 18px;">�������</strong><br>
											<p>	
												<input style="width: 530px; height: 44px; font-size: 16px;" type="text" id="datepicker" name="usedate">
										</section>
										<br> <br> <br> <br> <br>
										<div style="display: block;">
											<a href=""><img
												src="resources/images/icon/reserv_detail.png"> </a>
										</div>
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
													for="rbox1">���/ȯ�ұ��� ���� <b>(�ʼ�)</b>
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
												${host.hname}<input type="hidden" value="${host.hname}"
													id="hname" name="hname"><br>
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
													style="color: rgba(0, 0, 0, 0.87); font-size: 18px;">����
														�ݾ�</b> (VAT ����)
												</strong> <br> <span style="font-size: 24px; color: #f85959;"
													class="product-price"><b>${hostgoods.hgmoney} <br></b></span>
											</p>
											<hr style="width: 270px;">
											<ul style="font-size: 16px;">
												<li style="font-size: 16px; padding-right: 16px;">�ش�
													�����ݾ��� ����, �̿�ᰡ ���Ե� �ݾ��Դϴ�.</li>
													<li style="font-size: 16px; padding-right: 16px;">������� ���Ͽ� ����� �����մϴ�.</li>
												<li style="font-size: 16px; padding-right: 16px;">Ƽ�ϻ��: <span style="color: #f85959;">Ƽ�� ������</span>(���� �� ����)
												</li>
											</ul>
											<button type="button" id="insert"
												style="width: 310px; height: 56px; border: 0; outline: 0; cursor: pointer; color: #FFFFFF; font: 15px; background-color: #f85959; margin-top: 90px; font-size: 15px;">�����ϱ�
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
</div>
	<!-- .section -->

	<script>
		$(function() {
			$.fn.priceBuilder = function(price) {
				// �ݾ׿� õ���� �޸� �߰����ִ� ����ǥ����
				return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}

			$(".product-price").each(function(idx) {
				// �ݾ׿� õ���� �޸��߰����ְ� �� �ڿ� ���� ����
				var value = $(this).text();
				$(this).text($.fn.priceBuilder(value) + ' ��');
			});

			$('#insert').click(
					function() {
						var name = $("#mname").val();
						var nphone = $('#mphone').val();

						if (name !== "" && nphone !== ""
								&& $('#rbox1').prop("checked")
								&& $('#rbox2').prop("checked")
								&& $('#rbox3').prop("checked")
								&& $('#rbox4').prop("checked")) {
							$('#agreebtn').attr("disabled", false);
							var form = $("#insertForm").serialize();
							console.log(form);
							var result = confirm("�����Ͻðڽ��ϱ�?");
							if (result) {
								$("#insertForm").submit();
							} else {
								alert("��ҵǾ����ϴ�.");
							}
						} else {
							if (!($('#rbox1').prop("checked"))
									|| !($('#rbox2').prop("checked"))
									|| !($('#rbox3').prop("checked"))
									|| !($('#rbox4').prop("checked"))) {
								$('#agreebtn').attr("disabled", false);
								alert('�ʼ� ���û����� �ֽ��ϴ�.');
							} else {
								alert('�Է����� ���� ������ �ֽ��ϴ�.');
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
													"<br><span style='margin-top: -15px; font-size: 14px; font-color: red;'>�ѱ�, ����, ���ڸ� �Է��� �����մϴ�.</span>");
									document.getElementById("here").innerHTML = "<span style='margin-top: -15px; font-size: 14px; color: red;'>�ѱ�, ����, ���ڸ� �Է��� �����մϴ�.</span>";
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
			// datepicker�� ���� ���� �ɼ� ����
            $.datepicker.setDefaults({
                dateFormat: 'yy-mm-dd' //Input Display Format ����
                ,showOtherMonths: true //�� ������ ������� �յڿ��� ��¥�� ǥ��
                ,showMonthAfterYear:true //�⵵ ���� ������, �ڿ� �� ǥ��
                ,changeYear: true //�޺��ڽ����� �� ���� ����
                ,changeMonth: true //�޺��ڽ����� �� ���� ����
                ,showOn: "both" //button:��ư�� ǥ���ϰ�,��ư�� �����߸� �޷� ǥ�� ^ both:��ư�� ǥ���ϰ�,��ư�� �����ų� input�� Ŭ���ϸ� �޷� ǥ��  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //��ư �̹��� ���
                ,buttonImageOnly: true //�⺻ ��ư�� ȸ�� �κ��� ���ְ�, �̹����� ���̰� ��
                ,buttonText: "����" //��ư�� ���콺 ���� ���� �� ǥ�õǴ� �ؽ�Ʈ                
                ,yearSuffix: "��" //�޷��� �⵵ �κ� �ڿ� �ٴ� �ؽ�Ʈ
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //�޷��� �� �κ� �ؽ�Ʈ
                ,monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'] //�޷��� �� �κ� Tooltip �ؽ�Ʈ
                ,dayNamesMin: ['��','��','ȭ','��','��','��','��'] //�޷��� ���� �κ� �ؽ�Ʈ
                ,dayNames: ['�Ͽ���','������','ȭ����','������','�����','�ݿ���','�����'] //�޷��� ���� �κ� Tooltip �ؽ�Ʈ                  
            });
 
            //input�� datepicker�� ����
            $("#datepicker").datepicker();                    
            $('#datepicker').datepicker('setDate', 'today'); //(-1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���), (+1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)
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