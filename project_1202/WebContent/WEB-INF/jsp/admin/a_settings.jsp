<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_settings">관리자 설정</a></li>
			</ul>


			<div class="row-fluid sortable">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-list-alt white user"></i><span class="break"></span>관리자 목록</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
							 	  <th>No.</th>
							 	  <th>관리자 이름</th>
								  <th>관리자 아이디</th>
								  <th>관리자 비밀번호</th>
								  <th>비고</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach items="${adminlist }" var="admin" >
						  <tr id = "insertval">
						  		<td class="center">${admin.anum }</td>
						  		<td class="center">${admin.aname }</td>
								<td class="center1">${admin.aid }</a></td>
								<td class="center">${admin.apwd }</td>
								<td class="center">
									<a class="btn btn-danger" href="admin_delete?aid=${admin.aid }">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
						  </c:forEach>
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
				
				
				
				
				<!--host 등록폼 -->
				
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>관리자 등록폼</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" enctype="multipart/form-data">
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">관리자 이름</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="adminname" type="text" >
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">관리자 아이디</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="adminid" type="text" >
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">관리자 비밀번호</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="adminpwd" type="text" >
								</div>
							  </div>
							  
							  <div class="form-actions">
								<button type="button" class="btn btn-primary" id= "insert" onclick="">저장하기</button>
								<button class="btn">취소</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->

				
			</div><!--/row-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script>
$(function() {
	$('.center1').click(function() {
		var aid = $(this).text();
		
		$.ajax({
			url : "admininsert?aid="+aid ,
			success : function(data) {
				$('#adminname').attr("value",data.aname)
				$('#adminid').attr("value",data.aid)
				$('#adminpwd').attr("value",data.apwd)
			}
		});
	});
	$('#insert').click(function() {
		location.href = "admin_insert?aname="+encodeURI($('#adminname').val())+"&aid="+$('#adminid').val()+"&apwd="+$('#adminpwd').val();
	});
	
});

</script>
<%@ include file="a_footer.jsp" %>