<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ADMIN Header Start -->
<%@ include file="a_header.jsp"%>
<style>
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
						<th>���</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="e" items="${list}">
						<tr>
							<td>${e.hnum}</td>
							<td>${e.htype}</td>
							<td style="cursor: pointer;" class="hlistname">${e.hname}</td>
							<td class="center"><span class="label label-success">5</span>${e.count}</td>
							<td class="center">
							
								<c:forEach var="i" begin="1" end="5" step="1">
									<c:choose>
										<c:when test="${i <= e.hstar }">
											<a class="on" style="font-size: 18px">��</a>
										</c:when>
										<c:otherwise>
											<a class="off" style="font-size: 18px"></a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</td>
							
							<td class="center"><a class="btn btn-success" href="#">
									<i class="halflings-icon white zoom-in"></i>
							</a> <a class="btn btn-info" href="#"> <i
									class="halflings-icon white edit"></i>
							</a> <a class="btn btn-danger" href="#"> <i
									class="halflings-icon white trash"></i>
							</a></td>
							
							
						
						</tr>
					</c:forEach>

				</tbody>
			</table>
	<%-- 		
		<form method="post" action="hostVal">
			<c:forEach var="e" items="${list}">
				<input type="hidden" class="hostval" name="htype" value="${e.htype}">
				<input type="hidden" class="hostval" name="hname" value="${e.hname}">
				<input type="hidden" class="hostval" name="hceo" value="${e.hceo}">
				<input type="hidden" class="hostval" name="hphone" value="${e.hphone}">
				<input type="hidden" class="hostval" name="haddr" value="${e.haddr}">
				<input type="hidden" class="hostval" name="hspecies" value="${e.hspecies}">
				<input type="hidden" class="hostval" name="hnotice" value="${e.hnotice}">
				<input type="hidden" class="hostval" name="howner" value="${e.howner}">
				<input type="hidden" class="hostval" name="hservice" value="${e.hservice}">
				<input type="hidden" class="hostval" name="hguide" value="${e.hguide}">
				<input type="hidden" class="hostval"name="hstar" value="${e.hstar}">		
			</c:forEach>				
		</form> --%>
		
		</div>
	</div>
	<!--/span-->

<%-- 	<div style="display: none;">
		<table id="hostAll">
	
			<tr>
			 	 <td style="display: none;">${e.htype}</td>
							<td id = "a1" style="display: none;">${e.hname}</td>
							<td style="display: none;">${e.hceo}</td>
							<td style="display: none;">${e.hphone}</td>
							<td style="display: none;">${e.haddr}</td>
							<td style="display: none;">${e.hspecies}</td>
							<td style="display: none;">${e.hnotice}</td>
							<td style="display: none;">${e.howner}</td>
							<td style="display: none;">${e.hservice}</td>
							<td style="display: none;">${e.hguide}</td> 
						
			</tr>
	
		</table>
	</div> --%>
	

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
							<input class="input-xlarge focused" id="focusedInput" type="text">
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">��ǥ�ڸ�</label>
						<div class="controls">
							<input type="text" id="inputWarning">

						</div>
					</div>
					<div class="control-group error">
						<label class="control-label" for="inputError">����ó</label>
						<div class="controls">
							<input type="text" id="inputError">

						</div>
					</div>
					<div class="control-group success">
						<label class="control-label" for="inputSuccess">�ּ�</label>
						<div class="controls">
							<input type="text" id="inputSuccess">
							<!--  <span class="help-inline">Woohoo!</span> -->
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">�̹������</label>
						<div class="controls">
							<input multiple="multiple" type="file">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="selectError1">��������</label>
						<div class="controls">
							<select class="value" id="" multiple data-rel="chosen"
								id="hspecies" name="hspecies">
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
								style="width: 80% l; height: 50px; resize: none;" id="hservice"
								name="hservice"></textarea>
						</div>
					</div>
					<div class="control-group error">
						<label class="control-label" for="inputError">���ǽü�</label>
						<div class="controls">
							<select class="value" id="" multiple data-rel="chosen"
								id="hguide" name="hguide">
								<option value="ȭ���">ȭ���</option>
								<option value="��ȭ��">��ȭ��</option>
								<option>�״ø�</option>
								<option>��������</option>
								<option>�ްԽ�</option>
							</select>
						</div>
					</div>


					<div class="form-actions">
						<button type="submit" class="btn btn-primary">����</button>
						<button class="btn">����</button>
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
	$(function() {
		$(".hlistname").click(function(){
			$.ajax({
				url : "hostlist?hname="+encodeURI(${e.hname},"UTF-8"),
						
				
			});
			
			/* console.log('�ȳ�')
			var text = $(this).find("table tbody tr td:eq(0)").text();
			console.log(text) */

		});
		
	

		

		/* $('hostAll tbody').click(function() {
			var tr = $(this).text();
			var htype = tr.split("\n")[2].trim();
			var hname = tr.split("\n")[3].trim();
			var hceo = tr.split("\n")[4].trim();
			var hphone = tr.split("\n")[5].trim();
			var haddr = tr.split("\n")[6].trim();
			console.log(tr)
 */
			/* 				if (hrtype == '�ٴ�') {
			 $("#hostTypeSelect").find("option:eq(0)").prop(
			 "selected", true);
			 } else if (hrtype == '�ι�') {
			 $("#hostTypeSelect").find("option:eq(1)").prop(
			 "selected", true);
			 }
			
			 $('#focusedInput').attr('value', hrname);
			 $('#hceo').attr('value', hrceo);
			 $('#hphone').attr('value', hrphone);
			 $('#haddr').attr('value', hraddr); */

/* 		}); */

	});
</script>

<%@ include file="a_footer.jsp"%>