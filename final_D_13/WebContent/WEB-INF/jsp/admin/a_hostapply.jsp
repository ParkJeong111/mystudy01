<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href=admin_hostapply>가맹점  요청 관리</a></li>
			</ul>


			<div class="row-fluid sortable">		
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="icon-plus-sign white"></i><span class="break"></span>가맹점 요청 목록</h2>
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
							 	  <th>유형</th>
								  <th>가맹점명</th>
								  <th>대표자명</th>
								  <th>연락처</th>
								  <th style="display:none;">주소</th>
								  <th>요청상태</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <tr>
						  		<td>00</td>
						  		<td>민물</td>
								<td>채은이네낚시터</td>
								<td class="center">김채</td>
								<td class="center">888-777</td>
								<td style="display: none;">우리집</td>
								<td class="center">
									대기
								</td>
							</tr>
						  <c:forEach var="mem" begin="1" end="32" step="1">
						  <tr>
						  		<td>${mem}</td>
						  		<td>바다</td>
								<td>낚시왕호</td>
								<td class="center">박정연</td>
								<td class="center">010-0001-0001</td>
								<td style="display: none;">우리집</td>
								<td class="center">
									승인
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
						<h2><i class="icon-signin white edit"></i><span class="break"></span>가맹점 등록폼</h2>
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
								<label class="control-label" for="inputType">유형</label>
								<div class="controls">
								   <select id="hostTypeSelect">
									<option>바다</option>
									<option>민물</option>
								  </select>
								</div>
							  </div>
							  <div class="control-group">
							  	<label class="control-label" for="focusedInput">가맹점 이름</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="focusedInput" type="text" value="가맹점을 선택해주세요">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >대표자명</label>
								<div class="controls">
								 <input type="text">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >연락처</label>
								<div class="controls">
								 <input type="text">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >주소</label>
								<div class="controls">
								 <input type="text">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label">이미지등록</label>
								<div class="controls">
								  <input multiple="multiple" type="file">
							</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError1">어종선택</label>
								<div class="controls">
								  <select id="" multiple data-rel="chosen">
									<option value="고등어">고등어</option>
									<option value="참치">참치</option>
									<option>방어</option>
									<option>상어</option>
									<option>고래</option>
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >필수 공지 안내</label>
								<div class="controls">
								  <textarea style="width: 80%l; height: 50px; resize: none;"></textarea>
								</div>
							  </div>
							  <div class="control-group warning">
								<label class="control-label" for="inputWarning">사장님 한마디</label>
								<div class="controls">
								  <textarea style="width: 80%l; height: 50px; resize: none;"></textarea>
								</div>
							  </div>
							  <div class="control-group warning">
								<label class="control-label" for="inputWarning">이용안내</label>
								<div class="controls">
								  <textarea style="width: 80%l; height: 50px; resize: none;"></textarea>
								</div>
							  </div>
							  <div class="control-group error">
								<label class="control-label" for="inputError">편의시설</label>
								<div class="controls">
								  <select id="" multiple data-rel="chosen">
									<option value="화장실">화장실</option>
									<option value="소화기">소화기</option>
									<option>그늘막</option>
									<option>구명조끼</option>
									<option>휴게실</option>
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