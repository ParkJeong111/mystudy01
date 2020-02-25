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

</style>
<i class="icon-angle-right"></i>
</li>
<li><a href=admin_hostapply>������ ��û ����</a></li>
</ul>


<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-plus-sign white"></i><span class="break"></span>������
				��û ���
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
						<th>��ǥ�ڸ�</th>
						<th>����ó</th>
						<th style="display: none;">�ּ�</th>
						<th>��û����</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="e" items="${list}">
						<tr id=value style="cursor:pointer;">
							<td>${e.hrnum}</td>
							<td>${e.hrtype}</td>
							<td>${e.hrname}</td>
							<td class="center">${e.hrceo}</td>
							<td class="center">${e.hrphone}</td>
							<td style="display: none;">${e.hraddr}</td>
							<td class="center">${e.hrstatus}</td>
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
				�����
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
				role="hostform" action="hostinsert" method="post">
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="inputType">*����</label>
						<div class="controls">
							<select class="value" id="hostTypeSelect" name="htype" required="required">
								<option value="�ٴ�">�ٴ�</option>
								<option value="�ι�">�ι�</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">*������ �̸�</label>
						<div class="controls">
							<input class="input-xlarge focused, value" type="text" id="focusedInput" name="hname"
								placeholder="�������� �������ּ���" required="required" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">*��ǥ�ڸ�</label>
						<div class="controls">
							<input class="value" type="text" id="hceo" name="hceo" placeholder="��ǥ�ڸ�" required="required">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">*����ó</label>
						<div class="controls">
							<input class="value" type="text" id="hphone" name="hphone" placeholder="����ó" required="required">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">*�ּ�</label>
						<div class="controls">
							<input class="value" type="text" id="haddr" name="haddr" placeholder="�ּ�" required="required">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">*�̹������</label>
						<div class="controls">
							<input class="value" multiple="multiple" type="file" id="hfile" name="hfile" required="required">
							<div>
							<div class="img_wrap">
								<img id="img" />
							</div>
							</div>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="selectError1">*��������</label>
						<div class="controls">
							<select class="value" id="" multiple data-rel="chosen" id="hspecies" name="hspecies" required="required">
								<!-- <option value="����">����</option>
								<option value="��ġ">��ġ</option> -->
								<option>����</option>
								<option>��ġ</option>
								<option>���</option>
								<option>���</option>
								<option>��</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">�ʼ� ���� �ȳ�</label>
						<div class="controls">
							<textarea class="value" style="width: 80% l; height: 50px; resize: none;" id="hnotice" name="hnotice" ></textarea>
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">����� �Ѹ���</label>
						<div class="controls">
							<textarea class="value" style="width: 80% l; height: 50px; resize: none;" id="howner" name="howner"></textarea>
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">�̿�ȳ�</label>
						<div class="controls">
							<textarea class="value" style="width: 80% l; height: 50px; resize: none;" id="hguide" name="hguide"></textarea>
						</div>
					</div>
					<div class="control-group error">
						<label class="control-label" for="inputError">���ǽü�</label>
						<div class="controls">
							<select class="value"  multiple data-rel="chosen" id="hservice" name="hservice" >
								<option value="ȭ���">ȭ���</option>
								<option value="��ȭ��">��ȭ��</option>
								<option>�״ø�</option>
								<option>��������</option>
								<option>�ްԽ�</option>
							</select>
						</div>
					</div>

					
					
					<div class="form-actions">
						<button type="submit" class="btn btn-primary" id=hsave> ���
							</button>
						<button type="button" class="btn" id="cancel" onclick="location.href='admin_hostapply'">���</button>
					</div>
				</fieldset>
			</form>

		</div>
	</div>
	<!--/span-->


</div>
<!--/row-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script>
	$(function() {

	
		
		$("table tbody tr").click(
				function() {
					$(this).addClass("selectedRow")
					$('table > tbody > tr').not(this).removeClass("selectedRow")

					var tr = $(this).text();
					var hrtype = tr.split("\n")[2].trim();
					var hrname = tr.split("\n")[3].trim();
					var hrceo = tr.split("\n")[4].trim();
					var hrphone = tr.split("\n")[5].trim();
					var hraddr = tr.split("\n")[6].trim();

					/* host ������� �� �ֱ� */
					if (hrtype == '�ٴ�') {
						$("#hostTypeSelect").find("option:eq(0)").prop(
								"selected", true);
					} else if (hrtype == '�ι�') {
						$("#hostTypeSelect").find("option:eq(1)").prop(
								"selected", true);
					}
					
					$('#focusedInput').attr('value', hrname);
					$('#hceo').attr('value', hrceo);
					$('#hphone').attr('value', hrphone);
					$('#haddr').attr('value', hraddr);
					/* var type=$(this).eq(0).text();
					console.log(type)
					 */
				});
		

		<%-- ������ �̸� �ߺ�üũ--%>
		$('#hsave').click(function() {
			var hname = $("#focusedInput").val()
	
			$.ajax({
				url : "hnamechk?hname=" + encodeURI(hname, "UTF-8"),
				success : function(data) {
					console.log(data);
					if (data == 1) {
						console.log("Json1 " + data)
						alert("�̹� ��ϵ� �������Դϴ�.");
						location.href='admin_hostapply'
					} else {
						console.log("Json2 " +data)
						return false;
					}
						
					}
				
			});   
		


		});
		
		
		<%-- ���� �ø��� �ٷ� �̸� �����ֱ� ��ũ��Ʈ --%>
		$(document).ready(function(){
			$("#hfile").on("change", handleImgFileSelect);
		});
		
		function handleImgFileSelect(e){
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f){
				if(!f.type.match("image.*")){
					alert("Ȯ���ڴ� �̹��� Ȯ���ڸ� �����մϴ�.");
					return;
				}
				sel_file = f;
				var reader = new FileReader();
				reader.onload = function(e){
					$("#img").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		}
		<%-- ���� �ø��� �ٷ� �̸� �����ֱ� ��ũ��Ʈ �� --%>
	

});
</script>

<%@ include file="a_footer.jsp"%>