<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.qnatabletitle {
	font: bold;
	text-align: center;
}
</style>
<!-- ADMIN Header Start -->
<%@ include file="a_header.jsp"%>
<i class="icon-angle-right"></i>
</li>
<li><a href="admin_mtmqna">1:1문의 관리</a></li>
</ul>


<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-edit white"></i><span class="break"></span>1:1문의 목록
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
			<div style="margin: auto; padding: auto; text-align: center;">
				<strong><span>답변유무&nbsp;&nbsp;&nbsp;</span></strong><select>
					<option></option>
					<option>미답변</option>
					<option>답변완료</option>
				</select>
			</div>
			<table
				class="table table-striped table-bordered bootstrap-datatable datatable">
				<thead>
					<tr>
						<th>No.</th>
						<th>구분</th>
						<th>아이디</th>
						<th>연락처</th>
						<th>작성일</th>
						<th>답변일</th>
						<th>답변자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${qlist }" var="e">
						<tr>
							<td>${e.qnum}</td>
							<td>${e.qcategory }</td>
							<td class="center qnalist" style="cursor: pointer;">${e.mid }</td>
							<td class="center">${e.qphone }</td>
							<td class="center">${e.qdate }</td>
							<td class="center">${e.qadate }</td>
							<td class="center">${e.qadmin }</td>
						</tr>
					</c:forEach>

				</tbody>

			</table>

		</div>

	</div>
	<!--/span-->
	<div class="box span6">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-signin"></i><span class="break"></span>1:1 문의 내용
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
			<form role="answerform" action="" method="post" class="form-horizontal" enctype="multipart/form-data">
				<table
					class="table table-striped table-bordered bootstrap-datatable datatable">
					<tbody>
						<tr>
							<td class="qnatabletitle">No.</td>
							<td><input type="text" readonly="readonly" id="qanum"value="" name="qnum"></td>
						</tr>
						<tr>
							<td class="qnatabletitle">구분</td>
							<td><input type="text" readonly="readonly" id="qacategory"value="" name="qcategory"></td>
						</tr>
						<tr>
							<td class="qnatabletitle">아이디</td>
							<td><input type="text" readonly="readonly" id="qaid"value="" name="mid"></td>
						</tr>
						<tr>
							<td class="qnatabletitle">내용</td>
							<td><input type="text" readonly="readonly" id="qacontent"value="" name="qcontent"></td>
						</tr>
						<tr>
							<td class="qnatabletitle">연락처</td>
							<td><input type="text" readonly="readonly" id="qaphone"value="" name="qphone"></td>
						</tr>
						<tr>
							<td class="qnatabletitle">작성일</td>
							<td><input type="text" readonly="readonly" id="qadate"value="" name="qdate"></td>
						</tr>
						<tr>
							<td class="qnatabletitle">답변</td>
							<td><textarea style="height: 200px; width: 90%;" id="qaanswer" placeholder="" name="qanswer"></textarea></td>
						</tr>
						<tr>
							<td colspan="2"
								style="text-align: center; margin: auto; padding: auto;"><a
								class="btn btn-success" id="reanswer"> <i class="halflings-icon ok white"></i>
							</a></td>
						</tr>
					</tbody>
				</table>
			</form>

		</div>
	</div>
</div>
<!--/row-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$('.qnalist').each(function() {
			$(this).click(function() {
				var qnum = $(this).prev().prev().text();
				console.log(qnum);
				$.ajax({
					url : "qnainfo?qnum="+qnum,
					datatype:'json',
					success:function(data){
						if(data != null){
							$('#qanum').attr("value",data.qnum);
							$('#qacategory').attr("value",data.qcategory);
							$('#qaid').attr("value",data.mid);
							$('#qacontent').attr("value",data.qcontent);
							$('#qaphone').attr("value",data.qphone);
							$('#qadate').attr("value",data.qdate);
							$('#qaanswer').attr("placeholder",data.qanswer);
						}
					}
				})
			});

		});
		var formObj = $("form[role='answerform']");
		$('#reanswer').click(function () {
			console.log($('#qanum').val())
			formObj.attr("action","qnaanswer");
			formObj.submit();
		})
	});
</script>
<!-- <script>
	$(function() {
		$('.qnalist').each(function() {
			$(this).click(function() {
				var qnum = $(this).text();
				console.log("여기?");
				$.ajax({
					url : "qnainfo?qnum="+qnum,
					datatype:'json',
					success:function(data){

				}
			});
		});
	})
</script> -->

<%@ include file="a_footer.jsp"%>