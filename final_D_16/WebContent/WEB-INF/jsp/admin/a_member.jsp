<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ADMIN Header Start -->
<%@ include file="a_header.jsp"%>
<i class="icon-angle-right"></i>
</li>
<li><a href="admin_member">ȸ�� ����</a></li>
</ul>


<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2>
				<i class="icon-group white user"></i><span class="break"></span>ȸ��
				���
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
						<th>���̸�</th>
						<th>����</th>
						<th>����</th>
						<th>�̿�Ǽ�</th>
						<th>������</th>
						<th>Ż����</th>
						<th>�Ű�</th>
						<th>ȸ��Ż��</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mlist }" var="e">
						<tr>
							<td>${e.mnum}</td>
							<td>${e.mname }</td>
							<td>${e.mbirth }</td>
							<td class="center">${e.msex }</td>
							<td class="center"><span class="label label-success">${e.using }</span></td>
							<td class="center">${e.mjoin }</td>
							<td class="center">${e.mdrop }</td>
							<td>${e.report }</td>
							<td><a class="btn btn-danger" href="memberupdate?mnum=${e.mnum }"> <i
								class="halflings-icon white trash"></i></a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	<!--/span-->

</div>
<!--/row-->
<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header">
			<h2>
				<i class="halflings-icon white list-alt"></i><span class="break"></span>����
				������ ��
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
			<div id="realtimechart" style="height: 190px;"></div>
			<p>You can update a chart periodically to get a real-time effect
				by using a timer to insert the new data in the plot and redraw it.</p>
			<p>
				Time between updates: <input id="updateInterval" type="text"
					value="" style="text-align: right; width: 5em">
				milliseconds
			</p>
		</div>
	</div>
</div>
<!--/row-->

<%@ include file="a_footer.jsp"%>