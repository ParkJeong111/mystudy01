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
								  <th>��Ÿ</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach items="${match }" var = "match">
						  <tr>
						  		<td>${match.mbnum}</td>
						  		<td>${match.mbtitle }</a></td>
								<td class="center">${match.mid }</td>
								<td class="center">${match.mbdate }</td>
								<td class="center">${match.mbreport }</td>
								<td><a class="btn btn-danger" href="match_delete?mbnum=${match.mbnum}">
										<i class="halflings-icon white trash"></i> 
									</a></td>
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
								  <th>��Ī ����</th>
								  <th>�ο���</th>
								  <th>����</th>
								  <th>������</th>
								  <th>���</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach items = "${matchlog }" var="log">
						  <tr>
						  		<td>${log.mbnum }</td>
						  		<td>${log.mltitle }</td>
								<td class="center">${log.mlperson }</td>
								<td class="center">${log.mllocation }</td>
								<td class="center">${log.mlstartdate }</td>
								<td><a class="btn btn-danger" href="matchlog_delete?mbnum=${log.mbnum}">
										<i class="halflings-icon white trash"></i> 
									</a></td>
							</tr>
						  </c:forEach>
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->


<%@ include file="a_footer.jsp" %>