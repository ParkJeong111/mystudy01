<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_matching">��Ī�ý��� ����</a></li>
			</ul>


			<div class="row-fluid sortable">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-link white"></i><span class="break"></span>��Ī �Խñ� ���</h2>
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
								  <th>����</th>
								  <th>���̵�</th>
								  <th>�ۼ���</th>
								  <th>�Ű�</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td><a href="admin_board_detail">�̹��� ��� ������ ���ô�</a></td>
								<td class="center">angel153ccccc</td>
								<td class="center">2019/12/31</td>
								<td class="center">
									
								</td>
							</tr>
						  </c:forEach>
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
				
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-link white"></i><span class="break"></span>��Ī �α� ���</h2>
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
								  <th>��Ī�ο���</th>
								  <th>���̵�</th>
								  <th>ĳ����</th>
								  <th>��Ī��</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td>3��</a></td>
								<td class="center">parkjeong111, angel153c, atpwls</td>
								<td class="center">�߰�����</td>
								<td class="center">2019/12/31</td>
							</tr>
						  </c:forEach>
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->


<%@ include file="a_footer.jsp" %>