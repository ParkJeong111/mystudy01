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
				<li><a href="admin_mtmqna">1:1庚税 淫軒</a></li>
			</ul>


			<div class="row-fluid sortable">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-edit white"></i><span class="break"></span>1:1庚税 鯉系 </h2> 
						<div class="box-icon">
					
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
					<div style="margin: auto;padding: auto; text-align: center;">
						 <strong><span>岩痕政巷&nbsp;&nbsp;&nbsp;</span></strong><select>
									<option></option>
									<option>耕岩痕</option>
									<option>岩痕刃戟</option>
						  </select></div>
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
							 	  <th>No.</th>
								  <th>姥歳</th>
								  <th>焼戚巨</th>
								  <th>尻喰坦</th>
								  <th>拙失析</th>
								  <th>岩痕析</th>
								  <th>岩痕切</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td>森鉦</td>
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
						<h2><i class="icon-signin"></i><span class="break"></span>1:1 庚税 鎧遂</h2>
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
							  		<td class="qnatabletitle">姥歳</td>
							  		<td>森鉦</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">焼戚巨</td>
							  		<td>angel153ccccc</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">鎧遂</td>
							  		<td>寓嬢虞っけし蟹君原びいし君たびけし格虞袴焼君たけ嬢寓嬢た君原び</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">尻喰坦</td>
							  		<td>010-1234-1234</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">歎採督析</td>
							  		<td>森鉦溌昔.jpg</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">拙失析</td>
							  		<td>2019/12/31</td>
								  </tr>
								  <tr>
							  		<td class="qnatabletitle">岩痕</td>
							  		<td><textarea style="height:200px; width: 90%;"></textarea></td>
								  </tr>
								  <tr>
								  <td colspan="2" style="text-align: center; margin: auto;padding: auto;">
								  <a class="btn btn-success" href="javascript:void(0)" onclick="mtmqnaanswer(角獄葵亜走壱 逢獣陥)">
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