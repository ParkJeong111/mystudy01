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
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- END nav -->

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');">
	<div class="overlay"></div>
	<div class="container" style="margin-top: -40%;"></div>
</div>
<!--  ���⿡ ����κ� �߰�  -->
<p
	style="font-family: Jua; text-align: center; font-weight: bold; color: #606060; font-size: 30px; padding-top: 25px; padding-bottom: 5px;">
	����</p>
<hr>
<div class="talk_header"
	style="font-family: Jua; margin-bottom: 10%">
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
									<!-- �������� ���� -->
									<div id=left
										style="display: inline-block; float: left; width: 60%;">
										<section>
											<h2>
												<b>���� ����</b>
											</h2>
											<!-- ������ -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>������</b></strong><br>
											<p>
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="text" name="mid" value="${sessionScope.mid}"
													readonly="readonly">
											</p>
											<!-- ������� -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>�������</b></strong><br>
											<p>
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="text" id="datepicker" name="usedate">
											</p>
											<br>
											<!-- ����Ʈ��� -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>����Ʈ</b></strong>
											<strong style="font-size: 12px; color: #aaaaaa;">&nbsp;&nbsp;&nbsp;���
												���� ����Ʈ :<span style="color: #f85959">${sessionScope.mpoint}</span> </strong> <br>
											<p>
												<c:if test="${sessionScope.mpoint == 0}">
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="text" id="mpoint" name="mpoint" value="0" readonly="readonly"
													maxlength="6">
												</c:if>
												<c:if test="${sessionScope.mpoint != 0}">
												<input style="width: 80%; height: 44px; font-size: 16px;"
													type="text" id="mpoint" name="mpoint" value="0" maxlength="6">
												</c:if>
											</p>
											<br>
											<!-- �������� ���� -->
											<strong style="font-size: 18px; color: #aaaaaa;"><b>��������
													����</b></strong><br><select id="pgselect"
												style="width: 80%; height: 48px; font-size: 18px; cursor: pointer;">
												<option value="card">�ſ�ī��</option>
												<option value="phone">�޴����Ҿװ���</option>
												<option value="samsung">�Ｚ����</option>
												<option value="cultureland">��ȭ��ǰ��</option>
											</select>
											<!-- �������� �� -->
										</section>
										<br>
										<!-- �������� ���� -->
										<strong style="font-size: 18px; color: #aaaaaa;"><b>��������</b></strong>
										<section style="margin-top: 3%;">
											<p style="width: 564px; height: 30px; font-size: 18px;">
												<input type="checkbox" id="rbox0" class="inp_chk_02"><label
													for="rbox0"> &nbsp; <b>��ü ����</b></label>

											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox1" class="inp_chk_02"><label
													for="rbox1"> &nbsp; ���/ȯ�ұ��� ���� <b>(�ʼ�)</b>
												</label>

											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox2" class="inp_chk_02"><label
													for="rbox2"> &nbsp; �������� ���� �� �̿� ����</label> <b>(�ʼ�)</b>
											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox3" class="inp_chk_02"><label
													for="rbox3"> &nbsp; �������� �� 3�� ���� ���� </label> <b>(�ʼ�)</b>
											</p>
											<p style="font-size: 16px;">
												<input type="checkbox" id="rbox4" class="inp_chk_02"><label
													for="rbox4"> &nbsp; �� 14�� �̻��Դϴ�.</label> <b>(�ʼ�)</b>

											</p>
										</section>
										<!-- �������� �� -->
									</div>
									<!-- �������� �� -->
									<!-- ��ü, �̿�� ���� ���� -->
									<div id="right"
										style="padding-left: 2%; padding-right: 2%; width: 30%; margin-right: 31px; float: right; color: rgba(0, 0, 0, 0.87); background-color: #FAFAFA">
										<section>
											<p class="name" style="font-size: 20px; margin-top: 5%;">
												<strong style="color: rgba(0, 0, 0, 0.38); font-size: 18px"><b>��ü�̸�</b></strong><br>
												<b><strong>${host.hname}</strong></b><input type="hidden"
													value="${host.hname}" id="hname" name="hname"><br>
											</p>
											<p style="font-size: 20px;">
												<strong style="color: rgba(0, 0, 0, 0.38); font-size: 18px;"><b>�̿��</b></strong>
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
											<!-- ���� �ݾ� -->
											<p style="font-size: 16px;">
												<strong> <b
													style="color: rgba(0, 0, 0, 0.87); font-size: 18px;">��ǰ
														�ݾ�</b>
												</strong> <br> <span class="product-price" id="firstprice"
													style="font-size: 16px; color: black;">
													&nbsp;${hostgoods.hgmoney} </span>
											</p>
											<hr style="width: 98%;">
											<p style="font-size: 16px;">
												<strong> <b
													style="color: rgba(0, 0, 0, 0.87); font-size: 18px;">����
														�ݾ�</b> (VAT ����)
												</strong> <br> <span class="product-price" id="finalprice"
													style="font-size: 24px; color: #f85959;">
													${hostgoods.hgmoney} </span>
											</p>
											<hr style="width: 98%;">
											<ul style="font-size: 16px; padding-left: 0%;">
												<li style="font-size: 16px;">�ش� �����ݾ��� ����, �̿�ᰡ ���Ե�
													�ݾ��Դϴ�.</li>
												<li style="font-size: 16px;">���� ���Ϻ��� ����� �����մϴ�.</li>
												<li style="font-size: 16px;">����� : ���� �� <span
													style="color: #f85959;">���� �湮</span> �� ����
												</li>
											</ul>
											<button type="button" id="insert"
												style="margin-top: 10%; width: 99%; height: 56px; border: 0; outline: 0; cursor: pointer; color: #FFFFFF; font: 15px; background-color: #f85959; font-size: 15px;">�����ϱ�
											</button>
										</section>
									</div>
									<!-- ��ü, �̿�� ���� �� -->
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
//����Ʈĭ�� ���ڸ� �Է�
	$(function() {
		
		// ����Ʈ ����ߴ��� ����
		var ispoint = false;
		
		$.fn.priceBuilder = function(price) {
			// �ݾ׿� õ���� �޸� �߰����ִ� ����ǥ����
			return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}

		$(".product-price").each(function(idx) {
			// �ݾ׿� õ���� �޸� �߰����ְ� �� �ڿ� ���� ����
			var value = $(this).text();
			$(this).text($.fn.priceBuilder(value) + ' ��');
		});
		
		// ����Ʈ �ּ�, �ִ� ����ó��
		$('#mpoint').blur(function() {
			var current = $(this).val();
			var max = $(this).attr('max');
			var min = $(this).attr('min');
			if (parseInt(current) > parseInt(max)) {
				 $(this).val(parseInt(max));
			} else if (parseInt(current) < parseInt(min)) {
				 $(this).val(parseInt(min));
			}
		});
		
		$('#mpoint').click(function() {
			$(this).val('');
		});
		
		// ����Ʈ �Է½� ���� �ݾ� ���
		$('#mpoint').keyup(function(){
			var point;
			ispoint = true;
			if ($(this).val() == '') {
				point = 0;
			}
			else {
				point = parseInt($(this).val());
				var price = parseInt($('#firstprice').text().replace(/,/g,""));
				console.log("point : " + point);
				if (point < 0 || point > price) {
					point = 0;
					$(this).val(0);
				}
				$('#finalprice').css('font-size', '16px').css('color', 'black');
				$('#finalprice').html('&nbsp;' + price + ' - ' + point
						+ "<br><p id='finalprice2' style='font-size: 24px; color: #f85959;'>&nbsp;" + $.fn.priceBuilder((price-point)) + ' ��</p>');
			}
		});
	
		// �̿�� �����
		$('#hgselect').change(
				function() {		
					$.ajax({
						url : 'ticketSelect?hgnum='
								+ $('#hgselect option:selected').val(),
						datatype : 'json',
						success : function(data) {
							// ȸ���� ����Ʈ ����
							var point = '${sessionScope.mpoint}';
							// ����Ʈĭ�� 0���� �ʱ�ȭ
							$('#mpoint').val(0);
							$('#finalprice').css('font-size', '24px').css('color', '#f85959');
							// �����ݾ׺��� ����Ʈ�� �� ũ��
							if (point >= data.hgmoney) {
								// ����Ʈ �ִ� ��� ������ �����ݾ׸�ŭ���� ����
								$('#mpoint').attr('max', data.hgmoney);
							} else {
								// ����Ʈ �ִ� ��� ������ ����Ʈ�� ����
								$('#mpoint').attr('max', point);
							}
							// ���� �ݾ׿� õ���� �޸��� ' ��' �߰�
							$('#firstprice').text(
									$.fn.priceBuilder(data.hgmoney) + ' ��');
							$('#finalprice').text(
									$.fn.priceBuilder(data.hgmoney) + ' ��');
							// input �Ķ���� ���� ���ο� �̿�� ��ȣ�� �ݾ����� ����
							$('#hgnum').val(data.hgnum);
							$('#hgmoney').val(data.hgmoney);
							ispoint = false;
						}
					});
				});
		// ���� ------------------------------------------------------
		
		// �����ϱ� ��ư ��������
		$('#insert').click(
				function() {
					var name = $("#mname").val();
					if (name !== "" && $('#rbox1').prop("checked")
							&& $('#rbox2').prop("checked")
							&& $('#rbox3').prop("checked")
							&& $('#rbox4').prop("checked")) {
								$('#agreebtn').attr("disabled", false);
								var form = $("#insertForm").serialize();
								
								var IMP = window.IMP; // ��������
								// ${'#hgselect'}.val();
								var hgname = $("#hgselect option:selected").text(); // ��ǰ��
								if (!ispoint) {
									var hgprice = parseInt($('#finalprice').text().replace(/,/g,"")); // ����Ʈ ��� x ��ǰ����
								} else {
									var hgprice = parseInt($('#finalprice2').text().replace(/,/g,"")); // ����Ʈ ���� ��ǰ����
								}
								
								console.log("hgprice :" + hgprice);
								
								// �����ݾ��� ����Ʈ�� ���� ���������
								if (hgprice == 0) {
									alert("����Ʈ�� ���� �����Ͽ� �ٷ� ��ǰȭ������ �̵��մϴ�.")
									$("#insertForm").submit();
									// location.href = "itemdetail?hnum=" + '${host.hnum}';
									return;
								}
								
								var pgmethod = $('#pgselect').val();
								IMP.init('imp98493160'); // �ڱ⸸�� �ĺ��ڵ� �ο�
								IMP.request_pay({
									// �̴Ͻý� 
									pg: 'inicis', // version 1.1.0���� ����.
									pay_method: pgmethod, // ��������
									/*
										'samsung':�Ｚ����,
										'card':�ſ�ī��,
										'trans':�ǽð�������ü,
										'vbank':�������,
										'phone':�޴����Ҿװ���
									*/
									merchant_uid: 'merchant_' + new Date().getTime(),
									name: hgname,	// ������ �̸�
									amount: hgprice, // ���� ����
									// ������ ����
									buyer_email: '${sessionScope.m.memail}',
									buyer_name: '${sessionScope.m.mname}',
									buyer_tel: '${sessionScope.m.mphone}',
									buyer_addr: '${sessionScope.m.maddr1}',
									buyer_postcode: '${sessionScope.m.maddr2}'
									}, function (rsp) {
										console.log(rsp);
										// ���� ������
										if (rsp.success) {
											var msg = '������ �Ϸ�Ǿ����ϴ�.';
											msg += '����ID : ' + rsp.imp_uid;
											msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
											msg += '���� �ݾ� : ' + rsp.paid_amount;
											msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
											// location.href = "itemdetail?hnum=" + '${host.hnum}';
											$("#insertForm").submit(); // �����ͺ��̽� ����
										} else {
											var msg = '������ �����Ͽ����ϴ�.';
											msg += '�������� : ' + rsp.error_msg;
										}
											alert(msg);
									});
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
				}
			);

		// ��ü ����
		$('#rbox0').click(function() {
			if ($('#rbox0').prop("checked")) {
				$('.inp_chk_02').prop("checked", true);
			} else {
				$('.inp_chk_02').prop("checked", false);
			}

		});

		// datepicker�� ���� ���� �ɼ� ����
		$.datepicker
				.setDefaults({
					dateFormat : 'yy-mm-dd' //Input Display Format ����
					,
					showOtherMonths : true //�� ������ ������� �յڿ��� ��¥�� ǥ��
					,
					showMonthAfterYear : true //�⵵ ���� ������, �ڿ� �� ǥ��
					,
					changeYear : true //�޺��ڽ����� �� ���� ����
					,
					changeMonth : true //�޺��ڽ����� �� ���� ����
					,
					showOn : "both" //button:��ư�� ǥ���ϰ�,��ư�� �����߸� �޷� ǥ�� ^ both:��ư�� ǥ���ϰ�,��ư�� �����ų� input�� Ŭ���ϸ� �޷� ǥ��  
					,
					buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //��ư �̹��� ���
					,
					buttonImageOnly : true //�⺻ ��ư�� ȸ�� �κ��� ���ְ�, �̹����� ���̰� ��
					,
					buttonText : "����" //��ư�� ���콺 ���� ���� �� ǥ�õǴ� �ؽ�Ʈ                
					,
					yearSuffix : "��" //�޷��� �⵵ �κ� �ڿ� �ٴ� �ؽ�Ʈ
					,
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ] //�޷��� �� �κ� �ؽ�Ʈ
					,
					monthNames : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��',
							'8��', '9��', '10��', '11��', '12��' ] //�޷��� �� �κ� Tooltip �ؽ�Ʈ
					,
					dayNamesMin : [ '��', '��', 'ȭ', '��', '��', '��', '��' ] //�޷��� ���� �κ� �ؽ�Ʈ
					,
					dayNames : [ '�Ͽ���', '������', 'ȭ����', '������', '�����', '�ݿ���',
							'�����' ]
				//�޷��� ���� �κ� Tooltip �ؽ�Ʈ                  
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