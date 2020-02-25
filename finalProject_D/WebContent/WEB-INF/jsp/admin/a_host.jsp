<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ADMIN Header Start -->
<%@ include file="a_header.jsp"%>
<style>
.img_wrap {
	width: 70%;
	height: 30%;
	margin-top: 20px;
}

.img_wrap img {
	max-width: 50%;
	max-height: 30%;
}

.selectedRow {
	background-color:#e6e6e6;
	border: 3px solid #e6e6e6;
	cursor: pointer;
}

#star_result on {
	color: red;
}

#star_result off {
	color: gray;
}
</style>

<i class="icon-angle-right"></i>
</li>
<li><a href="admin_host">������ ����</a></li>
</ul>


<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-list-alt white user"></i><span class="break"></span>������
				���
			</h2>
			<div class="box-icon">
				<a href="#" class="btn-setting"><i
					class="halflings-icon white wrench"></i></a> <a href="#"
					class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
				<a href="#" class="btn-close"><i
					class="halflings-icon white remove"></i></a>
			</div>
		</div>
		<div class="box-content">
			<table
				class="table table-striped table-bordered bootstrap-datatable datatable">
				<thead>
					<tr>
						<th>No.</th>
						<th>����</th>
						<th>��������</th>
						<th>�̿�Ǽ�</th>
						<th>����</th>
						<th>����</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="e" items="${list}">
						<tr class='color'>
							<td id="hiddenVal">${e.hnum}</td>
							<td>${e.htype}</td>
							<td style="cursor: pointer;" class="hlistname">${e.hname}</td>
							<td class="center" style="text-align: center;">${e.count}</td>
							<td class="center"><c:forEach var="i" begin="1" end="5"
									step="1">
									<c:choose>
										<c:when test="${i <= e.hstar }">
											<a class="on" style="font-size: 18px">��</a>
										</c:when>
										<c:otherwise>
											<a class="off" style="font-size: 18px"></a>
										</c:otherwise>
									</c:choose>
								</c:forEach></td>

							<td class="center"><a class="btn btn-danger" onclick="hostdelete('${e.hname}')"> <i class="halflings-icon white trash"></i>
							<%-- <td class="center"><a class="btn btn-danger" href="hostdelete?hname=${e.hname}"> <i class="halflings-icon white trash"></i> --%>
							<!-- <td class="center"><a class="btn btn-danger" href="hostdelete?hname="+ encodeURI(${e.hname}, 'UTF-8')> -->  
							</a></td>
							



						</tr>
					</c:forEach>

				</tbody>
			</table>


		</div>
	</div>
	<!--/span-->



	<!--host ����� -->

	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-signin white edit"></i><span class="break"></span>������
				������
			</h2>
			<div class="box-icon">
				<a href="#" class="btn-setting"><i
					class="halflings-icon white wrench"></i></a> <a href="#"
					class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
				<a href="#" class="btn-close"><i
					class="halflings-icon white remove"></i></a>
			</div>
		</div>
		<div class="box-content">
			<form class="form-horizontal" enctype="multipart/form-data"
				role="hostform" action="hostupdate" method="post">
				<input type="hidden" id="hnum" name="hnum" value="">
				<fieldset>

					<div class="control-group">
						<label class="control-label" for="selectError3">����</label>
						<div class="controls">
							<select id="hostTypeSelect" name="htype">
								<option>�ٴ�</option>
								<option>�ι�</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">������ �̸�</label>
						<div class="controls">
							<input class="input-xlarge focused" id="hname" name="hname"
								type="text">
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">��ǥ�ڸ�</label>
						<div class="controls">
							<input type="text" id="hceo" name="hceo">

						</div>
					</div>
					<div class="control-group error">
						<label class="control-label" for="inputError">����ó</label>
						<div class="controls">
							<input type="text" id="hphone" name="hphone">

						</div>
					</div>
					<div class="control-group success">
						<label class="control-label" for="inputSuccess">�ּ�</label>
						<div class="controls">
							<input type="text" id="haddr" name="haddr">
							<!--  <span class="help-inline">Woohoo!</span> -->
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">�̹������</label>
						<div class="controls">
							<input multiple="multiple" type="file" id="himage" name="hfile"
								value="">
							<div class="img_wrap">
								<img id="img" />
								<br/>
								 <span  id="imagename"></span>
							</div>

						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="selectError1">��������</label>
						<div class="controls">
							<select class="value" multiple data-rel="chosen" id="hspecies"
								name="hspecies" required="required">
								<option value="����">����</option>
								<option value="��ġ">��ġ</option>
								<option>���</option>
								<option>���</option>
								<option>��</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">�ʼ� ���� �ȳ�</label>
						<div class="controls">
							<textarea class="value"
								style="width: 80% l; height: 50px; resize: none;" id="hnotice"
								name="hnotice"></textarea>
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">����� �Ѹ���</label>
						<div class="controls">
							<textarea class="value"
								style="width: 80% l; height: 50px; resize: none;" id="howner"
								name="howner"></textarea>
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">�̿�ȳ�</label>
						<div class="controls">
							<textarea class="value"
								style="width: 80% l; height: 50px; resize: none;" id="hguide"
								name="hguide"></textarea>
						</div>
					</div>

					<div class="control-group error">
						<label class="control-label" for="inputError">���ǽü�</label>
						<div id="cover">
							<div class="controls">
								<select class="value" id="" multiple data-rel="chosen"
									id="hservice" name="hservice">
									<option value="ȭ���">ȭ���</option>
									<option value="��ȭ��">��ȭ��</option>
									<option>�״ø�</option>
									<option>��������</option>
									<option>�ްԽ�</option>
								</select>
							</div>
						</div>
					</div>


					<div class="form-actions">
						<button type="submit" class="btn btn-primary" id="hmodify">����</button>

					</div>
				</fieldset>
			</form>

		</div>
	</div>
	<!--/span-->


