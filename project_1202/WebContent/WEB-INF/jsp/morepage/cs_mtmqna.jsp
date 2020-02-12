<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="header.jsp" %>
<style>
*, *::before, *::after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

html, body {
	width: 100%;
	height: 100%;
	-webkit-text-size-adjust: 100%;
}

html {
	overflow-y: scroll;
	overflow-x: none;
}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p,
	button {
	margin: 0;
	padding: 0
}


body {
	background-color: #fff;
	text-align: left;
	word-break: break-all;
	*word-break: break-all;
	-ms-word-break: break-all;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

img, fieldset, iframe {
	border: 0 none
}

li {
	list-style: none
}

input, select, button {
	vertical-align: middle
}

.service_area .service_tab {
	border-bottom: 1px solid #e6e6e6
}

.service_area .service_tab ol {
	width: 80%;
	margin: 0 auto;
	position: relative;
}

.service_area .service_tab li {
	float: left;
	width: 33.3333%;
	position: relative;
	top: 1px
}

.service_area .service_tab li a {
	display: block;
	font-size: 20px;
	color: #606060;
	text-align: center;
	padding: 24px 0;
	border-bottom: 1px solid #e6e6e6;
}

.service_area .service_tab li.active a {
	border-bottom: 1px solid #e84418;
	color: #e84418
}

.service_area section {
	width: 80%;
	margin: 0 auto;
}

.service_area .service_title {
	font-size: 20px;
	font-weight: 500;
}

.service_area .service_title span {
	font-weight: normal;
	font-size: 18px;
	color: #ff724c;
	text-align: center;
	display: inline-block;
	margin-right: 10px;
	width: 55px;
	height: 31px;
	line-height: 29px;
	border: 1px solid #ff724c;
	border-radius: 0.3rem;
}

.service_area .service_title strong {
	font-weight: normal;
	float: right;
	font-size: 18px;
	color: #606060;
}

.service_area .service_title strong:before {
	margin-right: 10px;
	width: 6px;
	height: 6px;
	background: #ff724c;
	border-radius: 100%;
	position: relative;
	top: -3px;
	display: inline-block;
	content: '';
}

.service_area .service_btn {
	margin-top: 65px;
}

.service_area .service_btn a {
	width: 300px;
	height: 65px;
	line-height: 63px;
	display: block;
	text-align: center;
	border-radius: 0.3rem;
	background: #e84418;
	font-size: 20px;
	font-weight: 500;
	color: #fff;
	margin: 0 auto;
}

.faq_area {
	padding-top: 50px;
}

.faq_area .service_title {
	border-bottom: 1px solid #e6e6e6;
	padding-bottom: 30px;
}

.faq_area .faq_select em {
	width: 100%;
	background: #fff;
	border: 1px solid #d5d5d5;
	border-radius: 0.3rem;
	position: relative;
	display: block;
}

.faq_area .faq_select select {
	outline: none;
	width: 100%;
	font-size: 18px;
	color: #606060;
	height: 58px;
	border: none;
	border-radius: 0.3rem;
	padding: 0 20px;
	position: relative;
	z-index: 1;
	background: none;
}

.faq_area .faq_select ins {
	text-align: center;
	display: block;
	position: absolute;
	display: block;
	top: 0;
	right: 0;
	width: 30%;
	height: 58px;
	border-left: 1px solid #d5d5d5;
	background: #f8f8f9;
	border-radius: 0 0.3rem 0.3rem 0
}

.faq_area .faq_select ins img {
	margin-top: 24px
}

.faq_area .faq_list {
	padding-top: 50px;
}

.faq_area .faq_list li {
	border-bottom: 1px solid #e6e6e6;
}

.faq_area .faq_list li a {
	line-height: 1.3;
	margin-left: 18px;
	display: block;
	font-size: 18px;
	font-weight: 500;
	padding: 25px 35px 25px 0;
	background: #fff
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/drop_down_01.png')
		top 27px right no-repeat;
}

.faq_area .faq_list li a.active {
	background: #fff
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/drop_up_01.png')
		top 27px right no-repeat;
}

.faq_area .faq_list li a:before {
	margin-left: -18px;
	width: 8px;
	height: 8px;
	background: #ff724c;
	border-radius: 100%;
	display: inline-block;
	position: relative;
	top: -3px;
	margin-right: 10px;
	content: '';
}

.faq_area .faq_list li .inner_box {
	display: none;
	background: #f8f8f9;
	padding: 20px 31px;
	font-size: 18px;
	color: #606060;
	border-top: 1px solid #e6e6e6
}

.req_area {
	padding-top: 50px;
}

.req_area .service_title {
	margin-bottom: 50px;
}

.req_area .req_list em:after {
	display: block;
	content: '';
	clear: both
}

.req_area .req_list em {
	margin-top: 20px;
	display: block;
	background: #fff;
	border: 1px solid #d5d5d5;
	border-radius: 0.3rem;
}

.req_area .req_list strong {
	font-weight: normal;
	font-size: 18px;
	height: 63px;
	line-height: 61px;
	width: 188px;
	padding-left: 51px;
	background: #f8f8f9;
	border-radius: 0.3rem 0 0 0.3rem;
	float: left;
	border-right: 1px solid #d5d5d5;
	position: relative;
}

.req_area .req_list strong.pic:before {
	width: 6px;
	height: 6px;
	background: #ff724c;
	border-radius: 100%;
	position: absolute;
	top: 30px;
	left: 34px;
	content: '';
}

.req_area .req_list input {
	width: calc(100% - 188px);
	float: left;
	border: none;
	padding: 0 20px;
	height: 63px;
	border-radius: 0 0.3rem 0.3rem 0
}

.inq_area {
	padding-top: 50px;
}

.inq_area .service_title {
	margin-bottom: 30px;
}

.inq_area .inq_tab ul {
	border: 1px solid #e6e6e6;
	border-radius: 0.3rem;
	overflow: hidden;
	margin-bottom: 30px;
}

.inq_area .inq_tab li {
	width: 50%;
	float: left
}

.inq_area .inq_tab li a {
	display: block;
	font-size: 18px;
	padding: 19px 0;
	text-align: center;
	color: #808080;
}

.inq_area .inq_tab li.active a {
	background: #ff724c;
	color: #fff
}

.inq_area .inq_select em {
	width: 100%;
	background: #fff;
	border: 1px solid #d5d5d5;
	border-radius: 0.3rem;
	position: relative;
	display: block;
}

.inq_area .inq_select select {
	outline: none;
	width: 100%;
	font-size: 18px;
	color: #606060;
	height: 58px;
	border: none;
	border-radius: 0.3rem;
	padding: 0 20px;;
	position: relative;
	z-index: 1;
	background: none;
	padding: 0 10px;
}

.inq_area .inq_select ins {
	text-align: center;
	display: block;
	position: absolute;
	display: block;
	top: 0;
	right: 0;
	width: 65px;
	height: 58px;
	border-left: 1px solid #d5d5d5;
	background: #f8f8f9;
	border-radius: 0 0.3rem 0.3rem 0
}

.inq_area .inq_select ins img {
	margin-top: 24px
}

.inq_area .inq_title {
	font-size: 20px;
	margin-top: 30px;
	margin-bottom: 20px
}

.inq_area .inq_title:before {
	width: 8px;
	height: 8px;
	border-radius: 100%;
	background: #ff724c;
	content: '';
	display: inline-block;
	position: relative;
	top: -3px;
	margin-right: 10px;
}

.inq_area .inq_title span {
	float: right;
	font-size: 15px;
	color: #878787;
	letter-spacing: -0.6px;
	margin-top: 4px;
}

.inq_area .inq_title span i {
	height: 21px;
	line-height: 19px;
	background: #fcfcfc;
	border-radius: 0.3rem;
	padding: 0 6px;
	font-size: 13px;
	color: #b7b7b7;
	letter-spacing: -0.5px;
	display: inline-block;
	margin-right: 6px;
	border: 1px solid #e6e6e6
}

.inq_area .inq_check {
	margin-top: 30px
}

.inq_area .inq_check .inq_select {
	width: 30%;
	margin-right: 20px;
	float: left;
}

.inq_area .inq_check .inq_input {
	width: 60%;
	float: left;
	border: 1px solid #d5d5d5;
	padding: 0 20px;
	border-radius: 0.3rem;
}

.inq_area .inq_check .inq_input input {
	border: none;
	height: 60px;
	width: 100%;
	font-size: 18px
}

.inq_area .inqFile_area {
	margin-top: 30px;
	border: 1px solid #d5d5d5;
	border-radius: .3rem;
	overflow: hidden;
}

.inq_area .inqFile_input {
	width: calc(100% - 150px);
	float: left;
	height: 60px;
	padding: 0 20px;
	border: none;
	outline: none;
	font-size: 16px;
}

.inq_area .inqFile_div {
	float: left;
	position: relative;
	width: 150px;
	height: 60px;
	overflow: hidden;
	background: #f8f8f8;
	border-left: 1px solid #d5d5d5
}

.inq_area .inqFile_button {
	width: 100%;
	height: 60px;
	line-height: 60px;
	position: absolute;
	top: 0;
	background: none;
	border: none;
	font-size: 16px;
	text-align: center;
	color: #606060;
}

.inq_area .inqFile_hidden {
	position: absolute;
	width: 100%;
	height: 60px;
	right: 0;
	top: 0;
	opacity: 0;
	filter: alpha(opacity = 0);
	-ms-filter: "alpha(opacity=0)";
	-khtml-opacity: 0;
	-moz-opacity: 0;
}

.inq_area .inq_form_area textarea {
	border: 1px solid #d5d5d5;
	padding: 15px;
	font-size: 18px;
	width: 100%;
	height: 250px;
	border-radius: 0.3rem;
	display: block;
	margin-top: 30px;
}

.inq_area .inq_list_box {
	border-top: 1px solid #e6e6e6
}

.inq_area .inq_list_box li {
	border-bottom: 1px solid #e6e6e6;
}

.inq_area .inq_list_box li a {
	display: block;
	font-size: 20px;
	padding: 25px 0
}

.inq_area .inq_list_box li a span {
	margin-right: 10px;
	display: inline-block;
	text-align: center;
	color: #777777;
	font-size: 17px;
	border: 1px solid #e6e6e6;
	background: #f8f8f9;
	border-radius: 0.3rem;
	width: 99px;
	height: 35px;
	line-height: 33px;
}

.inq_area .inq_list_box li a span.complete {
	border: 1px solid #ff724c;
	color: #ff724c;
	background: #fff;
}

.inq_area .inq_list_box li a em {
	float: right;
	font-size: 18px;
	color: #777777;
	position: relative;
	top: 9px;
}

.inq_area .view_sty1 {
	padding: 25px 0;
	border-top: 1px solid #e6e6e6;
}

.inq_area .view_sty1 dt {
	font-size: 20px;
	color: #777777;
	float: left;
	width: 110px;
}

.inq_area .view_sty1 dd {
	font-size: 20px;
	font-weight: 500;
	float: left;
	width: calc(100% - 110px);
}

.inq_area .view_sty1 dd span {
	display: inline-block;
	text-align: center;
	color: #777777;
	font-size: 17px;
	border: 1px solid #e6e6e6;
	background: #f8f8f9;
	border-radius: 0.3rem;
	width: 99px;
	height: 35px;
	line-height: 33px;
	position: relative;
	top: -3px
}

.inq_area .view_sty1 dd span.complete {
	border: 1px solid #ff724c;
	color: #ff724c;
	background: #fff;
}

.inq_area .view_sty2 {
	padding: 25px 0;
	border-top: 1px solid #e6e6e6;
	border-bottom: 1px solid #e6e6e6;
}

.inq_area .view_sty2 dt {
	font-size: 20px;
	color: #777777;
}

.inq_area .view_sty2 dd {
	font-size: 20px;
	font-weight: 500;
	margin-top: 15px;
}

.inq_area .list_none img {
	width: 121px
}

.inq_area .inq_in_box {
	display: table;
	width: 100%;
	margin-top: 30px;
}

.inq_area .inq_in_box .inqTi {
	display: table-cell;
	background: #f8f8f9;
	border-radius: 0.3rem 0 0 0.3rem;
	width: 110px;
	font-size: 20px;
	height: 58px;
	vertical-align: middle;
	border: 1px solid #d5d5d5;
}

.inq_area .inq_in_box .inqTi p:before {
	margin-left: 19px;
	margin-right: 10px;
	width: 6px;
	height: 6px;
	background: #ff724c;
	border-radius: 100%;
	display: inline-block;
	position: relative;
	top: -3px;
	content: '';
}

.inq_area .inq_in_box .inqIn {
	display: table-cell;
	border: 1px solid #d5d5d5;
	border-left: none;
	vertical-align: middle;
	border-radius: 0 0.3rem 0.3rem 0
}

.inq_area .inq_in_box .select2-container--default .select2-selection--single
	{
	border: none;
	font-size: 18px;
	height: 58px;
	outline: none
}

.inq_area .inq_in_box .select2-container--default .select2-selection--single .select2-selection__rendered
	{
	line-height: 56px;
	outline: none
}

.inq_area .inq_in_box .select2-container--default .select2-selection--single .select2-selection__arrow
	{
	text-align: center;
	display: block;
	position: absolute;
	display: block;
	top: 0;
	right: 0;
	width: 65px;
	height: 58px;
	border-left: 1px solid #d5d5d5;
	background: #f8f8f9;
	border-radius: 0 0.3rem 0.3rem 0
}

.inq_area .inq_in_box .select2-container--default .select2-selection--single .select2-selection__arrow b
	{
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/select_arrow_01.png')
		top 24px center no-repeat;
	width: 65px;
	height: 58px;
	text-indent: -999px;
	left: 0;
	margin-left: 0;
	margin-top: 0;
	top: 0;
	border: none
}

.select2-container--open .select2-dropdown--below {
	border: 1px solid #d5d5d5 !important;
}

.select2-container--default .select2-results>.select2-results__options {
	max-height: 430px !important
}

.select2-container--default .select2-search--dropdown .select2-search__field
	{
	padding: 20px 10px;
	font-size: 20px;
	border: none !important;
	border-bottom: 1px solid #e6e6e6 !important;
	outline: none
}

.select2-results__option {
	padding: 10px
}

.select2-result-repository.company_info {
	display: table;
	width: 100%;
	padding: 30px 20px;
	border-bottom: 1px solid #e6e6e6
}

.select2-result-repository.company_info .c_title_img {
	width: 300px;
	vertical-align: middle
}

.select2-result-repository.company_info .info_area {
	display: table-cell;
	padding-left: 20px;
	vertical-align: middle;
	width: 100%
}

.select2-result-repository.company_info .info_area .cc_type {
	margin-right: 10px;
	display: inline-block;
	font-size: 18px;
	color: #808080;
	letter-spacing: -0.5px;
	padding: 0 10px;
	border: 1px solid #b5b5b5;
	border-radius: 0.3rem;
	height: 33px;
	line-height: 31px;
}

.select2-result-repository.company_info .info_area .cc_name {
	display: inline-block;
	font-size: 18px;
	color: #ff724c;
	letter-spacing: -0.5px;
	padding: 0 10px;
	border: 1px solid #ff724c;
	border-radius: 0.3rem;
	height: 33px;
	line-height: 31px
}

.select2-result-repository.company_info .info_area .c_name {
	font-size: 25px;
	color: #333333;
	font-weight: 500;
	margin: 15px 0
}

.select2-result-repository.company_info .info_area .c_view_addr {
	font-size: 18px;
	color: #606060;
	letter-spacing: -0.5px;
}

.select2-container--default .select2-results__option--highlighted[aria-selected]
	{
	background: #fff !important;
	color: #333 !important
}

.select2-container--default .select2-results__option--highlighted[aria-selected] .select2-result-repository.company_info
	{
	background: #ff724c
}

.select2-container--default .select2-results__option--highlighted[aria-selected] .cc_type
	{
	border: 1px solid #fff;
	color: #fff;
}

.select2-container--default .select2-results__option--highlighted[aria-selected] .cc_name
	{
	border: 1px solid #fff;
	color: #fff
}

.select2-container--default .select2-results__option--highlighted[aria-selected] .c_name
	{
	color: #fff;
}

.select2-container--default .select2-results__option--highlighted[aria-selected] .c_view_addr
	{
	color: #fff
}

.inq_area .inq_in_box .in_content input {
	width: 100%;
	color: #444;
	font-size: 18px;
	border: none;
	padding: 0 8px;
	position: relative;
	top: -2px
}
</style>


	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

	<section class="ftco-section"
		style="background: white; ">
		<div class="service_area container" style="padding-top: 112px;">

			<div class="service_tab">
				<ol class="clearfix">
					<li><a href="cs_faq">�����ϴ�����</a></li>
					<li><a href="cs_customerreg">��ü��Ͽ�û</a></li>
					<li class="active"><a href="cs_mtmqna">1:1 �����ϱ�</a></li>
				</ol>
			</div>

			<section>
				<form class="" action="/service/inq_proc" method="post" id="form"
					novalidate="novalidate">
					<!-- 1:1 �����ϱ� -->
					<div class="inq_area">
						<p class="service_title">
							<span>INQ</span><b>1:1 �����ϱ�</b><strong><b>�ʼ��׸��Դϴ�.</b></strong>
						</p>

						<div class="inq_tab">
							<ul class="clearfix">
								<li class="active"><a href="/service/inq_form">�����ϱ�</a></li>
								<li><a href="/service/inq_form/list">���ǳ���</a></li>
							</ul>
						</div>

						<!-- �����ϱ� -->
						<div class="inq_form_area">
							<div class="inq_select">
								<em> <select name="sono_cate">
										<option value="7">����/����</option>
										<option value="2">��������</option>
										<option value="4">��ɰ���</option>
										<option value="8">�̺�Ʈ</option>
										<option value="9">ȸ������</option>
										<option value="1">��Ÿ</option>
								</select> <ins>
										<img
											src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/select_arrow_01.png"
											alt="">
									</ins>
								</em>
							</div>

							<div class="clearfix" id="company_info" style="display: none">
								<div class="inq_in_box">
									<div class="inqTi">
										<p>��ü��</p>
									</div>

									<div class="inqIn">
										<!-- // ��ü�󼼿��� �ٷ� ���Խ� In_content �߰� !-->
										<!--<div class="inqIn In_content"><!-- // ��ü�󼼿��� �ٷ� ���Խ� In_content �߰� !-->
										<select class="company_search select2-hidden-accessible"
											name="c_key" style="width: 100%; height: 100%;" tabindex="-1"
											aria-hidden="true">
											<option value="" selected="selected">��ü���� �Է����ּ���.</option>
										</select><span
											class="select2 select2-container select2-container--default"
											dir="ltr" style="width: 100%;"><span class="selection"><span
												class="select2-selection select2-selection--single"
												role="combobox" aria-haspopup="true" aria-expanded="false"
												tabindex="0" aria-labelledby="select2-c_key-2u-container"><span
													class="select2-selection__rendered"
													id="select2-c_key-2u-container" title="��ü���� �Է����ּ���.">��ü����
														�Է����ּ���.</span><span class="select2-selection__arrow"
													role="presentation"><b role="presentation"></b></span></span></span><span
											class="dropdown-wrapper" aria-hidden="true"></span></span>
									</div>
									<!-- // reqIn !-->
								</div>
								<!-- // inq_in_box !-->
							</div>
							<textarea name="sono_content" placeholder="�ּ� 10���̻� ���Ǳ��� �Է����ּ���."></textarea>

							<div class="inq_check clearfix">
								<div class="inq_select">
									<em> <select name="sono_cate_contact">
											<option value="1">����ó</option>
											<option value="2">�̸���</option>
									</select> <ins>
											<img
												src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/select_arrow_01.png"
												alt="">
										</ins>
									</em>
								</div>
								<div class="inq_input">
									<input type="tel" name="sono_phone"
										placeholder="�亯 ���� ����ó�� �Է����ּ���." maxlength="13"
										data-phone-mask="">
									<!-- <input type="email" placeholder="�亯 ���� �̸����ּҸ� �Է����ּ���." style="display:none"> -->
								</div>
							</div>

							<div class="inqFile_area clearfix">
								<input type="text" id="inqFile" class="inqFile_input"
									readonly="readonly" placeholder="���õ� ���� ����">
								<div class="inqFile_div">
									<input type="button" value="ã�ƺ���" class="inqFile_button">
									<input type="file" name="sono_file" class="inqFile_hidden"
										onchange="javascript: document.getElementById('inqFile').value = this.value"
										accept="image/*">
								</div>
							</div>

							<!-- // ����÷��
                    <input type="file" name="sono_file" value="" />
                    -->
							<div class="service_btn submit_btn">
								<a>�����ϱ�</a>
							</div>
						</div>
						<!--// �����ϱ� -->
					</div>
					<!--// 1:1 �����ϱ� -->
				</form>
			</section>
		</div>
	</section>
	<!-- .section -->



	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script>
		<script>
		$(document).ready(function() {
			$(".ps_gobtn a").attr({
				"target" : "_blank"
			});

			$(document).on('click', '#more_content', function() {
				location.href = "/mypage/login";
			});
		});
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							// �޴���,�̸��� ����Ʈ �ڽ� �����
							$(document)
									.on(
											'keyup',
											'[data-phone-mask]',
											function() {
												$(this).val(
														autoHypenPhone($(this)
																.val()));
											})
									.on(
											'change',
											'#form select[name=sono_cate_contact]',
											function() {
												var value = $(this).val(), html = "";
												if (value === '1') {
													html += "<input type=\"tel\" name=\"sono_phone\" placeholder=\"�亯 ���� ����ó�� �Է����ּ���.\" maxlength=\"13\" data-phone-mask>";
												} else if (value === '2') {
													html += "<input type=\"email\" name=\"sono_email\" placeholder=\"�亯 ���� �̸����� �Է����ּ���.\" maxlength=\"100\">";
												}

												$(".inq_input").children(
														'input').remove();
												$(".inq_input").append(html);
											});

							// �Է� ���� �� �� ����
							$('#form select[name=sono_cate]').change(
									function() {
										$('#company_info').hide();
										if ($(this).val() === '6') {
											$('#company_info').show();
										}
									});

							function formatRepo(repo) {
								if (repo.loading)
									return repo.text;
								var markup = "<div class='select2-result-repository company_info clearfix'>"
										+ "<div class='c_title_img'><img src='" + repo.c_title_img + "' /></div>"
										+
										//"<div class='c_title_img'><img src='/favicon/logo_1024.png' /></div>" +
										"<div class='info_area'>"
										+ "<div class='cc_type'>"
										+ repo.cc_type
										+ "</div>"
										+ "<div class='cc_name'>"
										+ repo.cc_name
										+ "</div>"
										+ "<div class='c_name'>"
										+ repo.c_name
										+ "</div>"
										+ "<div class='c_view_addr'>"
										+ repo.c_view_addr
										+ "</div>"
										+ "</div>" + "</div>";
								return markup;
							}

							function formatRepoSelection(repo) {
								var markup = repo.text;
								if (repo.cc_name) {
									/*
									markup = repo.cc_name + ' ' + repo.c_name + repo.c_view_addr;

									markup = "<span class='company_info result'>" +
									    "<span class='cc_name'>" + repo.cc_name + "</span>" +
									    "<span class='c_name'>" + repo.c_name + "</span>" +
									    "<span class='c_view_addr'><small>" + repo.c_view_addr + "</small></span>" +
									"</span>";
									 */
									markup = repo.cc_name + ' - ' + repo.c_name;
								}
								return markup;
							}

							$(".company_search").select2({
								language : 'ko',
								ajax : {
									url : "/service/company_search_form",
									dataType : 'json',
									delay : 250,
									data : function(params) {
										return {
											srch_text : params.term, // search term
											page : params.page
										};
									},
									processResults : function(data, params) {
										return {
											results : data.list,
											pagination : {
												more : data.end
											}
										};
									},
									cache : true
								},
								escapeMarkup : function(markup) {
									return markup;
								}, // let our custom formatter work
								minimumInputLength : 1,
								templateResult : formatRepo, // omitted for brevity, see the source of this page
								templateSelection : formatRepoSelection
							// omitted for brevity, see the source of this page
							});

							//�񵿱� ó��
							$('#form').ajaxForm(
									{
										dataType : 'json',
										success : function(res) {
											return $.toastAlert(res.msg, true,
													'/service/inq_form/list');
										},
										error : function(res) {
											if (res.responseText) {
												location.reload(true);
											}
										}
									});

							$.validator.addMethod("space_chk", function(value,
									element) {
								return value == '' || value.trim().length > 9;
							}, "������ �Է��� �Ұ����մϴ�.");

							//��ȿ�� �˻�
							var validate_options = {
								rules : {
									/*sono_title : { required : true },*/
									/*sono_email : { required : true, email : true },*/
									sono_cate : {
										required : true
									},
									c_key : {
										required : function(element) {
											return $(
													'#form select[name=sono_cate]')
													.val() === '6';
										}
									},
									sono_content : {
										required : true,
										minlength : 10,
										space_chk : true
									}
								},
								messages : {
									/*sono_title : { required : "���� ������ �Է����ּ���." },*/
									/*sono_email : { required : "���������� �̸����� �Է����ּ���." },*/
									sono_cate : {
										required : "���� �׸��� �������ּ���."
									},
									c_key : {
										required : "��ü���� �Է����ּ���."
									},
									sono_content : {
										required : "���� ������ �Է����ּ���.",
										minlength : $.validator
												.format("�ּ� {0}���̻� ���Ǳ��� �Է����ּ���.")
									}
								},
								invalidHandler : function(form, validator) {
									var errors = validator.numberOfInvalids();
									if (errors) {
										return $
												.toastAlert(validator.errorList[0].message);
										validator.errorList[0].element.focus();
									}
								}
							};
							$('#form').validate(
									$.extend($.default_validate,
											validate_options));

							//���� ��� �ϱ�
							var submit_func = function() {
								var $form = $(this).parents('form');

								if ($('#form').valid()) {
									$("#form").submit();
								}
								$('#form .submit_btn')
										.one('click', submit_func);
							};
							$('#form .submit_btn').one('click', submit_func);

						});
	</script>

</body>
</html>