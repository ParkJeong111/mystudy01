<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	color: #333333;
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
	color: #333333;
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
	color: #333333;
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
	color: #333333;
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
	color: #333333;
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
	color: #333333;
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

/* .select2-container--default .select2-search--dropdown .select2-search__field */
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
	border-bottom: 1px solid #e6e6e6;
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
	color: #333333;
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

/* <!------ 스타일 별점 추가 (재민) ------> */
a {
	text-decoration: none;
	color: red;
}
/*별점*/
.star{
  display:inline-block;
  width: 30px; height: 30px;
  cursor: pointer;
}
.star_click{
  background: url('${pageContext.request.contextPath}/resources/images/icon/star0.png') no-repeat; 
  background-size: 30px; 
  margin-left: -2px;
}
.star.on, .star_print.on{
  background-image: url('${pageContext.request.contextPath}/resources/images/icon/star1.png');
  
}
.star_print{
	display:inline-block;
  	width: 30px; height: 30px;
}

</style>
<!-- 사진 미리보기 스타일 (재민) -->
<style>
.img_wrap{
	width: 300px;
	margin-top: 50px;
}
.img_wrap img{
	max-width: 100%
}
</style>

<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_5.jpg');">
	<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
</div>
<section class="ftco-section" style="background: white; margin-top: 0px; padding-top: 0px; ">
	<div class="service_area container" >
		<div class="service_tab" style="text-align: center;margin: auto; padding: auto; font-family: Do Hyeon; font-size: 35px;" >
			<ol class="clearfix" style="text-align: center;">
				<li class="active"><a href="my_board"><b><strong style="font-size: 35px;">게시글작성</strong></b></a></li>
				<li><a href="itemsboard"><b><strong style="font-size: 35px;">중고 게시글작성</strong></b></a></li>
				<li><a href="matchboardview"><b><strong style="font-size: 35px;">매칭글 작성</strong></b></a></li>
			</ol>
		</div>

		<section class="ftco-section ftco-degree-bg" style="background: white;">
			<div class="container">
			<form method="post" action="my_board" enctype="multipart/form-data" style="margin-top: -60px; font-family:  Noto Sans KR; font-size: 22px;">	
				<div class="row">
					<div class="col-lg-9">
						<div class="row">
							<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
								<div class="fields">
									<div class="row" style="width: 900px;">
										<div class="col-md-6" style="float: left; align-content: center;">
											<div class="form-group">
												<div class="select-wrap one-third">
													<div class="icon">
														<span class="ion-ios-arrow-down"></span>
													</div>
													<%-- 아이디 세션 체크 --%>
													<input type="hidden" name="mid" value="${sessionScope.mid }"/>
													
													<select name="btype1" id="tm" class="form-control"
														placeholder="유저조행기" style="border-radius: 7px;font-size: 22px;">
														<option value="0">유저조행기</option>
														<option value="1" id="c1">유용한정보</option>
														<option value="2" id="c2">낚시지식인</option>
														<option value="3" id="c3">자유게시판</option>
													</select>
												</div>
											</div>
											
										</div>
										<div class="col-md-6" style="float: right;">
											<div class="form-group">
												<div class="select-wrap one-third">
													<div class="icon" id="dwnarrow">
														<span class="ion-ios-arrow-down"></span>
													</div>
													<select name="btype2" id="tm2" class="form-control"
														placeholder="카테고리를선택해주세요" style="border-radius: 7px;font-size: 22px;">
														<option value="0">선택해주세요</option>
														<option value="1">바다조행기</option>
														<option value="2">민물조행기</option>
													</select>
												</div>
											</div>
										</div>
										<!-- 이미지 업로드 -->						
										<div class="col-md-6" style="float: left;" >
												<div class="form-group" >
													<input multiple="multiple" type="file" id="bfile" name="bfile" value="이미지"
														class="form-control" placeholder="사진을 등록해주세요."
														style="border-radius: 7px;font-size: 20px;">
														<%-- 사진 올린거 바로 미리 보여주기 --%>
<!-- 													<div> -->
														<div class="img_wrap">
														<img id="img" />
														</div>
