<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="admin_dashboard">�̿���� ��Ȳ</a></li>
			</ul>

					

			<div class="row-fluid">
				
				<div class="span8 widget blue" onTablet="span7" onDesktop="span8">
				<h2><span class="icon-time"><i></i></span> �ð��� �� ������ ��</h2>
				<hr>
					
					<div id="stats-chart2"  style="height:282px" ></div>
					
				</div>
				
				<div class="sparkLineStats span4 widget green" onTablet="span5" onDesktop="span4">

                    <ul class="unstyled">
                        
                        <li><span class="sparkLineStats3"></span> 
                         	   ������ ��ȸ �� : 
                            <span class="number">781</span>
                        </li>
                        <li><span class="sparkLineStats4"></span>
                            	���� �� ��ȸ ��(������ ��ȸ �� / �湮�� ��) : 
                            <span class="number">2,19</span>
                        </li>
                        <li><span class="sparkLineStats5"></span>
                            	������ ��: 
                            <span class="number">765</span>
                        </li>
                        <li><span class="sparkLineStats6"></span>
                            	��Ż��(������ �� / Ż���� ��) : <span class="number">59,83%</span>
                        </li>
                        <li><span class="sparkLineStats7"></span>
                            	��湮��(2���̻� �α����� ������ / ���� �α����� ������) : 
                            <span class="number">70,79%</span>
                        </li>
                        <li><span class="sparkLineStats8"></span>
                            	���� �˻� ��: 
                            <span class="number">7753</span>
                        </li>

                    </ul>
					
					<div class="clearfix"></div>

                </div><!-- End .sparkStats -->

			</div>
			
						
			<div class="row-fluid">
				
				<div class="widget blue span5" onTablet="span6" onDesktop="span5">
					
					<h2><span class="glyphicons globe"><i></i></span> ���� �� ���� ��Ȳ</h2>
					
					<hr>
					
					<div class="content">
						
						<div class="verticalChart">
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>37%</span>
									</div>
								
								</div>
								
								<div class="title">����</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>16%</span>
									</div>
								
								</div>
								
								<div class="title">���</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>12%</span>
									</div>
								
								</div>
								
								<div class="title">��õ</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>9%</span>
									</div>
								
								</div>
								
								<div class="title">�泲</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>7%</span>
									</div>
								
								</div>
								
								<div class="title">���</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>6%</span>
									</div>
								
								</div>
								
								<div class="title">�泲</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>5%</span>
									</div>
								
								</div>
								
								<div class="title">���</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>4%</span>
									</div>
								
								</div>
								
								<div class="title">����</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>3%</span>
									</div>
								
								</div>
								
								<div class="title">����</div>
							
							</div>
							
							<div class="singleBar">
							
								<div class="bar">
								
									<div class="value">
										<span>1%</span>
									</div>
								
								</div>
								
								<div class="title">������</div>
							
							</div>	
							
							<div class="clearfix"></div>
							
						</div>
					
					</div>
					
				</div><!--/span-->
				
				<div class="widget span3 red" onTablet="span6" onDesktop="span3">
					
					<h2><span class="glyphicons pie_chart"><i></i></span> ���� �÷��� ����</h2>
					
					<hr>
					
					<div class="content">
						
						<div class="browserStat big">
							<img src="${pageContext.request.contextPath}/resources/admin/img/browser-chrome-big.png" alt="Chrome">
							<span>34%</span>
						</div>
						<div class="browserStat big">
							<img src="${pageContext.request.contextPath}/resources/admin/img/browser-firefox-big.png" alt="Firefox">
							<span>34%</span>
						</div>
						<div class="browserStat">
							<img src="${pageContext.request.contextPath}/resources/admin/img/browser-ie.png" alt="Internet Explorer">
							<span>34%</span>
						</div>
						<div class="browserStat">
							<img src="${pageContext.request.contextPath}/resources/admin/img/browser-safari.png" alt="Safari">
							<span>34%</span>
						</div>
						<div class="browserStat">
							<img src="${pageContext.request.contextPath}/resources/admin/img/browser-opera.png" alt="Opera">
							<span>34%</span>
						</div>	
								
						
					</div>
				</div>
				
				<div class="widget yellow span4 noMargin" onTablet="span12" onDesktop="span4">
					<h2><span class="glyphicons fire"><i></i></span> ���� ���� ��Ȳ</h2>
					<hr>
					<div class="content">
						 <div id="serverLoad2" style="height:224px;"></div>
					</div>
				</div>
			
			</div>
			
			
			
			
			<!--/row-->
			
       

<%@ include file="a_footer.jsp" %>