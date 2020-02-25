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
						<label class="control-label" for="inputType">*유형</label>
						<div class="controls">
							<select class="value" id="hostTypeSelect" name="htype" required="required">
								<option value="바다">바다</option>
								<option value="민물">민물</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="focusedInput">*가맹점 이름</label>
						<div class="controls">
							<input class="input-xlarge focused, value" type="text" id="focusedInput" name="hname"
								placeholder="가맹점을 선택해주세요" required="required" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">*대표자명</label>
						<div class="controls">
							<input class="value" type="text" id="hceo" name="hceo" placeholder="대표자명" required="required">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">*연락처</label>
						<div class="controls">
							<input class="value" type="text" id="hphone" name="hphone" placeholder="연락처" required="required">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">*주소</label>
						<div class="controls">
							<input class="value" type="text" id="haddr" name="haddr" placeholder="주소" required="required">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">*이미지등록</label>
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
						<label class="control-label" for="selectError1">*어종선택</label>
						<div class="controls">
							<select class="value" id="" multiple data-rel="chosen" id="hspecies" name="hspecies" required="required">
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
						<button type="submit" class="btn btn-primary" id=hsave> 등록
							</button>
						<button type="button" class="btn" id="cancel" onclick="location.href='admin_hostapply'">취소</button>
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
		

		<%-- 가맹점 이름 중복체크--%>
		$('#hsave').click(function() {
			var hname = $("#focusedInput").val()
	
			$.ajax({
				url : "hnamechk?hname=" + encodeURI(hname, "UTF-8"),
				success : function(data) {
					console.log(data);
					if (data == 1) {
						console.log("Json1 " + data)
						alert("이미 등록된 가맹점입니다.");
						location.href='admin_hostapply'
					} else {
						console.log("Json2 " +data)
						return false;
					}
						
					}
				
			});   
		


		});
		
		
		<%-- 사진 올린거 바로 미리 보여주기 스크립트 --%>
		$(document).ready(function(){
			$("#hfile").on("change", handleImgFileSelect);
		});
		
		function handleImgFileSelect(e){
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f){
				if(!f.type.match("image.*")){
					alert("확장자는 이미지 확장자만 가능합니다.");
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
		<%-- 사진 올린거 바로 미리 보여주기 스크립트 끝 --%>
	

});
</script>

<%@ include file="a_footer.jsp"%>