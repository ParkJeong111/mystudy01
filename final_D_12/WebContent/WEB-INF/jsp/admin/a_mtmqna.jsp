<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.qnatabletitle{
	font: bold;
	text-align: center;
}
</style>
<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_mtmqna">1:1문의 관리</a></li>
			</ul>


			<div class="row-fluid sortable">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-edit white"></i><span class="break"></span>1:1문의 목록 </h2> 
						<div class="box-icon">
					
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
					<div style="margin: auto;padding: auto; text-align: center;">
						 <strong><span>답변유무&nbsp;&nbsp;&nbsp;</span></strong><select>
									<option></option>
									<option>미답변</option>
									<option>답변완료</option>
						  </select></div>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
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
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td>예약</td>
								<td class="center"><a href="admin_mtmqna_detail">angel153ccccc</a></td>
								<td class="center">010-1234-1234</td>
								<td class="center">2019/12/31</td>
								<td class="center">2019/01/29</td>
								<td class="center">qadmin</td>
							</tr>
						  </c:forEach>
							
						  </tbody>
						 
					  </table>            
				</div>
					
				</div><!--/span-->
			<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-signin"></i><span class="break"></span>1:1 문의 내용</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" enctype="multipart/form-data">
					    	<table class="table table-striped table-bordered bootstrap-datatable datatable">
							  <tbody>
							  	  <tr>
							  		<td class="qnatabletitle">No.</td>
							  		<td>5</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">구분</td>
							  		<td>예약</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">아이디</td>
							  		<td>angel153ccccc</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">내용</td>
							  		<td>람어라ㅓㅁㅇ나러마ㅣㄴㅇ러ㅏㅣㅁㅇ너라머아러ㅏㅁ어람어ㅏ러마ㅣ</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">연락처</td>
							  		<td>010-1234-1234</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">첨부파일</td>
							  		<td>예약확인.jpg</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">작성일</td>
							  		<td>2019/12/31</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">답변</td>
							  		<td><textarea style="height:200px; width: 90%;"></textarea></td>
								  </tr>
								  <tr>
								  <td colspan="2" style="text-align: center; margin: auto;padding: auto;">
								  <a class="btn btn-success" href="javascript:void(0)" onclick="mtmqnaanswer(넘버값가지고 갑시다)">
										<i class="halflings-icon ok white"></i>  
									</a>
			  					
									</td></tr>
						 		 </tbody>
					 		 </table>    
					    </form>
					
					</div>
				</div>
			</div><!--/row-->
	<script>
	function mtmqnaanswer(qnum) {
		location.href="updateqna?qnum="+qnum+"+encodeURI(hname, "UTF-8");
	};
	</script>
<%@ include file="a_footer.jsp" %>