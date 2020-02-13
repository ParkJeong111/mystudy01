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
					<li class="active"><strong><a href="cs_faq"><b>자주하는질문</b></a></strong></li>
					<li ><strong><a href="cs_customerreg"><b>업체등록요청</b></a></strong></li>
					<li ><strong><a href="cs_mtmqna"><b>1:1 문의하기</b></a></strong></li>
				</ol>
		</div>
		<section>
			<!-- 고객센터 -->
			<div class="faq_area">
				<div class="faq_select">
					<em> <select name="faq_cate_list">
							<option value="1">자주하는질문</option>
							<option value="2">회원정보</option>
							<option value="3">이용방법</option>
							<option value="4">취소/환불</option>
							<option value="5">예약/결제</option>
							<option value="6">보험</option>
							<option value="7">구매/판매</option>
					</select> <ins>
							<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/select_arrow_01.png"
								alt="">
						</ins>
					</em>
				</div>

				<div class="faq_list">
					<p class="service_title">
						<span>FAQ</span>자주하는 질문
					</p>

					<ol>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]
								예약대기와 예약확정은 무엇인가요?</a>
							<div class="inner_box">
								예약이 확정되는 방식에 따라, 예약대기, 예약확정으로 구분됩니다.<br> <br> 1.예약대기 :
								예약 시 대기상태로 접수되며, 업체의 확인 후 예약확정 여부가 문자로 발송됩니다.<br> 업체의 사정으로
								예약이 불가할 경우 결제된 금액은 자동으로 취소됩니다.<br> <br> 2.예약확정 : 실시간
								예약형태로 결제와 동시에 예약이 확정됩니다.(취소/환불 불가)<br> 고객센터 업무외 시간(당일18시 ~
								익일09시)에 당일 or 익일상품 예약시 해당<br> <br> *결제 전 꼭 업체와 통화로
								예약가능 여부 확인 필요<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약도
								쿠폰을 사용할 수 있나요?</a>
							<div class="inner_box">단체예약은 쿠폰 사용이 불가능합니다.&nbsp;</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약
								결제수단이 궁금해요.</a>
							<div class="inner_box">카드(Lpay,payco,삼성페이,카카오페이), 계좌 간편결제,
								휴대폰으로 결제가 가능합니다.</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약
								결제방법이 궁금해요.</a>
							<div class="inner_box">
								단체예약 결제는 회원일 경우 오른쪽 상단 메뉴탭 &gt; 예약내역 에서 추천 및 제안 받으신 상품을 결제하실 수
								있습니다.&nbsp;<br> 비회원일 경우 오른쪽 상단 메뉴탭 &gt; 주문조회를 통해 확인 후 결제하실
								수 있습니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약
								신청 취소 또는 변경은 어떻게 하나요?</a>
							<div class="inner_box">
								단체예약 신청 취소, 변경의 경우&nbsp;<br> 고객센터(☎1599-6975)로 문의 부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약
								신청 시 어디서 확인할 수 있나요?</a>
							<div class="inner_box">
								단체예약 신청은 예약이 완료되거나, 결제가 완료되었을 경우에만<br> 확인이 가능하며, 주문신청 및 접수
								상태일 경우에는 확인이 불가능합니다.<br> <br> 물반고기반 회원일 경우 오른쪽 상단 메뉴탭
								&gt; 예약내역을 통해 확인이 가능하며,<br> 비회원일 경우 오른쪽 상단 메뉴탭 &gt; 주문조회를
								통해 확인이 가능합니다.<br> 예약 및 결제 완료 시 입력하신 연락처로 안내 문자가 발송됩니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약은
								어떻게 신청하나요?</a>
							<div class="inner_box">
								1. 앱 &gt; 하단의 검색 &gt; 왼쪽상단 예약검색 &gt; 오른쪽상단 단체예약 클릭 후 정보를 입력해주시면
								신청이 가능합니다.<br> <br> 2. 앱 &gt; 하단 바다/민물 &nbsp;&gt; 우측하단
								예약버튼 &gt; 오른쪽상단 단체예약 클릭 후 정보를 입력해 주시면 신청이 가능합니다.&nbsp;<br>
								<br> 3. 웹 &gt; 하단의 반반톡 &gt; 왼쪽상단 예약검색 &gt; 완쪽상단 단체예약 클릭 후
								정보를 입력해주시면 신청이 가능합니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약은
								아무 날짜나 신청이 가능한가요?</a>
							<div class="inner_box">
								평일은 신청일로부터 7일 이후부터, 주말은 신청일로부터 14일 이후부터 신청이 가능합니다.<br> 단,
								요청하신 조건 및 업체 사정에 의해 신청이 불가능 할 수 있습니다.<br> 신청이 불가능할 경우
								고객센터(☎1599-6975)에서 확인 후<br> 안내문자 or&nbsp;전화를 드립니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]단체예약이
								무엇인가요?</a>
							<div class="inner_box">
								여러명 혹은 단체인원들이 낚시상품의 이용을 원하실경우 예약날짜, 어종, 인원, 지역, 예상금액 등<br>
								고객님이 원하시는 예약정보를 입력하신 후 신청하시면 물반고기반에서 예약 가능한 업체를 추천해드리며,<br>
								결제까지 가능한 서비스 입니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]티켓
								결제수단이 궁금해요.</a>
							<div class="inner_box">카드(Lpay,payco,삼성페이,카카오페이), 계좌간편결제로
								가능합니다.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]VIP쿠폰은
								어떻게 사용하나요?</a>
							<div class="inner_box">
								VIP 쿠폰은 총 4장의 쿠폰으로 지급되며&nbsp;1인 1회만 등록 가능합니다.<br> 해당 쿠폰은
								앱&amp;웹 내 결제 시 최종결제 금액 기준으로 아래와 같이 할인이 적용됩니다.<br> <br>
								- 30,000원 이상 &gt; 2,000원 할인<br> - 50,000원 이상 &gt; 3,000원 할인<br>
								- 80,000원 이상 &gt; 5,000원 할인<br> - 150,000원 이상 &gt; 10,000원
								할인<br> <br> 자세한 내용은 앱 하단오른쪽 &gt; 마이메뉴 &gt; 내 쿠폰 &gt;
								VIP쿠폰 하단에서 확인가능한 점 이용에 참고부탁드립니다.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]티켓
								유효기간은 어떻게 확인하나요?</a>
							<div class="inner_box">
								결제 이후 유효기간 확인은 오른쪽 상단 메뉴탭 &gt; 예약내역 &gt; 티켓 예약내역에서<br> 티켓별
								상세리스트 하단에 표시된 유효기간을 확인하여 주시기 바랍니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]영수증
								출력은 어떻게 하나요?</a>
							<div class="inner_box">
								예약 결제 시 입력한 이메일로 영수증이 발급됩니다.<br> 이메일 주소를 입력하지 못하셨다면, 개별
								카드사의 결제내역에서 확인하시거나,<br> 결제 대행사 페이지에서 직접 발급해 주셔야 합니다.<br>
								*거래 명세서 발급의 경우 고객센터(☎1599-6975)로 문의 부탁드립니다.<br> <br>
								1.휴대폰 소액결제<br> 모빌리언스
								웹페이지(https://cp.mcash.co.kr/mcht/ucs/ucsrPhonePayInq/index.do)
								&gt; 고객센타 &gt; 결제내역 조회 &gt; 휴대폰 결제내역<br> <br> 2.
								신용카드(이니시스)<br> 이니시스 웹페이지(https://www.inicis.com/) &gt; 고객센터
								&gt; 결제내역 조회 &gt; 결제수단별 조회
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]쿠폰
								사용 시 차액은 소멸되나요?</a>
							<div class="inner_box">
								쿠폰 금액 이하의 상품을 예약할 경우 차액은 소멸되며,<br> 쿠폰 금액 이상의 상품을 예약할 경우 별도의
								차액 결제가 가능합니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]티켓
								양도가 가능한가요?</a>
							<div class="inner_box">구매하신 상품은 타인에게 양도할 수 없으며, 본인확인 후 사용이
								가능합니다.</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]낚시여행보험이란?</a>
							<div class="inner_box">물반고기반 &amp; 삼성화재가 만든 낚시여행보험으로 피보험자가
								낚시여행보험 가입 기간 내 불의의 사고로 신체상해 사고를 당하거나, 교통상해, 질병 등의 사고 또는 제 3자에게
								법률상 배상책임을 주어 손해배상책임이 생겼을 경우 손해를 보상해 주는 보험입니다.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]구매한
								티켓은 어떻게 사용하나요?</a>
							<div class="inner_box">
								티켓은 정해진 사용기간 내 매장을 방문하여 티켓을 제시하여 사용 가능<br> <br> [ 티켓
								사용방법 ]<br> 1. 구매하신 티켓명과 사용 유효기간을 확인해 주세요<br> 2. 유효기간 내
								서비스 이용이 가능한 매장을 방문하여 티켓 구매 시 인증한 휴대폰 뒷번호 4자리로 현장에서<br> 사용
								요청을 해주세요<br> <br> 상품에 따라 티켓 사용방법이 다를 수 있으니 사용조건 내 티켓
								사용방법을 따라주세요.<br> 티켓의 1일 사용수량은 업체가 정한 기준에 따라 상이 할수 있습니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]가족
								및 친구들과 여행을 준비 중인데 단체로 가입 가능한가요? </a>
							<div class="inner_box">
								네. 가능합니다.<br> <br> 단 계약자 기준으로 본인 외 자녀 (만 19세 미만) 까지 보험
								가입 및 결제가 가능하며, 만 19세 이상의 자녀 및 가족, 동행자들은 본인확인을 위해 별도로 개별가입이
								필요합니다.<br> <br> ※ 동행자 추가 방법 - 보험 가입 시 동행자 등록 &gt; 등록된
								동행자에게 보험가입 안내 문자 발송 &gt; 개별가입 진행
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]구매한
								티켓은 언제 사용할 수 있나요?</a>
							<div class="inner_box">
								티켓에 따라 사용할 수 있는 기간이 각각 다름<br> <br> 상품의 사용조건에 기재된 유효기간을
								확인하여 주시기 바랍니다.<br> 티켓은 유효기간 내 사용하실 수 있으며, 유효기간이 경과된 후에는
								사용하실 수 없습니다.<br> 결제 이후 유효기간 확인은 오른쪽 상단 메뉴탭 &gt; 예약내역 &gt;
								티켓 예약내역에서<br> 티켓별 상세리스트 하단에 표시된 유효기간을 확인하여 주시기 바랍니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]성인이된
								자녀도 부모가 같이 가입을 시킬 수 있나요? </a>
							<div class="inner_box">보험가입자의 만 19세 미만 직계자녀만 추가 가입 및 결제가
								가능하며, 만 19세 이상인 자녀는 동행자로 등록 후 발송되는 보험 가입 안내 문자를 통해 개별로 가입할 수
								있습니다.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[상품]상품
								등록은 어디서 하나요?</a>
							<div class="inner_box">더보기 &gt; 내글쓰기 또는 반반톡 &gt; 중고장터 &gt;
								글쓰기 버튼을 통해 판매/구매 하고자 하는 상품을 등록할 수 있습니다.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]티켓을
								여러 장 샀습니다. 한번에 모두 사용할 수 없는데 나눠서 사용할 수 있나요?</a>
							<div class="inner_box">
								유효기간 내 서비스 이용이 가능한 매장을 방문하여 티켓 사용 시 사용하시려는 티켓명과 수량을 확인해주시면<br>
								나눠서 사용이 가능합니다.<br> <br> 단, 상품에 따라 티켓 사용방법이 다를 수 있으니
								사용조건 내 티켓 사용방법을 따라주세요.<br> 티켓의 1일 사용수량은 업체가 정한 기준에 따라 상이 할수
								있습니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]미성년자도
								보험 가입이 가능한가요? </a>
							<div class="inner_box">권리능력이 없는 만 19세 미만의 미성년자는 대표 피보험자인
								친권자의 자녀로만 보험 가입이 가능합니다.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[상품]상품
								등록은 아무나 할 수 있나요?</a>
							<div class="inner_box">
								일반 게시판의 경우 회원가입 시 등록할 수 있으나,<br> 중고장터 게시판의 경우 회사에서 제공하는
								본인인증 절차를 거친 회원만 상품등록(글쓰기)을 할 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]물반고기반으로
								어떤 낚시를 할 수 있나요?</a>
							<div class="inner_box">
								물반고기반은 전국 어느 지역이든 낚시에 관한 정보를 검색 할 수 있으며, 또한 카테고리 별로 정보를 찾을수
								있습니다.<br> <br> 바다낚시 - 선상낚시, 낚시터낚시, 갯바위낚시, 항구낚시(항구정보),
								요트낚시<br> 민물낚시 - 수상낚시, 연안낚시, 노지포인트, 배스포인트, 실내낚시카페
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]낚시여행보험은
								당일 가입도 가능한가요?</a>
							<div class="inner_box">
								당일 가입은 불가합니다.<br> <br> ※낚시여행보험은 사전예약일 기준 2일 전까지만 가입이
								가능합니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[상품]상품
								상태변경은 어떻게 하는건가요?</a>
							<div class="inner_box">본인이 등록한 상품 게시글 상세에 들어가면 하단에 판매중/구매중
								or 판매완료/구매완료 버튼을 눌러 상품 상태를 변경할 수 있습니다.</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]전화로도
								보험 가입이 가능한가요? </a>
							<div class="inner_box">
								실시간 예약상품 구매시 혹은 구매후 모바일 또는 PC홈페이지에서 직접 가입 진행해 주시면 됩니다.<br>
								※ 고객센터를 통한 유선상 가입은 어렵습니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[상품]상품
								삭제는 어떻게 하는건가요?</a>
							<div class="inner_box">본인이 등록한 상품 게시글 상세에 들어가면 우측 상단에 삭제
								버튼을 통해 상품을 삭제할 수 있습니다.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[이용방법]VIP쿠폰은
								어떻게 사용하나요?</a>
							<div class="inner_box">
								VIP 쿠폰은 총 4장의 쿠폰으로 지급되며&nbsp;1인 1회만 등록 가능합니다.<br> 해당 쿠폰은
								앱&amp;웹 내 결제 시 최종결제 금액 기준으로 아래와 같이 할인이 적용됩니다.<br> <br>
								- 30,000원 이상 &gt; 2,000원 할인<br> - 50,000원 이상 &gt; 3,000원 할인<br>
								- 80,000원 이상 &gt; 5,000원 할인<br> - 150,000원 이상 &gt; 10,000원
								할인<br> <br> 자세한 내용은 앱 하단오른쪽 &gt; 마이메뉴 &gt; 내 쿠폰 &gt;
								VIP쿠폰 하단에서 확인가능한 점 이용에 참고부탁드립니다.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]내가
								작성한 게시글은 어떻게 확인하나요?</a>
							<div class="inner_box">오른쪽 상단 메뉴탭 &gt; 내 글관리 에서 내 조황/조행기,
								내가 쓴 글, 내가 쓴 댓글, 스크랩 등을 확인 할 수 있습니다.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[예약/결제]
								예약대기와 예약확정은 무엇인가요?</a>
							<div class="inner_box">
								예약이 확정되는 방식에 따라, 예약대기, 예약확정으로 구분됩니다.<br> <br> 1.예약대기 :
								예약 시 대기상태로 접수되며, 업체의 확인 후 예약확정 여부가 문자로 발송됩니다.<br> 업체의 사정으로
								예약이 불가할 경우 결제된 금액은 자동으로 취소됩니다.<br> <br> 2.예약확정 : 실시간
								예약형태로 결제와 동시에 예약이 확정됩니다.(취소/환불 불가)<br> 고객센터 업무외 시간(당일18시 ~
								익일09시)에 당일 or 익일상품 예약시 해당<br> <br> *결제 전 꼭 업체와 통화로
								예약가능 여부 확인 필요<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]보험계약을
								하려고 하는데 어떤 결제방법 있나요?</a>
							<div class="inner_box">카드(Lpay,payco,삼성페이,카카오페이),계좌 간편결제,
								휴대폰으로 결제가 가능합니다.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[상품]상품
								내용을 잘못 입력했어요 수정은 어떻게 하는건가요?</a>
							<div class="inner_box">
								중고장터 상품 게시글은 등록이 완료되면 수정이 불가능하며, 내용 추가만 가능합니다.<br> 단, 제목,
								상품명, 가격, 배송방법, 상품상태, 교환가능여부, 거래선호지역 설정은 수정이 가능하나, 내용에 수정 이력이
								표기됩니다.<br> 내용 수정을 원하실 경우에는 해당 게시글을 삭제 후 재등록 하셔야 합니다.
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[예약/결제]쿠폰
								사용 시 차액은 소멸되나요?</a>
							<div class="inner_box">
								쿠폰 금액 이하의 상품을 예약할 경우 차액은 소멸되며,<br> 쿠폰 금액 이상의 상품을 예약할 경우 별도의
								차액 결제가 가능합니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]현재
								위치에서 주변 낚시 업체가 잡히지 않아요.</a>
							<div class="inner_box">
								내 주변에 어떤 낚시 업체들이 있는지 확인 하고 싶으시다면 고객님 핸드폰에서 “위치 기반”에 최초1회 동의
								부탁드립니다.<br> <br> 주변 낚시업체 뿐만 아니라 원하는 지역의 낚시 업체도 함께 찾을 수
								있습니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]보험계약을
								조회하려면 어떻게 해야 하나요?</a>
							<div class="inner_box">
								오른쪽 상단 메뉴탭&nbsp; &gt; 예약내역 에서 조회 가능합니다.<br> <br> ※ 다만,
								전자상거래 등에서의 소비자보호에 관한 법률에 따라 가입 및 결제내역은 보험상품 결제 후 1년까지만 확인하실 수
								있으며, 1년 이후 증권 및 약관 확인을 원하실 경우 삼성화재 홈페이지 또는 콜센터를 통해 안내받으실 수 있습니다.<br>
								- 콜센터 : 1588-5114<br> - 홈페이지 : 삼성화재
								홈페이지(www.samsungfire.com)
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[상품]등록한
								상품이 판매/구매완료, 삭제 처리가 되어 있어요. 이유가 무엇인가요?</a>
							<div class="inner_box">거래금지 품목을 등록하였거나, 지나친 노출 사진 및 이용자들에게
								거부감을 주는 이미지 등록 시 게시물을 삭제처리하고 있습니다. 또한 등록한 상품과 관련없는 이미지, 가격, 상품명
								등 을 등록하였거나 타 사이트, 업체 홍보 및 URL이 있을 시 판매완료처리를 하고 있습니다. 그 외 자세한 사항은
								이용약관 참조 및 1:1문의하기 또는 고객센터로 문의 주시기 바랍니다.</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]물반고기반에
								우리 업체 정보를 등록 하고 싶어요.</a>
							<div class="inner_box">
								1. 물반고기반 업체 등록 문의는 고객센터(☎1599-6975)로 부탁드립니다.<br> <br>
								2. 오른쪽 상단 메뉴탭 &gt; 고객센터 &gt; 업체등록요청 으로 접수가 가능합니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]보험증권과
								약관은 어디서 확인하나요? </a>
							<div class="inner_box">
								오른쪽 상단 메뉴탭 &gt; 예약내역에서 조회 가능합니다.<br> <br> ※ 다만, 전자상거래
								등에서의 소비자보호에 관한 법률에 따라 가입 및 결제내역은 보험상품 결제 후 1년까지만 확인하실 수 있으며, 1년
								이후 증권 및 약관 확인을 원하실 경우 삼성화재 홈페이지 또는 콜센터를 통해 안내받으실 수 있습니다.<br>
								- 콜센터 : 1588-5114<br> - 홈페이지 : 삼성화재
								홈페이지(www.samsungfire.com)
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[보험]낚시여행보험은
								당일 가입도 가능한가요?</a>
							<div class="inner_box">
								당일 가입은 불가합니다.<br> <br> ※낚시여행보험은 사전예약일 기준 2일 전까지만 가입이
								가능합니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[거래]아무
								상품이나 거래할 수 있나요?</a>
							<div class="inner_box">
								현재는 낚시관련 상품 거래를 지향합니다.<br> 물반고기반은 거래요건을 갖추고 있는 회원이라 하더라도 현행
								법령 상 판매가 허용되지 않은 불법상품 및 유해상품을 거래하는 행위를 제한합니다. 현행법을 위반할 경우 처벌 받을
								수 있다는 점 인지 부탁드립니다.<br> ※ 자세한 사항은 이용약관 제 20 조 5항을 확인하시면 됩니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]예약확인은
								어떻게 하나요?</a>
							<div class="inner_box">
								물반고기반 회원일 경우 오른쪽 상단 메뉴탭 &gt; 예약내역을 통해 확인이 가능하며,<br> 비회원일 경우
								오른쪽 상단 메뉴탭 &gt; 주문조회를 통해 확인이 가능합니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]찜하기
								기능은 어떻게 사용하나요?</a>
							<div class="inner_box">
								해당 업체 상세페이지 상단 오른쪽에 하트를 눌러주시면 찜하기가 완료됩니다.<br> <br> 찜해둔
								업체는 오른쪽 상단 메뉴탭 &gt; 마이페이지 &gt; 찜 목록 에서 확인 하실 수 있으며, 원하는 업체를 쉽게
								찾아<br> 예약할 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]보험상품
								철회를 신청하면 보험료는 언제 돌려받을 수 있나요?</a>
							<div class="inner_box">결제수단에 따라 영업일 기준 3일에서~5일 이내에 보험료를
								돌려받을 수 있습니다.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[보험]보험상품
								철회 가능기간은 어떻게 되나요?</a>
							<div class="inner_box">철회 가능기간은 이용일 전날(고객센터 운영시간 내) 까지
								고객센터로 연락주시면 철회가 가능합니다.</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[거래]중고장터
								게시글 작성자와 연락은 어떻게 하나요?</a>
							<div class="inner_box">
								거래하고자 하는 상품 상세페이지에서 전화문의 버튼을 통해 연락이 가능합니다.<br> 단, 본인인증을 완료한
								회원만 전화문의가 가능합니다.<br> 간단한 문의는 해당 게시글 상세에서 본인인증 없이 댓글을 이용하시면
								됩니다.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]예약대기
								건 예약취소하고 싶어요</a>
							<div class="inner_box">
								예약 대기건의 취소문의는 물반고기반 고객센터로 연락 부탁드립니다.<br> <br> 단,환불규정에
								따라 수수료가 발생하거나 예약취소가 불가할 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]비회원도
								예약이 가능한가요?</a>
							<div class="inner_box">
								물반고기반 회원이 아니더라도<br> 비회원으로 예약 및 결제가 가능합니다.<br> 다만,
								비회원으로 예약 시 할인쿠폰 지급 및 사용이 불가합니다.
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[회원정보]아이디,
								비밀번호가 기억나지 않아요.</a>
							<div class="inner_box">
								아이디 찾기<br> <br> 1.이메일 주소로 가입한 회원<br>
								2.카카오톡/페이스북/네이버 계정으로 가입한 회원 : 해당 계정관리 업체의 고객센터에 문의<br> <br>
								비밀번호 찾기 (이메일주소 가입만 해당)<br> 1.이메일로 로그인하기 &gt; 비밀번호를 잊으셨나요?
								선택<br> 2.가입한 이메일 주소(아이디)기재<br> 3.수신된 메일에서 새로운 비밀번호로 변경<br>
								<br> 위 방법으로도 이용에 불편을 겪으실 경우, 1:1문의 또는 고객센터(☎1599-6975)로 문의
								부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]찜한
								업체 삭제는 어떻게 하나요?</a>
							<div class="inner_box">
								1. 오른쪽 상단 메뉴탭 &gt; 마이페이지 &gt; 찜 목록 에서 삭제하실 업체의 X버튼을 눌러주시면 삭제
								가능합니다.<br> <br> 2. 해당 업체의 상세페이지에서 오른쪽 상단에 하트를 눌러주시면
								삭제가 가능합니다..
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]유효기간
								내 미사용 티켓은 어떻게 환불받나요?</a>
							<div class="inner_box">
								미사용티켓은 환불규정에 따라 환불 가능<br> <br> 구매일 기준 7일 이내에 미사용 티켓에
								한해 앱내에서 100%환불이 가능합니다.<br> 단, 부분환불의 경우 고객센터로 문의 부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]보험상품
								철회 가능기간은 어떻게 되나요?</a>
							<div class="inner_box">철회 가능기간은 이용일 전날(고객센터 운영시간 내) 까지
								고객센터로 연락주시면 철회가 가능합니다.</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[보험]사고접수는
								어떻게 하나요?</a>
							<div class="inner_box">
								삼성화재 대표 콜센터 또는 삼성화재 앱,홈페이지를 통해 사고 접수를 할 수 있습니다.<br> <br>
								- 콜센터 : 1588-5114<br> - 홈페이지 : 삼성화재
								홈페이지(www.samsungfire.com)<br> - 앱 : 삼성화재 앱 설치 후 보험금 청구 클릭
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[거래]사기를
								당하면 어떻게 처리해야 되나요?</a>
							<div class="inner_box">
								물반고기반은 당사자간의 거래에 대해 직접관여하지 않습니다.<br> 피해를 당하셨을 경우 유관기관에 직접
								신고하여 처리하셔야 합니다.<br> <br> 1. 증거자료 수집 상대방과 거래한 가능한 많은
								증거자료가 필요합니다. 대화내역 등은 삭제하지 마시고 꼭 캡쳐하여 별도 보관하세요.<br> 2. 경찰서
								민원봉사실이나 사이버안전국에 신고<br> - 경찰청 http://www.police.go.kr<br>
								1) 경찰서 민원봉사실 방문(형사상 처리를 통해 검거 또는 보상이 필요할 경우) - 지구대에선 해당 업무를 하지
								않습니다.<br> 2) 고소장 작성. 작성 방법은 방문하면 봉사실에서 알려드립니다.<br> 3)
								사건사실확인서 발급 요청<br> 4) 사건사실확인서를 가지고 상대방의 은행에 방문하여 계좌지급정지신청을
								합니다.<br> 5) 범인이 검거되기를 기다립니다.<br> <br> [준비자료] 피해자
								인적사항, 피해일시, 해당사이트, ID, 거래내역 * 상대방의 개인정보는 개인정보보호법에 의해 신고인에게 직접
								제공할 수 없음을 양해부탁드립니다.<br> <br> - 경찰청 사이버안전국<br>
								http://cyberbureau.police.go.kr/crime/sub1.jsp<br> 해당 사이트에
								방문하여 증거자료를 첨부하여 안내에 따라 작성하시면 됩니다. 물반고기반에서 처리해 드릴 수 있는 부분은, 사실확인
								후 신고된 상대방이 활동하지 못하도록 계정을 정지하는 것입니다.<br> <br> [헬프메일]을
								통해 신고/제보할 수 있습니다.<br> * 처리절차 - 헬프메일(help@moolban.com)을 통해
								거래/송금 증거자료 제출 &gt; 사실여부 확인 &gt; 계정정지 [신고사유에 따른 필요 내용]<br> *
								상태불량 : 실제 수령한 상품이미지 등 관련자료 이미지 첨부<br> * 착불 : 선불로 협의한
								대화내용(카톡, 문자 등)등 관련 자료 이미지 첨부<br> * 교환 : 신고자(본인)의 상품과 상대방의
								상품기재(상대방의 상품 추가금 발생했다면 기재)
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]결제수단이
								궁금해요.</a>
							<div class="inner_box">카드(Lpay,payco,삼성페이,카카오페이), 계좌 간편결제,
								휴대폰으로 결제가 가능합니다.</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]예약
								취소하면 쿠폰은 어떻게 되나요?</a>
							<div class="inner_box">
								예약취소 시, 사용한 쿠폰은 소멸되어 복구가 불가합니다.<br> <br> 다만, 업체사정으로
								예약이 취소된다면 쿠폰은 소멸되지 않고 복구됩니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]업체
								정보를 공유하는 기능이 있나요?</a>
							<div class="inner_box">
								업체 상세페이지 &gt; 오른쪽 상단의 공유하기 버튼을 클릭하시면<br> 카카오톡, 페이스북,
								카카오스토리, 인스타그램, 문자메세지등으로 빠르게 공유할 수 있습니다.<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]사고접수는
								어떻게 하나요?</a>
							<div class="inner_box">
								삼성화재 대표 콜센터 또는 삼성화재 앱,홈페이지를 통해 사고 접수를 할 수 있습니다.<br> <br>
								- 콜센터 : 1588-5114<br> - 홈페이지 : 삼성화재
								홈페이지(www.samsungfire.com)<br> - 앱 : 삼성화재 앱 설치 후 보험금 청구 클릭
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[기능]판매자가
								판매중인 모든 상품 또는 구매자가 구매중인 모든 상품을 볼 수 있나요?</a>
							<div class="inner_box">
								상품 판매 또는 구매 게시글 작성자의 프로필이미지 또는 네임택을 선택하신 후<br> 마이페이지 &gt;
								작성글보기 &gt; 게시글 &gt; 중고장터에 들어가시면 해당 유저의 판매중/구매중 상품을 볼 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]법인카드
								어떻게 결제하나요?</a>
							<div class="inner_box">
								법인카드 결제는 일반 신용카드 결제로 진행해주시면 가능합니다.<br> 다만, 결제 과정에서 인증서가 요구
								되는 경우 원활한 예약 서비스 이용이 어려울 수 있는 점 너른 양해 부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]이용날짜를
								바꾸고 싶어요.</a>
							<div class="inner_box">
								날짜 변경 또한 취소와 동일하게 처리됩니다.<br> 취소 후 재 결제하는 방식으로 취소 환불 수수료 규정이
								적용됩니다.<br> 규정에 따라 취소를 원하실 경우에는 고객센터로 문의 주시면<br> 도움
								드리겠습니다.
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]반반톡은
								어떤 서비스인가요?</a>
							<div class="inner_box">
								반반톡은<br> 조황/조행기, 중고장터, 물반동영상, 유용한정보, 낚시지식인, 물반갤러리, 자유게시판등<br>
								자유롭게 정보를 주고받을 수 있는 공간입니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]인원(일정)을
								변경/취소를 하고 싶은데 어떻게 해야 하나요?</a>
							<div class="inner_box">
								보험시작일 이전에 인원(일정) 변경을 원하실 경우 고객센터 (1599-6975) 를 통해 연락주시면 처리를
								도와드립니다.<br> <br> ※ 단, 보험시작일이 이미 경과된 경우 변경/취소는 어려우며,
								기상상황 악화 및 업체사정에 의한 취소 시에도 보험 적용일 기준 당일부턴 환불 불가합니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[기능]내글UP
								기능은 어떤 기능인가요?</a>
							<div class="inner_box">
								내글UP기능은 내가 등록한 상품 게시글을 상위로 노출하고자할 경우<br> 사용하는 기능으로 게시글 당 최대
								3회 이용할 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[상품]상품
								등록은 아무나 할 수 있나요?</a>
							<div class="inner_box">
								일반 게시판의 경우 회원가입 시 등록할 수 있으나,<br> 중고장터 게시판의 경우 회사에서 제공하는
								본인인증 절차를 거친 회원만 상품등록(글쓰기)을 할 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[회원정보]회원정보가
								변경되었는데, 변경은 어디서 하나요?</a>
							<div class="inner_box">
								1. 오른쪽 상단 메뉴탭 -&gt; 프로필 사진 클릭 -&gt; 프로필사진, 상태메시지 , 닉네임 등 회원정보 수정
								가능합니다.<br> <br> 2. 오른쪽 상단 메뉴탭 -&gt; 설정 -&gt; 프로필관리
								-&gt; 프로필사진, 상태메시지, 닉네임 등 회원정보 수정 가능합니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]낚시
								예약하고 싶어요.</a>
							<div class="inner_box">
								실시간 예약이 가능한 업체는 "실시간예약" 배지가 달려있으며,<br> 예약을 원하시는 업체가 있다면
								예약하기 버튼 클릭으로 바로 가능합니다.<br> <br> 다만, "전화예약" 배지가 달려있는 경우<br>
								업체명 옆에 있는 전화하기 아이콘 버튼을 클릭하여 전화예약으로만 진행이 가능한 점 참고 부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]천재지변으로
								인한 예약취소는 어떻게 하나요?</a>
							<div class="inner_box">
								천재지변으로 인한 예약취소는 고객센터(☎1599-6975)또는 1:1로 문의 주시면<br> 취소가능여부
								확인하여 안내해 드리겠습니다.<br> <br> 다만, 경우에 따라 취소 환불이 어려울 수 있는 점
								참고 부탁드립니다.<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]고객센터의
								운영시간을 알고 싶어요.</a>
							<div class="inner_box">
								물반고기반 고객센터는 365일 10시 ~ 18시 까지 운영합니다.<br> 고객센터(☎1599-6975)
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]보험료는
								모든 연령에 대해 동일한가요? </a>
							<div class="inner_box">
								보험료는 성별, 연령 등에 따라 달라질 수 있습니다.<br> 또한, 예정 위험률과 손해율을 토대로
								보험개발원에서 산정한 기준에 따라 매년 보험료의 변동이 발생할 수 있으며, 신체 위험을 보장하는 보험에서는
								연령증가에 따라 보험료가 인상될 수 있습니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[기능]거래자조회는
								어떤 기능인가요?</a>
							<div class="inner_box">
								물반고기반에서 제공하는 거래자조회 기능은 거래자의 핸드폰번호 및 계좌번호를 입력하여<br> 더치트로 부터
								사기이력이 있는지 조회할 수 있는 기능입니다.<br> 거래 전 꼭 필수로 확인해 주세요.
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[거래]사기를
								당하면 어떻게 처리해야 되나요?</a>
							<div class="inner_box">
								물반고기반은 당사자간의 거래에 대해 직접관여하지 않습니다.<br> 피해를 당하셨을 경우 유관기관에 직접
								신고하여 처리하셔야 합니다.<br> <br> 1. 증거자료 수집 상대방과 거래한 가능한 많은
								증거자료가 필요합니다. 대화내역 등은 삭제하지 마시고 꼭 캡쳐하여 별도 보관하세요.<br> 2. 경찰서
								민원봉사실이나 사이버안전국에 신고<br> - 경찰청 http://www.police.go.kr<br>
								1) 경찰서 민원봉사실 방문(형사상 처리를 통해 검거 또는 보상이 필요할 경우) - 지구대에선 해당 업무를 하지
								않습니다.<br> 2) 고소장 작성. 작성 방법은 방문하면 봉사실에서 알려드립니다.<br> 3)
								사건사실확인서 발급 요청<br> 4) 사건사실확인서를 가지고 상대방의 은행에 방문하여 계좌지급정지신청을
								합니다.<br> 5) 범인이 검거되기를 기다립니다.<br> <br> [준비자료] 피해자
								인적사항, 피해일시, 해당사이트, ID, 거래내역 * 상대방의 개인정보는 개인정보보호법에 의해 신고인에게 직접
								제공할 수 없음을 양해부탁드립니다.<br> <br> - 경찰청 사이버안전국<br>
								http://cyberbureau.police.go.kr/crime/sub1.jsp<br> 해당 사이트에
								방문하여 증거자료를 첨부하여 안내에 따라 작성하시면 됩니다. 물반고기반에서 처리해 드릴 수 있는 부분은, 사실확인
								후 신고된 상대방이 활동하지 못하도록 계정을 정지하는 것입니다.<br> <br> [헬프메일]을
								통해 신고/제보할 수 있습니다.<br> * 처리절차 - 헬프메일(help@moolban.com)을 통해
								거래/송금 증거자료 제출 &gt; 사실여부 확인 &gt; 계정정지 [신고사유에 따른 필요 내용]<br> *
								상태불량 : 실제 수령한 상품이미지 등 관련자료 이미지 첨부<br> * 착불 : 선불로 협의한
								대화내용(카톡, 문자 등)등 관련 자료 이미지 첨부<br> * 교환 : 신고자(본인)의 상품과 상대방의
								상품기재(상대방의 상품 추가금 발생했다면 기재)
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[회원정보]회원탈퇴는
								어떻게 하나요?</a>
							<div class="inner_box">
								현재 탈퇴 기능이 제공되고 있지않아 탈퇴를 원하시는 계정아이디로 1:1 문의를 남겨주시거나 고객센터로 문의
								부탁드립니다.<br> <br> 고객 탈퇴 시 남아있는 모든 개인 정보 및 기타 정보는 삭제
								처리되며,<br> 탈퇴 이후에 정보 복구는 불가합니다.&nbsp;
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]예약
								시 사용가능한 쿠폰은 어디서 확인할 수 있나요?</a>
							<div class="inner_box">
								결제페이지의 [쿠폰선택]에서 사용가능한 쿠폰 확인이 가능합니다.<br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]예약을
								취소하고 싶어요.</a>
							<div class="inner_box">
								예약취소는 기재되 있는 취소 규정에 따라 수수료가 적용됩니다.&nbsp;<br> 100%환불이 가능한 기간
								내에는 예약내역 하단의 버튼을 통해<br> 고객님께서 직접 취소가 가능합니다.<br> <br>
								단, 사용하신 쿠폰은 자동 소멸되어 복구가 불가합니다.<br> <br> 수수료가 부과되는 경우에는
								고객센터(☎1599-6975)또는<br> 1:1로 문의 주시면 도움 드리겠습니다.&nbsp;
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[취소/환불]취소
								후 환불은 언제되나요?</a>
							<div class="inner_box">
								[신용카드결제 환불]<br> 카드 승인취소로 진행됩니다.<br> 결제 당일 환급 : 2시간 이내
								(부분취소는 3~5일 소요)<br> 결제 당일 이후 환급 : '환불완료' 일로부터 약 3~5일 이내
								(주말, 공휴일 제외)<br> ※ 이미 결제금액이 포함된 카드대금 청구가 되었다면 해당 카드사에서 익월
								환급해 드리거나, 한도복구가 진행됩니다.<br> <br> [체크카드결제 환불]<br>
								카드 승인취소로 진행됩니다.<br> 결제 환급 : 2시간 이내 (일부 제외대상은 3~5일 소요)<br>
								※ 체크카드 2시간 이내 환급 제외대상: 부분취소, 해외카드, 포인트포함 결제, 90일 초과 거래, 고액 결제,
								카드사 할인 프로모션 결제<br> <br> [휴대폰결제 환불]<br> 결제 당월(말일
								제외) 취소된 주문은 당일 취소 처리되지만, 한도 복구에는 영업일 기준 3~5일 소요됩니다.<br>
								결제월과 취소월이 다를 경우 원결제수단으로 환불이 불가능하므로 고객센터(1599-6975)로 문의해 주시기
								바랍니다.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_3" style="display: none;"><a>[이용방법]정확한
								내 위치 확인이 안돼요.</a>
							<div class="inner_box">
								물반고기반은 위치기반 서비스로 정확한 위치가 인식되어야 정상적인 이용이 가능합니다.<br> 단말기의
								GPS를 통한 내 위치 설정 시,단말기 상태에 따라 위치 인식에 예외사항이 발생할 수 있으니, GPS재설정을 통해
								정확하게 확인해 주시기 바랍니다.
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]외국인도
								보험 가입이 가능한가요? </a>
							<div class="inner_box">
								예, 가능합니다. 보험대상자(피보험자)의 범위는 "대한민국의 국적을 가지고 있거나 대한민국에 주소를 둔 자로
								한다"라고 규정되어 있습니다. 그러나 아래의 조건에 부합되어야만 가능합니다.<br> <br> *
								기본 충족요건<br> - 대한민국에 주소를 둔 자<br> - 대한민국 이외 국적소지자
								(해외교포증, 시민권 취득자포함)<br> - 계약내용을 이해할 수 있는 한국어 능력을 가진 자<br>
								- 출입국 관리법상 체류 목적 입국자 (국내에 거주하는 화교의 경우는 내국인과 동일하게 대우함) 단, 외국인등록증
								상의 체류기간 초과 시 가입 불가 *첨부서류 (다음 중 해당되는 서류 사본 1부)<br> - 외국인등록증,
								외국국적동포 국내거소신고증, 재외국민 국내거소신고증 (제출대상 : 계약자, 보험금을 받는 자(보험수익자),
								보험대상자(피보험자)<br> <br> 단, 한국 이외 다른 국가에 납세의무가 있는 외국인이 계약을
								체결하는 경우, 국제조세조정에 관한 법률 및 조세조약에 따라 별도의 본인확인서를 삼성화재에 제출해야합니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[기능]관심있는
								상품을 다시 찾아서 보기가 어려운데 쉽게 찾을 수 있는 방법은 없나요?</a>
							<div class="inner_box">
								관심있는 상품이 있을 경우 스크랩 기능을 통해 언제든 내글관리 &gt; 스크랩에서 확인하실 수 있습니다.<br>
								단, 해당 글 작성자가 게시글 삭제 시 스크랩 이력도 함께 삭제됩니다.
							</div></li>
						<li class="sf_type sf_type_2" style="display: none;"><a>[회원정보]비밀번호
								찾기시 메일이 오지 않아요.</a>
							<div class="inner_box">
								이메일 주소로 회원가입 한 경우, 이메일로 비밀번호 변경 메일을 보내드립니다.&nbsp;<br> 이메일이
								오지 않을 경우<br> <br> 1.고객님의 메일 용량이 초과되지 않았는지, 입력하신 메일 주소의
								오ㆍ탈자 여부 등을 확인해 주시기 바랍니다.<br> <br> 2.특정 단어 스팸 처리 등을 하신
								경우, 이메일이 스팸/광고 편지함으로 분류될 수 있으니 스팸편지함이나 광고 편지함을 확인해주시기 바랍니다.<br>
								<br> 지속적으로 비밀번호 찾기에 어려움을 겪으실 경우, 1:1문의 또는 고객센터(☎1599-6975)로
								문의 부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_5" style="display: none;"><a>[예약/결제]쿠폰
								중복으로 사용할 수 있나요?</a>
							<div class="inner_box">
								할인쿠폰의 경우 중복 사용은 불가하며,<br> 예약 시 1장의 쿠폰만 사용이 가능한 점 이용에 참고
								부탁드립니다.
							</div></li>
						<li class="sf_type sf_type_4" style="display: none;"><a>[취소/환불]취소
								후 환불은 언제되나요?</a>
							<div class="inner_box">
								[신용카드결제 환불]<br> 카드 승인취소로 진행됩니다.<br> 결제 당일 환급 : 2시간 이내
								(부분취소는 3~5일 소요)<br> 결제 당일 이후 환급 : '환불완료' 일로부터 약 3~5일 이내
								(주말, 공휴일 제외)<br> ※ 이미 결제금액이 포함된 카드대금 청구가 되었다면 해당 카드사에서 익월
								환급해 드리거나, 한도복구가 진행됩니다.<br> <br> [체크카드결제 환불]<br>
								카드 승인취소로 진행됩니다.<br> 결제 환급 : 2시간 이내 (일부 제외대상은 3~5일 소요)<br>
								※ 체크카드 2시간 이내 환급 제외대상: 부분취소, 해외카드, 포인트포함 결제, 90일 초과 거래, 고액 결제,
								카드사 할인 프로모션 결제<br> <br> [휴대폰결제 환불]<br> 결제 당월(말일
								제외) 취소된 주문은 당일 취소 처리되지만, 한도 복구에는 영업일 기준 3~5일 소요됩니다.<br>
								결제월과 취소월이 다를 경우 원결제수단으로 환불이 불가능하므로 고객센터(1599-6975)로 문의해 주시기
								바랍니다.<br> <br> &nbsp;
							</div></li>
						<li class="sf_type sf_type_1" style="display: block;"><a>[취소/환불]예약을
								취소하고 싶어요.</a>
							<div class="inner_box">
								예약취소는 기재되 있는 취소 규정에 따라 수수료가 적용됩니다.&nbsp;<br> 100%환불이 가능한 기간
								내에는 예약내역 하단의 버튼을 통해<br> 고객님께서 직접 취소가 가능합니다.<br> <br>
								단, 사용하신 쿠폰은 자동 소멸되어 복구가 불가합니다.<br> <br> 수수료가 부과되는 경우에는
								고객센터(☎1599-6975)또는<br> 1:1로 문의 주시면 도움 드리겠습니다.&nbsp;
							</div></li>
						<li class="sf_type sf_type_6" style="display: none;"><a>[보험]본인인증정보
								불일치로 보험 가입이 불가합니다. </a>
							<div class="inner_box">
								물반고기반 낚시여행보험의 경우 본인확인을 진행 후 가입이 가능합니다.<br> <br> 이미
								본인인증이 완료된 계정에서 다른이의 인증정보로 보험가입을 진행할 경우, 본인확인이 어려워 보험가입이 불가합니다.<br>
								해당 계정에서 본인인증을 새로 발급받으시려면 고객센터를 통해 문의해주시길 바랍니다.
							</div></li>
						<li class="sf_type sf_type_7" style="display: none;"><a>[기능]핸드폰
								번호가 바뀌었는데 연락처 수정은 어떻게 하나요?</a>
							<div class="inner_box">
								연락처 수정을 원하실 경우에는 물반고기반 고객센터로 변경 요청을 하셔야 변경이 가능합니다.<br> *
								핸드폰 번호 최초 입력 시 에는 더보기 &gt; 프로필관리 &gt; 핸드폰번호를 통해 본인인증 후 등록이
								가능합니다.
							</div></li>
					</ol>
				</div>
			</div>
			<!--// 고객센터 -->
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
    // 질문 유형별 변경
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