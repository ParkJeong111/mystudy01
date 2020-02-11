<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
/*�Խñ� �� ���� ��޷� Ȯ���ϱ�  ����*/
  .modalBackground {
      display: none;
      position: fixed; /* Stay in place */
      z-index: 80; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  }

  .modal-content {
      background-color: #fefefe;
      margin: 15% auto; /* 15% from the top and centered */
      padding: 20px;
      border: 1px solid #888;
      width: 50%; /* Could be more or less, depending on screen size */                          
  }

  .closeModal {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
  }
  .close:hover,
  .close:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
  }
/*�Խñ� �� ���� ��޷� Ȯ���ϱ�  ��*/


</style>   
   

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_board">�Խ��� ����</a></li>
			</ul>
<button id="myBtn">Open Modal</button>
<div id="modalBackground" class="modalBackground">
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
			
			<!-- ��� ���� -->
			<div class="modal-content">
		        <span class="closeModal">&times;</span>                                                               
		        <p>Some text in the Modal..</p>
		    </div>
			
			
</div>

<script>
// Get the modal
var modal = document.getElementById('modalBackground');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("closeModal")[0];                                          

// When the user clicks on the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

</script>


<%@ include file="a_footer.jsp" %>