</div>
<!--/row-->
<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header">
			<h2>
				<i class="halflings-icon white list-alt"></i><span class="break"></span>Pie
			</h2>
			<div class="box-icon">
				<a href="#" class="btn-setting"><i
					class="halflings-icon white wrench"></i></a> <a href="#"
					class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
				<a href="#" class="btn-close"><i
					class="halflings-icon white remove"></i></a>
			</div>
		</div>
		<div class="box-content">
			<div id="piechart" style="height: 300px"></div>
		</div>
	</div>

	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon white list-alt"></i><span class="break"></span>Donut
			</h2>
			<div class="box-icon">
				<a href="#" class="btn-setting"><i
					class="halflings-icon white wrench"></i></a> <a href="#"
					class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
				<a href="#" class="btn-close"><i
					class="halflings-icon white remove"></i></a>
			</div>
		</div>
		<div class="box-content">
			<div id="donutchart" style="height: 300px;"></div>
		</div>
	</div>

</div>
<!--/row-->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>

<script>
<!--������ ���� onclick Ŭ�� �� �Լ� ȣ���ϱ� -->
function hostdelete(hname) {
	 if (confirm("�������� �����Ͻðڽ��ϱ�?") == true){ 
		 
		 location.href="hostdelete?hname="+encodeURI(hname, "UTF-8");
	 }else{   //���
	     return false;

	 }
}

	$(function() {

		$('table > tbody > tr').each(function (){
			$(this).on("click", function(){
				$(this).addClass("selectedRow")
				console.log("����")
				$('table > tbody > tr').not(this).removeClass("selectedRow")

			});
			
		});
	
	
<%-- �� �κ��� Ajax�� �̿��� ������ ������ ���� //// -> ���� ����,������ ���� --%>
<%-- �������̸� Ŭ���� hnum -------------------> $(this).prev().prev().text()�� �̿��Ͽ�
	 hnum���� �����ͼ�  �Ķ���ͷ� ������ ������ �������� Json�������� �޾Ƽ� ó��--%>
		$('.hlistname').each(function () {
			
		
				$(this).click(function() {
					console.log($(this).text());
					var hnum = $(this).prev().prev().text();
					console.log(hnum);
							$(".chzn-choices").html = ""

							$.ajax({
										url : "hostinfo?hnum="+hnum,
										datatype : 'json',
										success : function(data) {

											if (data != null) {
												if (data.htype == '�ٴ�') {
													$("#hostTypeSelect").find(
															"option:eq(0)")
															.prop("selected",
																	true);
												} else if (data.htype == '�ι�') {
													$("#hostTypeSelect").find(
															"option:eq(1)")
															.prop("selected",
																	true);
												}

												$('#hnum').attr("value",
														data.hnum);
												$('#hname').attr("value",
														data.hname);
												$('#hceo').attr("value",
														data.hceo);
												$('#hphone').attr("value",
														data.hphone);
												$('#haddr').attr("value",
														data.haddr);
												$("#himage").val("")
												$('#imagename').text(
														data.himage);

												$("#img").attr(
														"src",
														"${pageContext.request.contextPath}/resources/images/"
																+ data.himage);

												$('#hnotice').attr("value",
														data.hnotice);
												$('#howner').attr("value",
														data.howner);
												$('#hguide').attr("value",
														data.hguide);

												var content = '';
												hspecies = data.hspecies
														.split(',');

												for ( var i in hspecies) {
													content += '<li class="search-choice" id="hspecies_chzn_c_0"><span>'
															+ hspecies[i]
															+ '</span>'
															+ '<a href="javascript:void(0)" class="search-choice-close" rel="0"></a></li>'
												}

												$('#hspecies_chzn > ul').html(
														"");
												$('#hspecies_chzn > ul')
														.append(content);

												var content2 = '';
												hservice = data.hservice
														.split(',');

												for ( var i in hservice) {
													content2 += '<li class="search-choice" id="hspecies_chzn_c_0"><span>'
															+ hservice[i]
															+ '</span>'
															+ '<a href="javascript:void(0)" class="search-choice-close" rel="0"></a></li>'
												}

												$('#cover > div > div > ul')
														.html("");
												$('#cover > div > div > ul')
														.append(content2);

											}

										}

									});

						});
		});

		$('input[name="hfile"]').click(function() {
			$('#imagename').text("");

		});

		var hostform = $("form[role='hostform']");

		$("#hmodify").click(function() {
			if ($('input[name=hnum]').val() == '') {
				console.log("123" + $('input[name=hnum]').val())
				alert('�������� �������ּ���.')
			} else {
				hostform.attr('action', 'hostupdate');
				hostform.attr('method', 'POST');
				hostform.submit();
			}

		});


	});
</script>

<%@ include file="a_footer.jsp"%>