<!-- 													</div> -->
													<%--사진 올린거 바로 미리 보여주기  끝 그리고 밑에 Script 있음.--%>
												</div>
											</div>
										
									<!-- 	가맹점 불러오는곳 -->
									<div class="col-md-6">
											<div class="form-group">
												<div class="select-wrap one-third" id="hostlist_div" hidden="true">
													<div class="icon" id="hostdwnarrow">
														<span class="ion-ios-arrow-down"></span>
													</div>
													<select id="hn" name="hname" class="form-control" placeholder="가맹점 이름" style="border-radius: 7px;font-size: 22px;">
													</select>
											</div>
										</div>
									</div>
										
										<!-- 제목 -->
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" class="form-control" id="btitle" name="btitle"
													placeholder="제목을 입력해 주세요(30자 이하)" required style="font-size: 22px;" >	
											</div>
										</div>
										<!-- 별점 평점  -->
										<c:forEach var="e" items="${bstar }"></c:forEach>	
										<div class="col-md-6 star-rating" style="float: left;" id="tm3">
														<div style=" float: left;"><a style="margin-top: -20px;">별점</a> </div>  <!-- 등록하는거 -->
														<div class="star-box" id="star-box" style="float: right; margin-right: 40%">
															<a class="star star_click" href="#0"></a>
															<a class="star star_click" href="#1"></a>
															<a class="star star_click" href="#2"></a>
															<a class="star star_click" href="#3"></a>
															<a class="star star_click" href="#4"></a>
															<input type="hidden" value="0" name="bstar" id="bstr">
														</div>
										</div>
										<!-- 별점 값을 등록하는거 -->
													<script>
															var bstar = "<c:out value="${e.bstar}"/>";
															var bnum = "<c:out value="${e.bnum}"/>";
															var j = 0;
															for (var i = 1; i <= bstar; i += 1) {
																$('#star-box'+bnum+' span').eq(j).addClass("icon-star-o");
																j++;
															}
														
															$("#star-box a").on('click', function() {
																var idx = $(this).index();
																
																$(".star").removeClass("on");
																 
																for (var i = 0; i <= idx; i++) {
																	$(".star").eq(i).addClass("on");
																}
																
																if ($(this).attr("href") === "#0") {
																	bstar = 1 * 1;
																} else if ($(this).attr("href") === "#1") {
																	bstar = 2 * 1;
																} else if ($(this).attr("href") === "#2") {
																	bstar = 3 * 1;
																} else if ($(this).attr("href") === "#3") {
																	bstar = 4 * 1;
																} else if ($(this).attr("href") === "#4") {
																	bstar = 5 * 1;
																} else{
																}
																
																$("#bstr").attr("value", bstar);
																 console.log("별점" + bstar);
															});
													</script>
										<!-- 별점, 가맹점 끝 -->
										&nbsp;<br>
										<div class="col-md-6">
											<div class="form-group">
												<textarea style="width: 870px; height: 500px;" name="bcontent" id="bcontent"
													placeholder="내용을 입력해주세요."></textarea>
										</div>
										</div>
										<!-- 취소, 올리기, 목록 버튼 -->
										<div>
											<div class="form-group"
												style="font-size:22px; margin-top: 20px; margin-left: 270px; float: left;">  <!-- style="margin-top: 50px; margin-left: 250px;       margin-top: 520px; margin-left: 205px;-->
												<input type="reset" value="취소" id="cancelBtn" onclick = "jacvascript:goListBtn()"
													style="width: 113px; height: 40px; background-color: #666666; color: white; font-size: 22px; border-radius: 7px; outline: none; border: 0; cursor: pointer;">
												<input type="submit" value="올리기" id="uploadBtn"
													style="width: 113px; height: 40px; background-color: #F85959; color: white; font-size: 22px; border-radius: 7px; outline: none; border: 0; cursor: pointer;">
												<input type="button" onclick="jacvascript:goListBtn()" value="목록" 
													style="width: 113px; height: 40px; background-color: #F85959; color: white; font-size: 22px; border-radius: 7px; outline: none; border: 0; cursor: pointer;">
											</div>
										</div>
									</div>
								<!-- fields ends here -->
							</div>
						</div>
					</div>
					<!-- .col-md-8 -->
				</div>
				</form>
			</div>
		</section>
	</div>
</section>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

<script>
//목록으로 이동
function goListBtn(){
	location="talklist?check=1";
}
	
	<%-- 게시글 작성 type1 & type2 (재민)--%>
	$(function() {
		
		<%-- 사진 올린거 바로 미리 보여주기 스크립트 --%>
		$(document).ready(function(){
			$("#bfile").on("change", handleImgFileSelect);
		});
		
		function handleImgFileSelect(e){
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f){
				if(!f.type.match("image.*")){
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}
				sel_file = f;
				var reader = new FileReader();
				reader.onload = function(e){
					$("#img").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		}
		<%-- 사진 올린거 바로 미리 보여주기 스크립트 끝 --%>
		
		$('#tm').change(
				function(){
					 if($('#tm').val() == 0){
						$("#tm2").prop("hidden", false);
						$("#dwnarrow").prop("hidden", false);
						$('#hostlist_div').prop("hidden", true);
						$("#tm3").prop("hidden", false);
// 						$("#tm2").find("option").remove().end().append("<option value=\"0\">::선택::</option>").val();
						// $("#tm2").val('');
						$('#tm2').find('option:first').prop('selected', 'selected');

					}else if($("#tm").val() == 1){
						$("#tm2").prop("hidden", true);
						$("#dwnarrow").prop("hidden", true);
						$('#hostlist_div').prop("hidden", true);
						$('#tm').prop("유용한정보");
						$("#tm3").prop("hidden", true);
						
					}else if($("#tm").val() == 2){
						$("#tm2").prop("hidden", true);
						$("#dwnarrow").prop("hidden", true);
						$('#hostlist_div').prop("hidden", true);
						$('#tm').prop("낚시지식인");
						$("#tm3").prop("hidden", true);
						
					}else if($("#tm").val() == 3){
						$("#tm2").prop("hidden", true);
						$("#dwnarrow").prop("hidden", true);
						$('#hostlist_div').prop("hidden", true);
						$('#tm').prop("자유게시판");
// 						console.log("찍히나??? " + $('#tm').val());
						$("#tm3").prop("hidden", true);
					}  
			});
		
		// 유저조행기 -> 바다/민물 -> host가게명 가져오는 부분
		$('#tm2').change(
				function(){
					//var selectnum = $('#tm2 option:selected').val()
					 if($("#tm2").val() == 0){
						 $('#hostlist_div').prop('hidden', true);
					 } else if($("#tm2").val() == 1 || $("#tm2").val() == 2) {
						 $('#hostlist_div').prop('hidden', false);
						 $.ajax({
							 type: "POST",
								url : "btype2select",
								data : {btypeValue : $("#tm2").val()},
								datatype : 'json',
								success : function(data){
									// console.log(data[0]);
									$("#hn").html('');
									for(var i in data) {
										// console.log(data[i]);
										$("#hn").append('<option value="'+ data[i] + '">' + data[i] + '</option>');
									}
								}
							});
					 }
				}); 

	});
</script>
</body>
</html>