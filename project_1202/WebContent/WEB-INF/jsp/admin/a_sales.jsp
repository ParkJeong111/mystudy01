<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- ADMIN Header Start -->	
<%@ include file="a_header.jsp" %>
					<i class="icon-angle-right"></i>
				</li>
<li><a href="admin_sales">������� ��Ȳ</a></li>
			</ul>

			<div class="row-fluid">
				
				<div class="box">
					<div class="box-header">
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>�ð��� �� ����</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div id="sincos"  class="center" style="height:300px;" ></div>
						<p id="hoverdata">Mouse position at (<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span></p>
					</div>
				</div>
				
				<div class="box">
					<div class="box-header">
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>�б� ��(����) ����</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div id="flotchart" class="center" style="height:300px"></div>
					</div>
				</div>
				
				<div class="box">
					<div class="box-header">
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>���ɴ� �� ����(��������)</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						 <div id="stackchart" class="center" style="height:300px;"></div>

						<p class="stackControls center">
							<input class="btn" type="button" value="With stacking">
							<input class="btn" type="button" value="Without stacking">
						</p>

						<p class="graphControls center">
							<input class="btn-primary" type="button" value="Bars">
							<input class="btn-primary" type="button" value="Lines">
							<input class="btn-primary" type="button" value="Lines with steps">
						</p>
					</div>
				</div>

			</div><!--/row-->
			
			<div class="row-fluid sortable">
				<div class="box span6">
					<div class="box-header">
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>���� �� ��ü ����</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
							<div id="piechart" style="height:300px"></div>
					</div>
				</div>
			
				<div class="box span6">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white list-alt"></i><span class="break"></span>������ ���� ��Ȳ</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						 <div id="donutchart" style="height: 300px;"></div>
					</div>
				</div>
			
			</div><!--/row-->
		
			<hr>
		
		
			<!--  
			<div class="row-fluid">
				
				<div class="widget span6" onTablet="span6" onDesktop="span6">
					<h2><span class="glyphicons facebook"><i></i></span>Facebook Fans</h2>
					<hr>
					<div class="content">
						<div id="facebookChart" style="height:300px" ></div>
					</div>
				</div>
				
				<div class="widget span6" onTablet="span6" onDesktop="span6">
					<h2><span class="glyphicons twitter"><i></i></span>Twitter Followers</h2>
					<hr>
					<div class="content">
						<div id="twitterChart" style="height:300px" ></div>
					</div>
				</div>
			
			</div>-->

			

			
						
			
			
			
			
			
			
       


<%@ include file="a_footer.jsp" %>