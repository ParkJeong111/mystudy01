<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ADMIN Header Start -->
<%@ include file="a_header.jsp"%>
<i class="icon-angle-right"></i>
</li>
<li><a href=admin_hostapply>가맹점 요청 관리</a></li>
</ul>


<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-plus-sign white"></i><span class="break"></span>가맹점
				요청 목록
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
						<th>유형</th>
						<th>가맹점명</th>
						<th>대표자명</th>
						<th>연락처</th>
						<th style="display: none;">주소</th>
						<th>요청상태</th>
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




	<!--host 등록폼 -->

	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-signin white edit"></i><span class="break"></span>가맹점
				등록폼
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
						<label class="control-label" for="inputType">유형</label>
						<div class="controls">
							<select class="value" id="hostTypeSelect" name="htype">
								<option value="바다">바다</option>
								<option value="민물">민물</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">가맹점 이름</label>
						<div class="controls">
							<input class="input-xlarge focused, value" type="text" id="focusedInput" name="hname"
								value="가맹점을 선택해주세요">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">대표자명</label>
						<div class="controls">
							<input class="value" type="text" id="hceo" name="hceo">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">연락처</label>
						<div class="controls">
							<input class="value" type="text" id="hphone" name="hphone">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">주소</label>
						<div class="controls">
							<input class="value" type="text" id="haddr" name="haddr">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">이미지등록</label>
						<div class="controls">
							<input class="value" multiple="multiple" type="file" id="hfile" name="hfile">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="selectError1">어종선택</label>
						<div class="controls">
							<select class="value" id="" multiple data-rel="chosen" id="hspecies" name="hspecies">
								<!-- <option value="고등어">고등어</option>
								<option value="참치">참치</option> -->
								<option>고등어</option>
								<option>참치</option>
								<option>방어</option>
								<option>상어</option>
								<option>고래</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">필수 공지 안내</label>
						<div class="controls">
							<textarea class="value" style="width: 80% l; height: 50px; resize: none;" id="hnotice" name="hnotice" ></textarea>
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">사장님 한마디</label>
						<div class="controls">
							<textarea class="value" style="width: 80% l; height: 50px; resize: none;" id="howner" name="howner"></textarea>
						</div>
					</div>
					<div class="control-group warning">
						<label class="control-label" for="inputWarning">이용안내</label>
						<div class="controls">
							<textarea class="value" style="width: 80% l; height: 50px; resize: none;" id="hguide" name="hguide"></textarea>
						</div>
					</div>
					<div class="control-group error">
						<label class="control-label" for="inputError">편의시설</label>
						<div class="controls">
							<select class="value"  multiple data-rel="chosen" id="hservice" name="hservice" >
								<option value="화장실">화장실</option>
								<option value="소화기">소화기</option>
								<option>그늘막</option>
								<option>구명조끼</option>
								<option>휴게실</option>
							</select>
						</div>
					</div>


					<div class="form-actions">
						<button type="submit" class="btn btn-primary" id=hsave>Save
							changes</button>
						<button class="btn">Cancel</button>
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
					var tr = $(this).text();
					var hrtype = tr.split("\n")[2].trim();
					var hrname = tr.split("\n")[3].trim();
					var hrceo = tr.split("\n")[4].trim();
					var hrphone = tr.split("\n")[5].trim();
					var hraddr = tr.split("\n")[6].trim();

					/* host 등록폼에 값 넣기 */
					if (hrtype == '바다') {
						$("#hostTypeSelect").find("option:eq(0)").prop(
								"selected", true);
					} else if (hrtype == '민물') {
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
		
		
		
		var hostform = $("form[role='hostform']");
		console.log(hostform)

		$('#hsave').click(function() {
							
		/* 	 var required = true;
			 $('.value').each(function(){
			        if ( $(this).is(':text, textarea, select') && $(this).val().length < 1 ) {
			            alert('*은 필수 입력항목 입니다.');
			            $(this).focus();
			            required = false;
			            return false;
			        }
			        else if ( $(this).is(':checkbox, :radio') && !$(this).parent().children('.required').is(':checked') ) {
			            alert('*은 필수 입력항목 입니다.');
			            $(this).focus();
			            requiredFlag = false;
			            return false;
			        };
			    });
			 */
			 
			 
			  console.log($("#hguide").val())
			if($("#hguide").val() == "null"){

			    alert("입력하세요");

			    return;

			} 


			hostform.attr('action', 'hostinsert');
			hostform.attr('method', 'POST');
			hostform.submit();
			return;

		});

 });
</script>

<%@ include file="a_footer.jsp"%>