<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<style>
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
	border-bottom: 1px solid #f85959;
	color: #f85959
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
	width: 30%;
	height: 65px;
	line-height: 63px;
	display: block;
	text-align: center;
	border-radius: 0.3rem;
	background: #f85959;
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
	width: 50%;
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
	width: 250px;
	margin-right: 20px;
	float: left;
}

.inq_area .inq_check .inq_input {
	width: calc(100% - 270px);
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
	padding-left: 0px;
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
</style>


	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

	<section class="ftco-section"
		style=" background: white; ">
	<div class="service_area container" >

		<div class="service_tab">
			<ol class="clearfix">
					<li class="active"><strong><a href="cs_faq"><b>�����ϴ�����</b></a></strong></li>
					<li ><strong><a href="cs_customerreg"><b>��ü��Ͽ�û</b></a></strong></li>
					<li ><strong><a href="cs_mtmqna"><b>1:1 �����ϱ�</b></a></strong></li>
				</ol>
		</div>
		<section>
			<!-- ������ -->
			<div class="faq_area">
				<div class="faq_select">
					<em> <select name="faq_cate_list">
							<option value="1">�����ϴ�����</option>
							<option value="2">ȸ������</option>
							<option value="3">�̿���</option>
							<option value="4">���/ȯ��</option>
							<option value="5">����/����</option>
							<option value="6">����</option>
							<option value="7">����/�Ǹ�</option>
					</select> <ins>
							<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/select_arrow_01.png"
								alt="">
						</ins>
					</em>
				</div>

				<div class="faq_list">
					<p class="service_title">
						<span>FAQ</span>�����ϴ� ����
					</p>

					<ol>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]
								������� ����Ȯ���� �����ΰ���?</a>
							<div class="inner_box">
								������ Ȯ���Ǵ� ��Ŀ� ����, ������, ����Ȯ������ ���е˴ϴ�.<br> <br> 1.������ :
								���� �� �����·� �����Ǹ�, ��ü�� Ȯ�� �� ����Ȯ�� ���ΰ� ���ڷ� �߼۵˴ϴ�.<br> ��ü�� ��������
								������ �Ұ��� ��� ������ �ݾ��� �ڵ����� ��ҵ˴ϴ�.<br> <br> 2.����Ȯ�� : �ǽð�
								�������·� ������ ���ÿ� ������ Ȯ���˴ϴ�.(���/ȯ�� �Ұ�)<br> ������ ������ �ð�(����18�� ~
								����09��)�� ���� or ���ϻ�ǰ ����� �ش�<br> <br> *���� �� �� ��ü�� ��ȭ��
								���డ�� ���� Ȯ�� �ʿ�<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü���൵
								������ ����� �� �ֳ���?</a>
							<div class="inner_box">��ü������ ���� ����� �Ұ����մϴ�.&nbsp;</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü����
								���������� �ñ��ؿ�.</a>
							<div class="inner_box">ī��(Lpay,payco,�Ｚ����,īī������), ���� �������,
								�޴������� ������ �����մϴ�.</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü����
								��������� �ñ��ؿ�.</a>
							<div class="inner_box">
								��ü���� ������ ȸ���� ��� ������ ��� �޴��� &gt; ���೻�� ���� ��õ �� ���� ������ ��ǰ�� �����Ͻ� ��
								�ֽ��ϴ�.&nbsp;<br> ��ȸ���� ��� ������ ��� �޴��� &gt; �ֹ���ȸ�� ���� Ȯ�� �� �����Ͻ�
								�� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü����
								��û ��� �Ǵ� ������ ��� �ϳ���?</a>
							<div class="inner_box">
								��ü���� ��û ���, ������ ���&nbsp;<br> ������(��1599-6975)�� ���� ��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü����
								��û �� ��� Ȯ���� �� �ֳ���?</a>
							<div class="inner_box">
								��ü���� ��û�� ������ �Ϸ�ǰų�, ������ �Ϸ�Ǿ��� ��쿡��<br> Ȯ���� �����ϸ�, �ֹ���û �� ����
								������ ��쿡�� Ȯ���� �Ұ����մϴ�.<br> <br> ���ݰ��� ȸ���� ��� ������ ��� �޴���
								&gt; ���೻���� ���� Ȯ���� �����ϸ�,<br> ��ȸ���� ��� ������ ��� �޴��� &gt; �ֹ���ȸ��
								���� Ȯ���� �����մϴ�.<br> ���� �� ���� �Ϸ� �� �Է��Ͻ� ����ó�� �ȳ� ���ڰ� �߼۵˴ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü������
								��� ��û�ϳ���?</a>
							<div class="inner_box">
								1. �� &gt; �ϴ��� �˻� &gt; ���ʻ�� ����˻� &gt; �����ʻ�� ��ü���� Ŭ�� �� ������ �Է����ֽø�
								��û�� �����մϴ�.<br> <br> 2. �� &gt; �ϴ� �ٴ�/�ι� &nbsp;&gt; �����ϴ�
								�����ư &gt; �����ʻ�� ��ü���� Ŭ�� �� ������ �Է��� �ֽø� ��û�� �����մϴ�.&nbsp;<br>
								<br> 3. �� &gt; �ϴ��� �ݹ��� &gt; ���ʻ�� ����˻� &gt; ���ʻ�� ��ü���� Ŭ�� ��
								������ �Է����ֽø� ��û�� �����մϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü������
								�ƹ� ��¥�� ��û�� �����Ѱ���?</a>
							<div class="inner_box">
								������ ��û�Ϸκ��� 7�� ���ĺ���, �ָ��� ��û�Ϸκ��� 14�� ���ĺ��� ��û�� �����մϴ�.<br> ��,
								��û�Ͻ� ���� �� ��ü ������ ���� ��û�� �Ұ��� �� �� �ֽ��ϴ�.<br> ��û�� �Ұ����� ���
								������(��1599-6975)���� Ȯ�� ��<br> �ȳ����� or&nbsp;��ȭ�� �帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ü������
								�����ΰ���?</a>
							<div class="inner_box">
								������ Ȥ�� ��ü�ο����� ���û�ǰ�� �̿��� ���Ͻǰ�� ���೯¥, ����, �ο�, ����, ����ݾ� ��<br>
								������ ���Ͻô� ���������� �Է��Ͻ� �� ��û�Ͻø� ���ݰ��ݿ��� ���� ������ ��ü�� ��õ�ص帮��,<br>
								�������� ������ ���� �Դϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]Ƽ��
								���������� �ñ��ؿ�.</a>
							<div class="inner_box">ī��(Lpay,payco,�Ｚ����,īī������), ���°��������
								�����մϴ�.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]VIP������
								��� ����ϳ���?</a>
							<div class="inner_box">
								VIP ������ �� 4���� �������� ���޵Ǹ�&nbsp;1�� 1ȸ�� ��� �����մϴ�.<br> �ش� ������
								��&amp;�� �� ���� �� �������� �ݾ� �������� �Ʒ��� ���� ������ ����˴ϴ�.<br> <br>
								- 30,000�� �̻� &gt; 2,000�� ����<br> - 50,000�� �̻� &gt; 3,000�� ����<br>
								- 80,000�� �̻� &gt; 5,000�� ����<br> - 150,000�� �̻� &gt; 10,000��
								����<br> <br> �ڼ��� ������ �� �ϴܿ����� &gt; ���̸޴� &gt; �� ���� &gt;
								VIP���� �ϴܿ��� Ȯ�ΰ����� �� �̿뿡 �����Ź�帳�ϴ�.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]Ƽ��
								��ȿ�Ⱓ�� ��� Ȯ���ϳ���?</a>
							<div class="inner_box">
								���� ���� ��ȿ�Ⱓ Ȯ���� ������ ��� �޴��� &gt; ���೻�� &gt; Ƽ�� ���೻������<br> Ƽ�Ϻ�
								�󼼸���Ʈ �ϴܿ� ǥ�õ� ��ȿ�Ⱓ�� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]������
								����� ��� �ϳ���?</a>
							<div class="inner_box">
								���� ���� �� �Է��� �̸��Ϸ� �������� �߱޵˴ϴ�.<br> �̸��� �ּҸ� �Է����� ���ϼ̴ٸ�, ����
								ī����� ������������ Ȯ���Ͻðų�,<br> ���� ����� ���������� ���� �߱��� �ּž� �մϴ�.<br>
								*�ŷ� ���� �߱��� ��� ������(��1599-6975)�� ���� ��Ź�帳�ϴ�.<br> <br>
								1.�޴��� �Ҿװ���<br> �������
								��������(https://cp.mcash.co.kr/mcht/ucs/ucsrPhonePayInq/index.do)
								&gt; ����Ÿ &gt; �������� ��ȸ &gt; �޴��� ��������<br> <br> 2.
								�ſ�ī��(�̴Ͻý�)<br> �̴Ͻý� ��������(https://www.inicis.com/) &gt; ������
								&gt; �������� ��ȸ &gt; �������ܺ� ��ȸ
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����
								��� �� ������ �Ҹ�ǳ���?</a>
							<div class="inner_box">
								���� �ݾ� ������ ��ǰ�� ������ ��� ������ �Ҹ�Ǹ�,<br> ���� �ݾ� �̻��� ��ǰ�� ������ ��� ������
								���� ������ �����մϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]Ƽ��
								�絵�� �����Ѱ���?</a>
							<div class="inner_box">�����Ͻ� ��ǰ�� Ÿ�ο��� �絵�� �� ������, ����Ȯ�� �� �����
								�����մϴ�.</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]���ÿ��ຸ���̶�?</a>
							<div class="inner_box">���ݰ��� &amp; �Ｚȭ�簡 ���� ���ÿ��ຸ������ �Ǻ����ڰ�
								���ÿ��ຸ�� ���� �Ⱓ �� ������ ���� ��ü���� ��� ���ϰų�, �������, ���� ���� ��� �Ǵ� �� 3�ڿ���
								������ ���å���� �־� ���ع��å���� ������ ��� ���ظ� ������ �ִ� �����Դϴ�.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]������
								Ƽ���� ��� ����ϳ���?</a>
							<div class="inner_box">
								Ƽ���� ������ ���Ⱓ �� ������ �湮�Ͽ� Ƽ���� �����Ͽ� ��� ����<br> <br> [ Ƽ��
								����� ]<br> 1. �����Ͻ� Ƽ�ϸ�� ��� ��ȿ�Ⱓ�� Ȯ���� �ּ���<br> 2. ��ȿ�Ⱓ ��
								���� �̿��� ������ ������ �湮�Ͽ� Ƽ�� ���� �� ������ �޴��� �޹�ȣ 4�ڸ��� ���忡��<br> ���
								��û�� ���ּ���<br> <br> ��ǰ�� ���� Ƽ�� ������� �ٸ� �� ������ ������� �� Ƽ��
								������� �����ּ���.<br> Ƽ���� 1�� �������� ��ü�� ���� ���ؿ� ���� ���� �Ҽ� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]����
								�� ģ����� ������ �غ� ���ε� ��ü�� ���� �����Ѱ���? </a>
							<div class="inner_box">
								��. �����մϴ�.<br> <br> �� ����� �������� ���� �� �ڳ� (�� 19�� �̸�) ���� ����
								���� �� ������ �����ϸ�, �� 19�� �̻��� �ڳ� �� ����, �����ڵ��� ����Ȯ���� ���� ������ ����������
								�ʿ��մϴ�.<br> <br> �� ������ �߰� ��� - ���� ���� �� ������ ��� &gt; ��ϵ�
								�����ڿ��� ���谡�� �ȳ� ���� �߼� &gt; �������� ����
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]������
								Ƽ���� ���� ����� �� �ֳ���?</a>
							<div class="inner_box">
								Ƽ�Ͽ� ���� ����� �� �ִ� �Ⱓ�� ���� �ٸ�<br> <br> ��ǰ�� ������ǿ� ����� ��ȿ�Ⱓ��
								Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�.<br> Ƽ���� ��ȿ�Ⱓ �� ����Ͻ� �� ������, ��ȿ�Ⱓ�� ����� �Ŀ���
								����Ͻ� �� �����ϴ�.<br> ���� ���� ��ȿ�Ⱓ Ȯ���� ������ ��� �޴��� &gt; ���೻�� &gt;
								Ƽ�� ���೻������<br> Ƽ�Ϻ� �󼼸���Ʈ �ϴܿ� ǥ�õ� ��ȿ�Ⱓ�� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�����̵�
								�ڳ൵ �θ� ���� ������ ��ų �� �ֳ���? </a>
							<div class="inner_box">���谡������ �� 19�� �̸� �����ڳุ �߰� ���� �� ������
								�����ϸ�, �� 19�� �̻��� �ڳ�� �����ڷ� ��� �� �߼۵Ǵ� ���� ���� �ȳ� ���ڸ� ���� ������ ������ ��
								�ֽ��ϴ�.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[��ǰ]��ǰ
								����� ��� �ϳ���?</a>
							<div class="inner_box">������ &gt; ���۾��� �Ǵ� �ݹ��� &gt; �߰����� &gt;
								�۾��� ��ư�� ���� �Ǹ�/���� �ϰ��� �ϴ� ��ǰ�� ����� �� �ֽ��ϴ�.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]Ƽ����
								���� �� ����ϴ�. �ѹ��� ��� ����� �� ���µ� ������ ����� �� �ֳ���?</a>
							<div class="inner_box">
								��ȿ�Ⱓ �� ���� �̿��� ������ ������ �湮�Ͽ� Ƽ�� ��� �� ����Ͻ÷��� Ƽ�ϸ�� ������ Ȯ�����ֽø�<br>
								������ ����� �����մϴ�.<br> <br> ��, ��ǰ�� ���� Ƽ�� ������� �ٸ� �� ������
								������� �� Ƽ�� ������� �����ּ���.<br> Ƽ���� 1�� �������� ��ü�� ���� ���ؿ� ���� ���� �Ҽ�
								�ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�̼����ڵ�
								���� ������ �����Ѱ���? </a>
							<div class="inner_box">�Ǹ��ɷ��� ���� �� 19�� �̸��� �̼����ڴ� ��ǥ �Ǻ�������
								ģ������ �ڳ�θ� ���� ������ �����մϴ�.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[��ǰ]��ǰ
								����� �ƹ��� �� �� �ֳ���?</a>
							<div class="inner_box">
								�Ϲ� �Խ����� ��� ȸ������ �� ����� �� ������,<br> �߰����� �Խ����� ��� ȸ�翡�� �����ϴ�
								�������� ������ ��ģ ȸ���� ��ǰ���(�۾���)�� �� �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]���ݰ�������
								� ���ø� �� �� �ֳ���?</a>
							<div class="inner_box">
								���ݰ����� ���� ��� �����̵� ���ÿ� ���� ������ �˻� �� �� ������, ���� ī�װ� ���� ������ ã����
								�ֽ��ϴ�.<br> <br> �ٴٳ��� - ���󳬽�, �����ͳ���, ����������, �ױ�����(�ױ�����),
								��Ʈ����<br> �ι����� - ���󳬽�, ���ȳ���, ��������Ʈ, �轺����Ʈ, �ǳ�����ī��
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]���ÿ��ຸ����
								���� ���Ե� �����Ѱ���?</a>
							<div class="inner_box">
								���� ������ �Ұ��մϴ�.<br> <br> �س��ÿ��ຸ���� ���������� ���� 2�� �������� ������
								�����մϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[��ǰ]��ǰ
								���º����� ��� �ϴ°ǰ���?</a>
							<div class="inner_box">������ ����� ��ǰ �Խñ� �󼼿� ���� �ϴܿ� �Ǹ���/������
								or �ǸſϷ�/���ſϷ� ��ư�� ���� ��ǰ ���¸� ������ �� �ֽ��ϴ�.</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]��ȭ�ε�
								���� ������ �����Ѱ���? </a>
							<div class="inner_box">
								�ǽð� �����ǰ ���Ž� Ȥ�� ������ ����� �Ǵ� PCȨ���������� ���� ���� ������ �ֽø� �˴ϴ�.<br>
								�� �����͸� ���� ������ ������ ��ƽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[��ǰ]��ǰ
								������ ��� �ϴ°ǰ���?</a>
							<div class="inner_box">������ ����� ��ǰ �Խñ� �󼼿� ���� ���� ��ܿ� ����
								��ư�� ���� ��ǰ�� ������ �� �ֽ��ϴ�.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[�̿���]VIP������
								��� ����ϳ���?</a>
							<div class="inner_box">
								VIP ������ �� 4���� �������� ���޵Ǹ�&nbsp;1�� 1ȸ�� ��� �����մϴ�.<br> �ش� ������
								��&amp;�� �� ���� �� �������� �ݾ� �������� �Ʒ��� ���� ������ ����˴ϴ�.<br> <br>
								- 30,000�� �̻� &gt; 2,000�� ����<br> - 50,000�� �̻� &gt; 3,000�� ����<br>
								- 80,000�� �̻� &gt; 5,000�� ����<br> - 150,000�� �̻� &gt; 10,000��
								����<br> <br> �ڼ��� ������ �� �ϴܿ����� &gt; ���̸޴� &gt; �� ���� &gt;
								VIP���� �ϴܿ��� Ȯ�ΰ����� �� �̿뿡 �����Ź�帳�ϴ�.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]����
								�ۼ��� �Խñ��� ��� Ȯ���ϳ���?</a>
							<div class="inner_box">������ ��� �޴��� &gt; �� �۰��� ���� �� ��Ȳ/�����,
								���� �� ��, ���� �� ���, ��ũ�� ���� Ȯ�� �� �� �ֽ��ϴ�.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[����/����]
								������� ����Ȯ���� �����ΰ���?</a>
							<div class="inner_box">
								������ Ȯ���Ǵ� ��Ŀ� ����, ������, ����Ȯ������ ���е˴ϴ�.<br> <br> 1.������ :
								���� �� �����·� �����Ǹ�, ��ü�� Ȯ�� �� ����Ȯ�� ���ΰ� ���ڷ� �߼۵˴ϴ�.<br> ��ü�� ��������
								������ �Ұ��� ��� ������ �ݾ��� �ڵ����� ��ҵ˴ϴ�.<br> <br> 2.����Ȯ�� : �ǽð�
								�������·� ������ ���ÿ� ������ Ȯ���˴ϴ�.(���/ȯ�� �Ұ�)<br> ������ ������ �ð�(����18�� ~
								����09��)�� ���� or ���ϻ�ǰ ����� �ش�<br> <br> *���� �� �� ��ü�� ��ȭ��
								���డ�� ���� Ȯ�� �ʿ�<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]��������
								�Ϸ��� �ϴµ� � ������� �ֳ���?</a>
							<div class="inner_box">ī��(Lpay,payco,�Ｚ����,īī������),���� �������,
								�޴������� ������ �����մϴ�.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[��ǰ]��ǰ
								������ �߸� �Է��߾�� ������ ��� �ϴ°ǰ���?</a>
							<div class="inner_box">
								�߰����� ��ǰ �Խñ��� ����� �Ϸ�Ǹ� ������ �Ұ����ϸ�, ���� �߰��� �����մϴ�.<br> ��, ����,
								��ǰ��, ����, ��۹��, ��ǰ����, ��ȯ���ɿ���, �ŷ���ȣ���� ������ ������ �����ϳ�, ���뿡 ���� �̷���
								ǥ��˴ϴ�.<br> ���� ������ ���Ͻ� ��쿡�� �ش� �Խñ��� ���� �� ���� �ϼž� �մϴ�.
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[����/����]����
								��� �� ������ �Ҹ�ǳ���?</a>
							<div class="inner_box">
								���� �ݾ� ������ ��ǰ�� ������ ��� ������ �Ҹ�Ǹ�,<br> ���� �ݾ� �̻��� ��ǰ�� ������ ��� ������
								���� ������ �����մϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]����
								��ġ���� �ֺ� ���� ��ü�� ������ �ʾƿ�.</a>
							<div class="inner_box">
								�� �ֺ��� � ���� ��ü���� �ִ��� Ȯ�� �ϰ� �����ôٸ� ���� �ڵ������� ����ġ ��ݡ��� ����1ȸ ����
								��Ź�帳�ϴ�.<br> <br> �ֺ� ���þ�ü �Ӹ� �ƴ϶� ���ϴ� ������ ���� ��ü�� �Բ� ã�� ��
								�ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]��������
								��ȸ�Ϸ��� ��� �ؾ� �ϳ���?</a>
							<div class="inner_box">
								������ ��� �޴���&nbsp; &gt; ���೻�� ���� ��ȸ �����մϴ�.<br> <br> �� �ٸ�,
								���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ������ ���� ���� �� ���������� �����ǰ ���� �� 1������� Ȯ���Ͻ� ��
								������, 1�� ���� ���� �� ��� Ȯ���� ���Ͻ� ��� �Ｚȭ�� Ȩ������ �Ǵ� �ݼ��͸� ���� �ȳ������� �� �ֽ��ϴ�.<br>
								- �ݼ��� : 1588-5114<br> - Ȩ������ : �Ｚȭ��
								Ȩ������(www.samsungfire.com)
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[��ǰ]�����
								��ǰ�� �Ǹ�/���ſϷ�, ���� ó���� �Ǿ� �־��. ������ �����ΰ���?</a>
							<div class="inner_box">�ŷ����� ǰ���� ����Ͽ��ų�, ����ģ ���� ���� �� �̿��ڵ鿡��
								�źΰ��� �ִ� �̹��� ��� �� �Խù��� ����ó���ϰ� �ֽ��ϴ�. ���� ����� ��ǰ�� ���þ��� �̹���, ����, ��ǰ��
								�� �� ����Ͽ��ų� Ÿ ����Ʈ, ��ü ȫ�� �� URL�� ���� �� �ǸſϷ�ó���� �ϰ� �ֽ��ϴ�. �� �� �ڼ��� ������
								�̿��� ���� �� 1:1�����ϱ� �Ǵ� �����ͷ� ���� �ֽñ� �ٶ��ϴ�.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]���ݰ��ݿ�
								�츮 ��ü ������ ��� �ϰ� �;��.</a>
							<div class="inner_box">
								1. ���ݰ��� ��ü ��� ���Ǵ� ������(��1599-6975)�� ��Ź�帳�ϴ�.<br> <br>
								2. ������ ��� �޴��� &gt; ������ &gt; ��ü��Ͽ�û ���� ������ �����մϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�������ǰ�
								����� ��� Ȯ���ϳ���? </a>
							<div class="inner_box">
								������ ��� �޴��� &gt; ���೻������ ��ȸ �����մϴ�.<br> <br> �� �ٸ�, ���ڻ�ŷ�
								����� �Һ��ں�ȣ�� ���� ������ ���� ���� �� ���������� �����ǰ ���� �� 1������� Ȯ���Ͻ� �� ������, 1��
								���� ���� �� ��� Ȯ���� ���Ͻ� ��� �Ｚȭ�� Ȩ������ �Ǵ� �ݼ��͸� ���� �ȳ������� �� �ֽ��ϴ�.<br>
								- �ݼ��� : 1588-5114<br> - Ȩ������ : �Ｚȭ��
								Ȩ������(www.samsungfire.com)
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[����]���ÿ��ຸ����
								���� ���Ե� �����Ѱ���?</a>
							<div class="inner_box">
								���� ������ �Ұ��մϴ�.<br> <br> �س��ÿ��ຸ���� ���������� ���� 2�� �������� ������
								�����մϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[�ŷ�]�ƹ�
								��ǰ�̳� �ŷ��� �� �ֳ���?</a>
							<div class="inner_box">
								����� ���ð��� ��ǰ �ŷ��� �����մϴ�.<br> ���ݰ����� �ŷ������ ���߰� �ִ� ȸ���̶� �ϴ��� ����
								���� �� �ǸŰ� ������ ���� �ҹ���ǰ �� ���ػ�ǰ�� �ŷ��ϴ� ������ �����մϴ�. ������� ������ ��� ó�� ����
								�� �ִٴ� �� ���� ��Ź�帳�ϴ�.<br> �� �ڼ��� ������ �̿��� �� 20 �� 5���� Ȯ���Ͻø� �˴ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����Ȯ����
								��� �ϳ���?</a>
							<div class="inner_box">
								���ݰ��� ȸ���� ��� ������ ��� �޴��� &gt; ���೻���� ���� Ȯ���� �����ϸ�,<br> ��ȸ���� ���
								������ ��� �޴��� &gt; �ֹ���ȸ�� ���� Ȯ���� �����մϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]���ϱ�
								����� ��� ����ϳ���?</a>
							<div class="inner_box">
								�ش� ��ü �������� ��� �����ʿ� ��Ʈ�� �����ֽø� ���ϱⰡ �Ϸ�˴ϴ�.<br> <br> ���ص�
								��ü�� ������ ��� �޴��� &gt; ���������� &gt; �� ��� ���� Ȯ�� �Ͻ� �� ������, ���ϴ� ��ü�� ����
								ã��<br> ������ �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�����ǰ
								öȸ�� ��û�ϸ� ������ ���� �������� �� �ֳ���?</a>
							<div class="inner_box">�������ܿ� ���� ������ ���� 3�Ͽ���~5�� �̳��� ����Ḧ
								�������� �� �ֽ��ϴ�.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[����]�����ǰ
								öȸ ���ɱⰣ�� ��� �ǳ���?</a>
							<div class="inner_box">öȸ ���ɱⰣ�� �̿��� ����(������ ��ð� ��) ����
								�����ͷ� �����ֽø� öȸ�� �����մϴ�.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[�ŷ�]�߰�����
								�Խñ� �ۼ��ڿ� ������ ��� �ϳ���?</a>
							<div class="inner_box">
								�ŷ��ϰ��� �ϴ� ��ǰ ������������ ��ȭ���� ��ư�� ���� ������ �����մϴ�.<br> ��, ���������� �Ϸ���
								ȸ���� ��ȭ���ǰ� �����մϴ�.<br> ������ ���Ǵ� �ش� �Խñ� �󼼿��� �������� ���� ����� �̿��Ͻø�
								�˴ϴ�.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]������
								�� ��������ϰ� �;��</a>
							<div class="inner_box">
								���� ������ ��ҹ��Ǵ� ���ݰ��� �����ͷ� ���� ��Ź�帳�ϴ�.<br> <br> ��,ȯ�ұ�����
								���� �����ᰡ �߻��ϰų� ������Ұ� �Ұ��� �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]��ȸ����
								������ �����Ѱ���?</a>
							<div class="inner_box">
								���ݰ��� ȸ���� �ƴϴ���<br> ��ȸ������ ���� �� ������ �����մϴ�.<br> �ٸ�,
								��ȸ������ ���� �� �������� ���� �� ����� �Ұ��մϴ�.
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[ȸ������]���̵�,
								��й�ȣ�� ��ﳪ�� �ʾƿ�.</a>
							<div class="inner_box">
								���̵� ã��<br> <br> 1.�̸��� �ּҷ� ������ ȸ��<br>
								2.īī����/���̽���/���̹� �������� ������ ȸ�� : �ش� �������� ��ü�� �����Ϳ� ����<br> <br>
								��й�ȣ ã�� (�̸����ּ� ���Ը� �ش�)<br> 1.�̸��Ϸ� �α����ϱ� &gt; ��й�ȣ�� �����̳���?
								����<br> 2.������ �̸��� �ּ�(���̵�)����<br> 3.���ŵ� ���Ͽ��� ���ο� ��й�ȣ�� ����<br>
								<br> �� ������ε� �̿뿡 ������ ������ ���, 1:1���� �Ǵ� ������(��1599-6975)�� ����
								��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]����
								��ü ������ ��� �ϳ���?</a>
							<div class="inner_box">
								1. ������ ��� �޴��� &gt; ���������� &gt; �� ��� ���� �����Ͻ� ��ü�� X��ư�� �����ֽø� ����
								�����մϴ�.<br> <br> 2. �ش� ��ü�� ������������ ������ ��ܿ� ��Ʈ�� �����ֽø�
								������ �����մϴ�..
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]��ȿ�Ⱓ
								�� �̻�� Ƽ���� ��� ȯ�ҹ޳���?</a>
							<div class="inner_box">
								�̻��Ƽ���� ȯ�ұ����� ���� ȯ�� ����<br> <br> ������ ���� 7�� �̳��� �̻�� Ƽ�Ͽ�
								���� �۳����� 100%ȯ���� �����մϴ�.<br> ��, �κ�ȯ���� ��� �����ͷ� ���� ��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�����ǰ
								öȸ ���ɱⰣ�� ��� �ǳ���?</a>
							<div class="inner_box">öȸ ���ɱⰣ�� �̿��� ����(������ ��ð� ��) ����
								�����ͷ� �����ֽø� öȸ�� �����մϴ�.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[����]���������
								��� �ϳ���?</a>
							<div class="inner_box">
								�Ｚȭ�� ��ǥ �ݼ��� �Ǵ� �Ｚȭ�� ��,Ȩ�������� ���� ��� ������ �� �� �ֽ��ϴ�.<br> <br>
								- �ݼ��� : 1588-5114<br> - Ȩ������ : �Ｚȭ��
								Ȩ������(www.samsungfire.com)<br> - �� : �Ｚȭ�� �� ��ġ �� ����� û�� Ŭ��
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[�ŷ�]��⸦
								���ϸ� ��� ó���ؾ� �ǳ���?</a>
							<div class="inner_box">
								���ݰ����� ����ڰ��� �ŷ��� ���� ������������ �ʽ��ϴ�.<br> ���ظ� ���ϼ��� ��� ��������� ����
								�Ű��Ͽ� ó���ϼž� �մϴ�.<br> <br> 1. �����ڷ� ���� ����� �ŷ��� ������ ����
								�����ڷᰡ �ʿ��մϴ�. ��ȭ���� ���� �������� ���ð� �� ĸ���Ͽ� ���� �����ϼ���.<br> 2. ������
								�ο�������̳� ���̹��������� �Ű�<br> - ����û http://www.police.go.kr<br>
								1) ������ �ο������ �湮(����� ó���� ���� �˰� �Ǵ� ������ �ʿ��� ���) - �����뿡�� �ش� ������ ����
								�ʽ��ϴ�.<br> 2) ����� �ۼ�. �ۼ� ����� �湮�ϸ� ����ǿ��� �˷��帳�ϴ�.<br> 3)
								��ǻ��Ȯ�μ� �߱� ��û<br> 4) ��ǻ��Ȯ�μ��� ������ ������ ���࿡ �湮�Ͽ� ��������������û��
								�մϴ�.<br> 5) ������ �˰ŵǱ⸦ ��ٸ��ϴ�.<br> <br> [�غ��ڷ�] ������
								��������, �����Ͻ�, �ش����Ʈ, ID, �ŷ����� * ������ ���������� ����������ȣ���� ���� �Ű��ο��� ����
								������ �� ������ ���غ�Ź�帳�ϴ�.<br> <br> - ����û ���̹�������<br>
								http://cyberbureau.police.go.kr/crime/sub1.jsp<br> �ش� ����Ʈ��
								�湮�Ͽ� �����ڷḦ ÷���Ͽ� �ȳ��� ���� �ۼ��Ͻø� �˴ϴ�. ���ݰ��ݿ��� ó���� �帱 �� �ִ� �κ���, ���Ȯ��
								�� �Ű�� ������ Ȱ������ ���ϵ��� ������ �����ϴ� ���Դϴ�.<br> <br> [��������]��
								���� �Ű�/������ �� �ֽ��ϴ�.<br> * ó������ - ��������(help@moolban.com)�� ����
								�ŷ�/�۱� �����ڷ� ���� &gt; ��ǿ��� Ȯ�� &gt; �������� [�Ű������ ���� �ʿ� ����]<br> *
								���ºҷ� : ���� ������ ��ǰ�̹��� �� �����ڷ� �̹��� ÷��<br> * ���� : ���ҷ� ������
								��ȭ����(ī��, ���� ��)�� ���� �ڷ� �̹��� ÷��<br> * ��ȯ : �Ű���(����)�� ��ǰ�� ������
								��ǰ����(������ ��ǰ �߰��� �߻��ߴٸ� ����)
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����������
								�ñ��ؿ�.</a>
							<div class="inner_box">ī��(Lpay,payco,�Ｚ����,īī������), ���� �������,
								�޴������� ������ �����մϴ�.</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]����
								����ϸ� ������ ��� �ǳ���?</a>
							<div class="inner_box">
								������� ��, ����� ������ �Ҹ�Ǿ� ������ �Ұ��մϴ�.<br> <br> �ٸ�, ��ü��������
								������ ��ҵȴٸ� ������ �Ҹ���� �ʰ� �����˴ϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]��ü
								������ �����ϴ� ����� �ֳ���?</a>
							<div class="inner_box">
								��ü �������� &gt; ������ ����� �����ϱ� ��ư�� Ŭ���Ͻø�<br> īī����, ���̽���,
								īī�����丮, �ν�Ÿ�׷�, ���ڸ޼��������� ������ ������ �� �ֽ��ϴ�.<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]���������
								��� �ϳ���?</a>
							<div class="inner_box">
								�Ｚȭ�� ��ǥ �ݼ��� �Ǵ� �Ｚȭ�� ��,Ȩ�������� ���� ��� ������ �� �� �ֽ��ϴ�.<br> <br>
								- �ݼ��� : 1588-5114<br> - Ȩ������ : �Ｚȭ��
								Ȩ������(www.samsungfire.com)<br> - �� : �Ｚȭ�� �� ��ġ �� ����� û�� Ŭ��
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[���]�Ǹ��ڰ�
								�Ǹ����� ��� ��ǰ �Ǵ� �����ڰ� �������� ��� ��ǰ�� �� �� �ֳ���?</a>
							<div class="inner_box">
								��ǰ �Ǹ� �Ǵ� ���� �Խñ� �ۼ����� �������̹��� �Ǵ� �������� �����Ͻ� ��<br> ���������� &gt;
								�ۼ��ۺ��� &gt; �Խñ� &gt; �߰����Ϳ� ���ø� �ش� ������ �Ǹ���/������ ��ǰ�� �� �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����ī��
								��� �����ϳ���?</a>
							<div class="inner_box">
								����ī�� ������ �Ϲ� �ſ�ī�� ������ �������ֽø� �����մϴ�.<br> �ٸ�, ���� �������� �������� �䱸
								�Ǵ� ��� ��Ȱ�� ���� ���� �̿��� ����� �� �ִ� �� �ʸ� ���� ��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]�̿볯¥��
								�ٲٰ� �;��.</a>
							<div class="inner_box">
								��¥ ���� ���� ��ҿ� �����ϰ� ó���˴ϴ�.<br> ��� �� �� �����ϴ� ������� ��� ȯ�� ������ ������
								����˴ϴ�.<br> ������ ���� ��Ҹ� ���Ͻ� ��쿡�� �����ͷ� ���� �ֽø�<br> ����
								�帮�ڽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]�ݹ�����
								� �����ΰ���?</a>
							<div class="inner_box">
								�ݹ�����<br> ��Ȳ/�����, �߰�����, ���ݵ�����, ����������, ����������, ���ݰ�����, �����Խ��ǵ�<br>
								�����Ӱ� ������ �ְ���� �� �ִ� �����Դϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�ο�(����)��
								����/��Ҹ� �ϰ� ������ ��� �ؾ� �ϳ���?</a>
							<div class="inner_box">
								��������� ������ �ο�(����) ������ ���Ͻ� ��� ������ (1599-6975) �� ���� �����ֽø� ó����
								���͵帳�ϴ�.<br> <br> �� ��, ����������� �̹� ����� ��� ����/��Ҵ� ������,
								����Ȳ ��ȭ �� ��ü������ ���� ��� �ÿ��� ���� ������ ���� ���Ϻ��� ȯ�� �Ұ��մϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[���]����UP
								����� � ����ΰ���?</a>
							<div class="inner_box">
								����UP����� ���� ����� ��ǰ �Խñ��� ������ �����ϰ����� ���<br> ����ϴ� ������� �Խñ� �� �ִ�
								3ȸ �̿��� �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[��ǰ]��ǰ
								����� �ƹ��� �� �� �ֳ���?</a>
							<div class="inner_box">
								�Ϲ� �Խ����� ��� ȸ������ �� ����� �� ������,<br> �߰����� �Խ����� ��� ȸ�翡�� �����ϴ�
								�������� ������ ��ģ ȸ���� ��ǰ���(�۾���)�� �� �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[ȸ������]ȸ��������
								����Ǿ��µ�, ������ ��� �ϳ���?</a>
							<div class="inner_box">
								1. ������ ��� �޴��� -&gt; ������ ���� Ŭ�� -&gt; �����ʻ���, ���¸޽��� , �г��� �� ȸ������ ����
								�����մϴ�.<br> <br> 2. ������ ��� �޴��� -&gt; ���� -&gt; �����ʰ���
								-&gt; �����ʻ���, ���¸޽���, �г��� �� ȸ������ ���� �����մϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����
								�����ϰ� �;��.</a>
							<div class="inner_box">
								�ǽð� ������ ������ ��ü�� "�ǽð�����" ������ �޷�������,<br> ������ ���Ͻô� ��ü�� �ִٸ�
								�����ϱ� ��ư Ŭ������ �ٷ� �����մϴ�.<br> <br> �ٸ�, "��ȭ����" ������ �޷��ִ� ���<br>
								��ü�� ���� �ִ� ��ȭ�ϱ� ������ ��ư�� Ŭ���Ͽ� ��ȭ�������θ� ������ ������ �� ���� ��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]õ����������
								���� ������Ҵ� ��� �ϳ���?</a>
							<div class="inner_box">
								õ���������� ���� ������Ҵ� ������(��1599-6975)�Ǵ� 1:1�� ���� �ֽø�<br> ��Ұ��ɿ���
								Ȯ���Ͽ� �ȳ��� �帮�ڽ��ϴ�.<br> <br> �ٸ�, ��쿡 ���� ��� ȯ���� ����� �� �ִ� ��
								���� ��Ź�帳�ϴ�.<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]��������
								��ð��� �˰� �;��.</a>
							<div class="inner_box">
								���ݰ��� �����ʹ� 365�� 10�� ~ 18�� ���� ��մϴ�.<br> ������(��1599-6975)
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]������
								��� ���ɿ� ���� �����Ѱ���? </a>
							<div class="inner_box">
								������ ����, ���� � ���� �޶��� �� �ֽ��ϴ�.<br> ����, ���� ������� �������� ����
								���谳�߿����� ������ ���ؿ� ���� �ų� ������� ������ �߻��� �� ������, ��ü ������ �����ϴ� ���迡����
								���������� ���� ����ᰡ �λ�� �� �ֽ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[���]�ŷ�����ȸ��
								� ����ΰ���?</a>
							<div class="inner_box">
								���ݰ��ݿ��� �����ϴ� �ŷ�����ȸ ����� �ŷ����� �ڵ�����ȣ �� ���¹�ȣ�� �Է��Ͽ�<br> ��ġƮ�� ����
								����̷��� �ִ��� ��ȸ�� �� �ִ� ����Դϴ�.<br> �ŷ� �� �� �ʼ��� Ȯ���� �ּ���.
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[�ŷ�]��⸦
								���ϸ� ��� ó���ؾ� �ǳ���?</a>
							<div class="inner_box">
								���ݰ����� ����ڰ��� �ŷ��� ���� ������������ �ʽ��ϴ�.<br> ���ظ� ���ϼ��� ��� ��������� ����
								�Ű��Ͽ� ó���ϼž� �մϴ�.<br> <br> 1. �����ڷ� ���� ����� �ŷ��� ������ ����
								�����ڷᰡ �ʿ��մϴ�. ��ȭ���� ���� �������� ���ð� �� ĸ���Ͽ� ���� �����ϼ���.<br> 2. ������
								�ο�������̳� ���̹��������� �Ű�<br> - ����û http://www.police.go.kr<br>
								1) ������ �ο������ �湮(����� ó���� ���� �˰� �Ǵ� ������ �ʿ��� ���) - �����뿡�� �ش� ������ ����
								�ʽ��ϴ�.<br> 2) ����� �ۼ�. �ۼ� ����� �湮�ϸ� ����ǿ��� �˷��帳�ϴ�.<br> 3)
								��ǻ��Ȯ�μ� �߱� ��û<br> 4) ��ǻ��Ȯ�μ��� ������ ������ ���࿡ �湮�Ͽ� ��������������û��
								�մϴ�.<br> 5) ������ �˰ŵǱ⸦ ��ٸ��ϴ�.<br> <br> [�غ��ڷ�] ������
								��������, �����Ͻ�, �ش����Ʈ, ID, �ŷ����� * ������ ���������� ����������ȣ���� ���� �Ű��ο��� ����
								������ �� ������ ���غ�Ź�帳�ϴ�.<br> <br> - ����û ���̹�������<br>
								http://cyberbureau.police.go.kr/crime/sub1.jsp<br> �ش� ����Ʈ��
								�湮�Ͽ� �����ڷḦ ÷���Ͽ� �ȳ��� ���� �ۼ��Ͻø� �˴ϴ�. ���ݰ��ݿ��� ó���� �帱 �� �ִ� �κ���, ���Ȯ��
								�� �Ű�� ������ Ȱ������ ���ϵ��� ������ �����ϴ� ���Դϴ�.<br> <br> [��������]��
								���� �Ű�/������ �� �ֽ��ϴ�.<br> * ó������ - ��������(help@moolban.com)�� ����
								�ŷ�/�۱� �����ڷ� ���� &gt; ��ǿ��� Ȯ�� &gt; �������� [�Ű������ ���� �ʿ� ����]<br> *
								���ºҷ� : ���� ������ ��ǰ�̹��� �� �����ڷ� �̹��� ÷��<br> * ���� : ���ҷ� ������
								��ȭ����(ī��, ���� ��)�� ���� �ڷ� �̹��� ÷��<br> * ��ȯ : �Ű���(����)�� ��ǰ�� ������
								��ǰ����(������ ��ǰ �߰��� �߻��ߴٸ� ����)
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[ȸ������]ȸ��Ż���
								��� �ϳ���?</a>
							<div class="inner_box">
								���� Ż�� ����� �����ǰ� �����ʾ� Ż�� ���Ͻô� �������̵�� 1:1 ���Ǹ� �����ֽðų� �����ͷ� ����
								��Ź�帳�ϴ�.<br> <br> �� Ż�� �� �����ִ� ��� ���� ���� �� ��Ÿ ������ ����
								ó���Ǹ�,<br> Ż�� ���Ŀ� ���� ������ �Ұ��մϴ�.&nbsp;
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����
								�� ��밡���� ������ ��� Ȯ���� �� �ֳ���?</a>
							<div class="inner_box">
								������������ [��������]���� ��밡���� ���� Ȯ���� �����մϴ�.<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]������
								����ϰ� �;��.</a>
							<div class="inner_box">
								������Ҵ� ����� �ִ� ��� ������ ���� �����ᰡ ����˴ϴ�.&nbsp;<br> 100%ȯ���� ������ �Ⱓ
								������ ���೻�� �ϴ��� ��ư�� ����<br> ���Բ��� ���� ��Ұ� �����մϴ�.<br> <br>
								��, ����Ͻ� ������ �ڵ� �Ҹ�Ǿ� ������ �Ұ��մϴ�.<br> <br> �����ᰡ �ΰ��Ǵ� ��쿡��
								������(��1599-6975)�Ǵ�<br> 1:1�� ���� �ֽø� ���� �帮�ڽ��ϴ�.&nbsp;
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[���/ȯ��]���
								�� ȯ���� �����ǳ���?</a>
							<div class="inner_box">
								[�ſ�ī����� ȯ��]<br> ī�� ������ҷ� ����˴ϴ�.<br> ���� ���� ȯ�� : 2�ð� �̳�
								(�κ���Ҵ� 3~5�� �ҿ�)<br> ���� ���� ���� ȯ�� : 'ȯ�ҿϷ�' �Ϸκ��� �� 3~5�� �̳�
								(�ָ�, ������ ����)<br> �� �̹� �����ݾ��� ���Ե� ī���� û���� �Ǿ��ٸ� �ش� ī��翡�� �Ϳ�
								ȯ���� �帮�ų�, �ѵ������� ����˴ϴ�.<br> <br> [üũī����� ȯ��]<br>
								ī�� ������ҷ� ����˴ϴ�.<br> ���� ȯ�� : 2�ð� �̳� (�Ϻ� ���ܴ���� 3~5�� �ҿ�)<br>
								�� üũī�� 2�ð� �̳� ȯ�� ���ܴ��: �κ����, �ؿ�ī��, ����Ʈ���� ����, 90�� �ʰ� �ŷ�, ��� ����,
								ī��� ���� ���θ�� ����<br> <br> [�޴������� ȯ��]<br> ���� ���(����
								����) ��ҵ� �ֹ��� ���� ��� ó��������, �ѵ� �������� ������ ���� 3~5�� �ҿ�˴ϴ�.<br>
								�������� ��ҿ��� �ٸ� ��� �������������� ȯ���� �Ұ����ϹǷ� ������(1599-6975)�� ������ �ֽñ�
								�ٶ��ϴ�.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[�̿���]��Ȯ��
								�� ��ġ Ȯ���� �ȵſ�.</a>
							<div class="inner_box">
								���ݰ����� ��ġ��� ���񽺷� ��Ȯ�� ��ġ�� �νĵǾ�� �������� �̿��� �����մϴ�.<br> �ܸ�����
								GPS�� ���� �� ��ġ ���� ��,�ܸ��� ���¿� ���� ��ġ �νĿ� ���ܻ����� �߻��� �� ������, GPS�缳���� ����
								��Ȯ�ϰ� Ȯ���� �ֽñ� �ٶ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]�ܱ��ε�
								���� ������ �����Ѱ���? </a>
							<div class="inner_box">
								��, �����մϴ�. ��������(�Ǻ�����)�� ������ "���ѹα��� ������ ������ �ְų� ���ѹα��� �ּҸ� �� �ڷ�
								�Ѵ�"��� �����Ǿ� �ֽ��ϴ�. �׷��� �Ʒ��� ���ǿ� ���յǾ�߸� �����մϴ�.<br> <br> *
								�⺻ �������<br> - ���ѹα��� �ּҸ� �� ��<br> - ���ѹα� �̿� ����������
								(�ؿܱ�����, �ùα� ���������)<br> - ��೻���� ������ �� �ִ� �ѱ��� �ɷ��� ���� ��<br>
								- ���Ա� �������� ü�� ���� �Ա��� (������ �����ϴ� ȭ���� ���� �����ΰ� �����ϰ� �����) ��, �ܱ��ε����
								���� ü���Ⱓ �ʰ� �� ���� �Ұ� *÷�μ��� (���� �� �ش�Ǵ� ���� �纻 1��)<br> - �ܱ��ε����,
								�ܱ��������� �����żҽŰ���, ��ܱ��� �����żҽŰ��� (������ : �����, ������� �޴� ��(���������),
								��������(�Ǻ�����)<br> <br> ��, �ѱ� �̿� �ٸ� ������ �����ǹ��� �ִ� �ܱ����� �����
								ü���ϴ� ���, �������������� ���� ���� �� �������࿡ ���� ������ ����Ȯ�μ��� �Ｚȭ�翡 �����ؾ��մϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[���]�����ִ�
								��ǰ�� �ٽ� ã�Ƽ� ���Ⱑ ���� ���� ã�� �� �ִ� ����� ������?</a>
							<div class="inner_box">
								�����ִ� ��ǰ�� ���� ��� ��ũ�� ����� ���� ������ ���۰��� &gt; ��ũ������ Ȯ���Ͻ� �� �ֽ��ϴ�.<br>
								��, �ش� �� �ۼ��ڰ� �Խñ� ���� �� ��ũ�� �̷µ� �Բ� �����˴ϴ�.
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[ȸ������]��й�ȣ
								ã��� ������ ���� �ʾƿ�.</a>
							<div class="inner_box">
								�̸��� �ּҷ� ȸ������ �� ���, �̸��Ϸ� ��й�ȣ ���� ������ �����帳�ϴ�.&nbsp;<br> �̸�����
								���� ���� ���<br> <br> 1.������ ���� �뷮�� �ʰ����� �ʾҴ���, �Է��Ͻ� ���� �ּ���
								����Ż�� ���� ���� Ȯ���� �ֽñ� �ٶ��ϴ�.<br> <br> 2.Ư�� �ܾ� ���� ó�� ���� �Ͻ�
								���, �̸����� ����/���� ���������� �з��� �� ������ �����������̳� ���� �������� Ȯ�����ֽñ� �ٶ��ϴ�.<br>
								<br> ���������� ��й�ȣ ã�⿡ ������� ������ ���, 1:1���� �Ǵ� ������(��1599-6975)��
								���� ��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[����/����]����
								�ߺ����� ����� �� �ֳ���?</a>
							<div class="inner_box">
								���������� ��� �ߺ� ����� �Ұ��ϸ�,<br> ���� �� 1���� ������ ����� ������ �� �̿뿡 ����
								��Ź�帳�ϴ�.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[���/ȯ��]���
								�� ȯ���� �����ǳ���?</a>
							<div class="inner_box">
								[�ſ�ī����� ȯ��]<br> ī�� ������ҷ� ����˴ϴ�.<br> ���� ���� ȯ�� : 2�ð� �̳�
								(�κ���Ҵ� 3~5�� �ҿ�)<br> ���� ���� ���� ȯ�� : 'ȯ�ҿϷ�' �Ϸκ��� �� 3~5�� �̳�
								(�ָ�, ������ ����)<br> �� �̹� �����ݾ��� ���Ե� ī���� û���� �Ǿ��ٸ� �ش� ī��翡�� �Ϳ�
								ȯ���� �帮�ų�, �ѵ������� ����˴ϴ�.<br> <br> [üũī����� ȯ��]<br>
								ī�� ������ҷ� ����˴ϴ�.<br> ���� ȯ�� : 2�ð� �̳� (�Ϻ� ���ܴ���� 3~5�� �ҿ�)<br>
								�� üũī�� 2�ð� �̳� ȯ�� ���ܴ��: �κ����, �ؿ�ī��, ����Ʈ���� ����, 90�� �ʰ� �ŷ�, ��� ����,
								ī��� ���� ���θ�� ����<br> <br> [�޴������� ȯ��]<br> ���� ���(����
								����) ��ҵ� �ֹ��� ���� ��� ó��������, �ѵ� �������� ������ ���� 3~5�� �ҿ�˴ϴ�.<br>
								�������� ��ҿ��� �ٸ� ��� �������������� ȯ���� �Ұ����ϹǷ� ������(1599-6975)�� ������ �ֽñ�
								�ٶ��ϴ�.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[���/ȯ��]������
								����ϰ� �;��.</a>
							<div class="inner_box">
								������Ҵ� ����� �ִ� ��� ������ ���� �����ᰡ ����˴ϴ�.&nbsp;<br> 100%ȯ���� ������ �Ⱓ
								������ ���೻�� �ϴ��� ��ư�� ����<br> ���Բ��� ���� ��Ұ� �����մϴ�.<br> <br>
								��, ����Ͻ� ������ �ڵ� �Ҹ�Ǿ� ������ �Ұ��մϴ�.<br> <br> �����ᰡ �ΰ��Ǵ� ��쿡��
								������(��1599-6975)�Ǵ�<br> 1:1�� ���� �ֽø� ���� �帮�ڽ��ϴ�.&nbsp;
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[����]������������
								����ġ�� ���� ������ �Ұ��մϴ�. </a>
							<div class="inner_box">
								���ݰ��� ���ÿ��ຸ���� ��� ����Ȯ���� ���� �� ������ �����մϴ�.<br> <br> �̹�
								���������� �Ϸ�� �������� �ٸ����� ���������� ���谡���� ������ ���, ����Ȯ���� ����� ���谡���� �Ұ��մϴ�.<br>
								�ش� �������� ���������� ���� �߱޹����÷��� �����͸� ���� �������ֽñ� �ٶ��ϴ�.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[���]�ڵ���
								��ȣ�� �ٲ���µ� ����ó ������ ��� �ϳ���?</a>
							<div class="inner_box">
								����ó ������ ���Ͻ� ��쿡�� ���ݰ��� �����ͷ� ���� ��û�� �ϼž� ������ �����մϴ�.<br> *
								�ڵ��� ��ȣ ���� �Է� �� ���� ������ &gt; �����ʰ��� &gt; �ڵ�����ȣ�� ���� �������� �� �����
								�����մϴ�.
							</div></li>
					</ol>
				</div>
			</div>
			<!--// ������ -->
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
<script type="text/javascript">
$(document).ready(function(){
    $('.sf_type_1').css('display','block');
    // ���� ������ ����
    $('select[name=faq_cate_list]').change(function(){
        var thisObj = $(this);
        var sf_type = thisObj.val();
        var text = $("select[name=faq_cate_list] option:checked").text();

        $('.sf_type').hide();
        $('.sf_type_'+sf_type).show();
        $('.service_title').html('<span>FAQ</span>'+text);
    });
});
</script>
</body>
</html>