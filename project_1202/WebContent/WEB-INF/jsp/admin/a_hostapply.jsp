<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href=admin_hostapply>������  ��û ����</a></li>
			</ul>


			<div class="row-fluid sortable">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-plus-sign white"></i><span class="break"></span>������ ��û ���</h2>
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
								  <th>��������</th>
								  <th>��ǥ�ڸ�</th>
								  <th>����ó</th>
								  <th style="display:none;">�ּ�</th>
								  <th>��û����</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <tr>
						  		<td>00</td>
						  		<td>�ι�</td>
								<td>ä���̳׳�����</td>
								<td class="center">��ä</td>
								<td class="center">888-777</td>
								<td style="display: none;">�츮��</td>
								<td class="center">
									���
								</td>
							</tr>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td>�ٴ�</td>
								<td>���ÿ�ȣ</td>
								<td class="center">������</td>
								<td class="center">010-0001-0001</td>
								<td style="display: none;">�츮��</td>
								<td class="center">
									����
								</td>
							</tr>
						  </c:forEach>
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
				
				
				
				
				<!--host ����� -->
				
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-signin white edit"></i><span class="break"></span>������ �����</h2>
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
								<label class="control-label" for="inputType">����</label>
								<div class="controls">
								   <select id="hostTypeSelect">
									<option>�ٴ�</option>
									<option>�ι�</option>
								  </select>
								</div>
							  </div>
							  <div class="control-group">
							  	<label class="control-label" for="focusedInput">������ �̸�</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="focusedInput" type="text" value="�������� �������ּ���">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >��ǥ�ڸ�</label>
								<div class="controls">
								 <input type="text">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >����ó</label>
								<div class="controls">
								 <input type="text">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >�ּ�</label>
								<div class="controls">
								 <input type="text">
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
								  <select id="" multiple data-rel="chosen">
									<option value="����">����</option>
									<option value="��ġ">��ġ</option>
									<option>���</option>
									<option>���</option>
									<option>��</option>
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >�ʼ� ���� �ȳ�</label>
								<div class="controls">
								  <textarea style="width: 80%l; height: 50px; resize: none;"></textarea>
								</div>
							  </div>
							  <div class="control-group warning">
								<label class="control-label" for="inputWarning">����� �Ѹ���</label>
								<div class="controls">
								  <textarea style="width: 80%l; height: 50px; resize: none;"></textarea>
								</div>
							  </div>
							  <div class="control-group warning">
								<label class="control-label" for="inputWarning">�̿�ȳ�</label>
								<div class="controls">
								  <textarea style="width: 80%l; height: 50px; resize: none;"></textarea>
								</div>
							  </div>
							  <div class="control-group error">
								<label class="control-label" for="inputError">���ǽü�</label>
								<div class="controls">
								  <select id="" multiple data-rel="chosen">
									<option value="ȭ���">ȭ���</option>
									<option value="��ȭ��">��ȭ��</option>
									<option>�״ø�</option>
									<option>��������</option>
									<option>�ްԽ�</option>
								  </select>
								</div>
							  </div>
							 
							  						  
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->

				
			</div><!--/row-->

<%@ include file="a_footer.jsp" %>