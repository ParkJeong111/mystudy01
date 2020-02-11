<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_board">�Խ��� ����</a></li>
			</ul>

			<div class="row-fluid sortable ">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-edit white"></i><span class="break"></span>�Խñ� ���</h2>
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
								  <th>����</th>
								  <th>���̵�</th>
								  <th>��ȸ��</th>
								  <th>�ۼ���</th>
								  <th>�Ű�</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
								<td>�ı�</td>
						  		<td><a href="admin_board_detail">����Ⱑ ��������</a></td>
								<td class="center">angel153ccccc</td>
								<td class="center"><span class="label label-success">5</span>���?</td>
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
						<h2><i class="icon-edit white"></i><span class="break"></span>�߰� �Խñ� ���</h2>
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
								  <th>��ȸ��</th>
								  <th>�ۼ���</th>
								  <th>�Ű�</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td><a href="admin_board_detail">�������� �˴ϴ� </a></td>
								<td class="center">parkjeong111</td>
								<td class="center">50</span>��</td>
								<td class="center">2019/12/31</td>
								<td class="center">
								�Ű�1��
									
								</td>
							</tr>
						  </c:forEach>
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
				<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>���� �Խñ� ��</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						 <div id="realtimechart" style="height:190px;"></div>
						 <p>You can update a chart periodically to get a real-time effect by using a timer to insert the new data in the plot and redraw it.</p>
						 <p>Time between updates: <input id="updateInterval" type="text" value="" style="text-align: right; width:5em"> milliseconds</p>
					</div>
				</div>
			</div><!--/row-->
			
		
			
			





<%@ include file="a_footer.jsp" %>