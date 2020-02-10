<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_board">게시판 관리</a></li>
			</ul>

			<div class="row-fluid sortable ">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-edit white"></i><span class="break"></span>게시글 목록</h2>
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
							 	  <th>구분</th>
								  <th>제목</th>
								  <th>가맹점명</th>
								  <th>아이디</th>
								  <th>작성일</th>
								  <th>신고</th>
								  <th>비고</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach items = "${board }" var="board">
						  <tr>
						  		<td>${board.bnum}</td>
								<td>${board.btype1 }/${board.btype2 }</td>
						  		<td>${board.hname }</td>
						  		<td>${board.btitle }</td>
								<td class="center">${board.mid }</td>
								<td class="center">${board.bdate }</td>
								<td class="center">${board.breport }</td>
								<td><a class="btn btn-danger" href="board_delete?bnum=${board.bnum}">
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
						<h2><i class="icon-edit white"></i><span class="break"></span>중고 게시글 목록</h2>
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
								  <th>제목</th>
								  <th>물건이름</th>
								  <th>아이디</th>
								  <th>가격</th>
								  <th>상태</th>
								  <th>작성일</th>
								  <th>신고</th>
								  <th>비고</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach items = "${itemsboard }" var="itemsboard">
						  <tr>
						  		<td>${itemsboard.ibnum}</td>
						  		<td>${itemsboard.ibtitle}</td>
						  		<td>${itemsboard.ibname}</td>
								<td class="center">${itemsboard.mid}</td>
								<td class="center">${itemsboard.ibmoney}</td>
								<td>${itemsboard.ibstatus}</td>
								<td class="center">${itemsboard.ibdate}</td>
								<td class="center">${itemsboard.ibreport}</td>
								<td><a class="btn btn-danger" href="items_delete?ibnum=${itemsboard.ibnum}">
										<i class="halflings-icon white trash"></i> 
									</a></td>
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
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>현재 게시글 수</h2>
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