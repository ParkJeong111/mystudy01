<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<style>
li {
	list-style: none;
}

img {
	vertical-align: middle;
	max-width: 100%;
}

.header_area {
	background: #fff;
	width: 100%;
	top: 0;
	left: 0;
	z-index: 990
}

.search_header_area {
	position: fixed;
	background: #fff;
	width: 100%;
	top: 0;
	left: 0;
	z-index: 990
}

.mypage_header_area .header_title h1 a.home_btn {
	display: none
}

.mypage_header_area .header_title .h_tit a.home_btn {
	display: none
}

header {
	border-bottom: 1px solid #e6e6e6;
	background: #fff;
}

header a.header_logo {
	float: left;
	padding: 15.5px 0;
	width: 124px
}

header a.header_logo2 {
	display: none
}

header .header_menu {
	float: right;
}

header .header_menu a {
	float: left;
	margin-left: 25px;
	display: block
}

header .header_menu a.menu_search_btn {
	padding: 18px 0;
	margin-left: 0;
	width: 20px
}

header .header_menu .search_header_box {
	float: left;
	border: 1px solid #e84418;
	border-radius: 0.3rem;
	padding: 6px 8px;
	width: 230px;
	margin: 12px 0;
	font-size: 0
}

header .header_menu .search_header_box input {
	border: none;
	font-size: 13px;
	letter-spacing: -0.7px;
	vertical-align: top;
	width: calc(100% - 20px);
	outline: none
}

header .header_menu .search_header_box a {
	float: right;
	margin-left: 0;
}

header .header_menu .search_header_box img {
	width: 19px
}

header .header_menu a.menu_txt {
	padding: 19px 0 22px
}

header .header_menu a.menu_btn {
	padding: 16px 0 20px 0;
	width: 25px
}

header .location_setting {
	font-size: 14px;
	color: #848484;
	letter-spacing: -0.6px;
	float: left;
	padding: 21px 30px 21px 0;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_setting_ico_01.png')
		top 17px right no-repeat;
	background-size: 23px auto;
	margin-left: 10px
}

.header_title {
	border-bottom: 1px solid #e6e6e6;
	background: #fff;
}

.header_title h1 {
	font-size: 22px;
	color: #333333;
	font-weight: 500;
	text-align: center;
	padding: 10px 0;
	margin: 0 auto
}

.header_title h1 .coupon_btn {
	font-size: 15px;
	border: 1px solid #333333;
	border-radius: 3em;
	padding: 4px 8px;
	position: absolute;
	top: 14px;
	right: 0
}

.header_title .h_tit {
	font-size: 35px;
	color: #333333;
	font-weight: bold;
	text-align: center;
	padding: 10px 0;
	margin: 0 auto
}

.header_title .h_tit .coupon_btn {
	font-size: 15px;
	border: 1px solid #333333;
	border-radius: 3em;
	padding: 4px 8px;
	position: absolute;
	top: 14px;
	right: 0
}

.header_title .filter_drop {
	display: none;
}

.header_title .title_reserve_line {
	display: none
}

.header_detail {
	position: fixed;
	top: 58px;
	background: #fbfbfb;
	z-index: 1;
	width: 100%;
	padding: 10px 0;
	display: none
}

.header_detail.on {
	display: block;
}

.header_detail h1.wrap_title {
	display: none
}

.header_detail .wrap_title {
	display: none
}

.header_detail .detail_title p {
	font-size: 16px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	width: calc(100% - 120px);
	font-weight: normal;
	position: relative;
}

.header_detail .detail_title p.wide {
	width: 100%
}

.header_detail .detail_title p.wide.jgo {
	width: calc(100% - 130px)
}

.header_detail .detail_title a {
	border: 1px solid #c0c0c0;
	width: 56px;
	height: 25px;
	line-height: 23px;
	text-align: center;
	display: block;
	float: right;
	border-radius: 3rem;
	font-size: 13px;
	color: #aaaaaa;
	letter-spacing: -0.5px;
	font-weight: normal;
	position: absolute;
	top: 0;
	right: 0
}

.header_detail .detail_title a.btn_talk_edit {
	right: 60px;
	position: absolute
}

.header_detail .detail_title a.btn_talk_del {
	right: 0;
	position: absolute
}

.header_detail .detail_title a.btn_talk_scrap {
	width: 80px
}

.header_detail .header_menu a.menu_btn {
	display: none
}

.header_title.title_none {
	display: none
}

section {
	width: 964px;
	position: relative;
	margin: 0 auto;
}

.block-20 {
	width: 680px;
}

.clearfix {
	margin-top : 10px;
	display: block;
	content: '';
	clear: both
}

.clearfix:after {
	display: block;
	content: '';
	clear: both
}

.talk_header {
	border-bottom: 1px solid #e6e6e6;
}

.talk_header .talk_tab li {
	float: left;
	width: 19.1111%;
	position: relative;
	top: 1px;
}

.talk_header .talk_tab li a {
	display: block;
	font-size: 19px;
	letter-spacing: -0.6px;
	text-align: center;
	height: 44px;
	line-height: 42px;
	color: black;
}

.talk_header .talk_tab li a i {
	padding: 0 5px 0 4px;
	height: 19px;
	line-height: 17px;
	background: #e84418;
	display: inline-block;
	margin-right: 4px;
	color: #fff;
	font-size: 13px;
	letter-spacing: -0.5px;
	border-radius: 0.3rem;
	text-align: center;
	position: relative;
	top: -2px;
}

.selected {
	color: #e84418;
	border-bottom: 1px solid #e84418
}

.talk_header .talk_cate_tab {
	border-top: 1px solid #e6e6e6
}

.talk_header .talk_cate_tab .tab_cnt1 li {
	width: 100%;
}

.talk_header .talk_cate_tab .tab_cnt2 li {
	width: 50%;
}

.talk_header .talk_cate_tab .tab_cnt3 li {
	width: 33.3333%;
}

.talk_header .talk_cate_tab .tab_cnt4 li {
	width: 25%;
}

.talk_header .talk_cate_tab .tab_cnt5 li {
	width: 20%;
}

.talk_header .talk_cate_tab .tab_cnt6 li {
	width: 16.6666%;
}

.talk_header .talk_cate_tab .tab_cnt7 li {
	width: 14.2857%;
}

.talk_header .talk_cate_tab .tab_cnt8 li {
	width: 12.5%;
}

.talk_header .talk_cate_tab .tab_cnt9 li {
	width: 11.1111%;
}

.talk_header .talk_cate_tab .tab_cnt10 li {
	width: 10%;
}

.talk_header .talk_cate_tab li {
	float: left;
}

.talk_header .talk_cate_tab li a {
	display: block;
	height: 44px;
	line-height: 42px;
	position: relative;
	text-align: center;
	font-size: 16px;
	color: #808080;
	letter-spacing: -0.6px;
}

.talk_header .talk_cate_tab li.active a {
	color: #606060;
	font-weight: 500
}

.talk_header .talk_cate_tab li.active a:after {
	width: 6px;
	height: 6px;
	border-radius: 100%;
	display: inline-block;
	content: '';
	background: #e84418;
	left: 9px;
	top: -13px;
	position: relative;
}

.talk_header.talk_manage .talk_tab li {
	width: 25%
}

.talk_area.container {
	position: relative;
	padding-bottom: 135px;
}

.talk_area.container.talk_top {
	padding-top: 157px !important
}

.talk_area .talk_banner_area {
	position: fixed;
	left: 50%;
	margin-left: -482px;
	width: 964px;
	z-index: 1;
	top: 0
}

.talk_area .talk_banner_area section {
	position: absolute;
	left: -169px;
	width: 141px;
	margin: 0;
	top: 250px
}

.talk_area .talk_banner_area section.add_banner {
	top: 550px
}

.talk_area.talk_top .talk_banner_area section {
	top: 207px;
}

.talk_area.talk_top .talk_banner_area section.add_banner {
	top: 507px
}

.talk_area .contents_list {
	width: 610px;
	float: left;
	position: relative;
	padding-top: 45px;
}

.talk_area .contents_list .talk_notice {
	border: 1px solid #e6e6e6;
	background: #fff;
	border-radius: 0.3rem;
	padding: 10px 15px 15px;
	margin-bottom: 5px;
}

.talk_area .contents_list .talk_notice span {
	font-size: 15px;
	color: #333333;
	font-weight: 500;
	letter-spacing: -0.6px;
	float: left;
	display: block;
	position: relative;
	top: 2px;
}

.talk_area .contents_list .talk_notice span:after {
	width: 5px;
	height: 9px;
	margin: 0 10px 0 5px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_02.png')
		no-repeat;
	background-size: 100% auto;
	content: '';
	display: inline-block;
}

.talk_area .contents_list .talk_notice .vTicker {
	float: left;
	width: calc(100% - 50px);
}

.talk_area .contents_list .talk_notice .vTicker a {
	font-size: 14px;
	color: #606060;
	letter-spacing: -0.5px;
}

.talk_area .contents_list .talk_notice .vTicker {
	height: 22px !important;
}

.talk_area .contents_list .talk_notice .vTicker li {
	height: 22px !important;
}

.talk_area .contents_list .live_hot {
	background: #fff;
	border: 1px solid #e6e6e6;
	padding: 15px;
	position: relative;
	border-radius: 0.3rem;
}

.talk_area .contents_list .live_hot .hot_title {
	margin-right: 10px;
	float: left;
	border: 1px solid #dadada;
	border-radius: 0.3rem;
	width: 125px;
	height: 30px;
	line-height: 28px;
	font-size: 16px;
	font-weight: 500;
	text-align: center;
}

.talk_area .contents_list .live_hot .hot_title span {
	color: #e84418
}

.talk_area .contents_list .live_hot .hot_list {
	float: left;
	width: calc(100% - 135px);
	overflow: hidden;
	margin-top: 3px;
}

.talk_area .contents_list .live_hot .hot_list .vTicker {
	height: 27px !important
}

.talk_area .contents_list .live_hot .hot_list .vTicker li {
	height: 27px !important
}

.talk_area .contents_list .live_hot .hot_list .vTicker li span {
	color: #e84418
}

.talk_area .talk_list .talk_box_area {
	background: #fff;
	border: 1px solid #e6e6e6;
	border-radius: 0.3rem;
}

.talk_area .talk_list .talk_box_area .profile_line {
	padding: 15px 20px;
	width: 100%;
	display: table
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img {
	display: table-cell;
	vertical-align: middle;
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p {
	width: 42px;
	height: 42px;
	border-radius: 100%;
	background: #d8d8d8;
	border: 1px solid #f8f8f8;
	overflow: hidden;
	position: relative
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p:before
	{
	width: 100%;
	height: 17px;
	position: absolute;
	bottom: 0;
	left: 0;
	display: block;
	color: #fff;
	font-size: 9px;
	text-align: center;
	z-index: 1
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv0:before
	{
	content: 'lv.0';
	background: #dc967c
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv1:before
	{
	content: 'lv.1';
	background: #ec440b
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv2:before
	{
	content: 'lv.2';
	background: #ffba12
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv3:before
	{
	content: 'lv.3';
	background: #55b44d
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv4:before
	{
	content: 'lv.4';
	background: #4595ec
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv5:before
	{
	content: 'lv.5';
	background: #4c65d5
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv6:before
	{
	content: 'lv.6';
	background: #845bbd
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv7:before
	{
	content: 'lv.7';
	background: #bb4e4e
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv8:before
	{
	content: 'lv.8';
	background: linear-gradient(to right, #a8f5ff, #d6faff 28%, #40bcd3 77%, #218092);
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv9:before
	{
	content: 'lv.9';
	background: linear-gradient(to right, #ffbf16, #ffe4b2 33%, #f2ad4e 69%, #ffe151);
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv10:before
	{
	content: 'lv.10';
	background: linear-gradient(to right, #e06e6e, #fadb25 33%, #9eda51 68%, #486ce8);
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv99:before
	{
	content: 'M';
	background: linear-gradient(to bottom, #616161, #171717);
}

.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv98:before
	{
	background: linear-gradient(to bottom, #ffd848, #ff3600);
}

.talk_area .talk_list .talk_box_area .profile_line .profile_name {
	display: table-cell;
	vertical-align: middle;
	width: 100%;
	padding: 0 10px
}

.talk_area .talk_list .talk_box_area .profile_line .profile_name strong
	{
	font-size: 16px;
	font-weight: 500;
	letter-spacing: -0.6px;
	display: block
}

.talk_area .talk_list .talk_box_area .profile_line .profile_name p {
	font-size: 14px;
	color: #878787;
	letter-spacing: -0.6px;
}

.talk_area .talk_list .talk_box_area .profile_line .profile_name p img {
	width: 8px;
	margin-right: 4px;
	margin-top: -2px;
}

.talk_area .talk_list .talk_box_area .profile_line .profile_date {
	display: table-cell;
	vertical-align: middle;
	position: relative;
}

.talk_area .talk_list .talk_box_area .profile_line .profile_date p {
	width: 135px;
	text-align: right;
	font-size: 14px;
	color: #878787;
	letter-spacing: -0.6px
}

.talk_area .talk_list .talk_box_area .profile_line .profile_date p.up:before
	{
	position: relative;
	top: -1px;
	margin-right: 4px;
	font-size: 11px;
	color: #878787;
	text-align: center;
	display: inline-block;
	width: 26px;
	height: 14px;
	line-height: 12px;
	border-radius: 3rem;
	border: 1px solid #e6e6e6;
	content: 'UP'
}

.talk_area .talk_list .talk_box_area .talk_view_btn {
	display: block;
}

.talk_area .talk_list .talk_box_area .talk_pic {
	padding: 0 15px 10px;
	font-size: 0
}

.talk_area .talk_list .talk_box_area .talk_pic span {
	height: 28px;
	line-height: 26px;
	font-size: 15px;
	padding: 0 8px;
	letter-spacing: -0.6px;
	border-radius: 0.3rem;
	display: inline-block;
	margin-left: 8px;
}

.talk_area .talk_list .talk_box_area .talk_pic span:first-child {
	margin-left: 0
}

.talk_area .talk_list .talk_box_area .talk_pic span.live {
	background: #e84418;
	color: #fff
}

.talk_area .talk_list .talk_box_area .talk_pic span.manage {
	border: 1px solid #e84418;
	color: #e84418
}

.talk_area .talk_list .talk_box_area .talk_pic span.kind {
	border: 1px solid #dadada;
	color: #2663e2
}

.talk_area .talk_list .talk_box_area .talk_text {
	padding: 0 20px 15px;
	display: block
}

.talk_area .talk_list .talk_box_area .talk_text strong {
	display: block;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: -0.7px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	line-height: 1;
	height: 21px;
}

.talk_area .talk_list .talk_box_area .talk_text p {
	font-size: 15px;
	color: #454545;
	letter-spacing: -0.6px;
	line-height: 1.3;
	margin-top: 10px
}

.talk_area .talk_list .talk_box_area .talk_text p.more:after {
	color: #c0c0c0;
}

.talk_area .talk_list .talk_box_area .talk_visual {
	position: relative;
	width: 608px;
	height: 300px;
	overflow: hidden;
	background: #eee
		url('https://img.moolban.com/unsafe/asset/common/img/low_404image.png')
		top 50% left no-repeat;
	background-size: 100% auto;
}

.talk_area .talk_list .talk_box_area .talk_visual img {
	width: 100%;
}

.talk_area .talk_list .talk_box_area .talk_visual em {
	font-size: 15px;
	color: #fff;
	letter-spacing: -0.6px;
	display: block;
	position: absolute;
	top: 0;
	right: 0;
	height: 22px;
	line-height: 20px;
	background: rgba(0, 0, 0, 0.7);
	padding: 0 5px;
}

.talk_area .talk_list .talk_box_area .talk_visual i {
	width: 30px;
	position: absolute;
	top: 20px;
	left: 20px;
}

.talk_area .talk_list .talk_box_area .talk_visual_more {
	position: absolute;
	bottom: 45px;
	left: 50%;
	margin-left: -49px;
	text-align: center;
	border: 1px solid #ffffff;
	background: rgba(0, 0, 0, 0.22);
	border-radius: 3rem;
	width: 98px;
	height: 32px;
	line-height: 30px;
	font-size: 15px;
	color: #ffffff;
}

.talk_area .talk_list .talk_box_area .swiper-caption {
	width: auto;
	padding: 0 9px;
	height: 26px;
	line-height: 24px;
	font-size: 14px;
	color: #fff;
	background: rgba(0, 0, 0, 0.7);
	position: absolute;
	top: 15px;
	bottom: auto;
	left: auto;
	right: 15px;
	text-align: center;
	z-index: 2;
	border-radius: 3rem;
	font-weight: 300
}

.talk_area .talk_list .talk_box_area .swiper-button-next, .talk_area .talk_list .talk_box_area .swiper-button-prev
	{
	width: 40px;
	height: 40px;
	border-radius: 100%;
	position: absolute;
	top: 50%;
}

.talk_area .talk_list .talk_box_area .swiper-button-prev, .talk_area .talk_list .talk_box_area .swiper-container-rtl .swiper-button-next
	{
	background: rgba(0, 0, 0, 0.7)
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_slide_prev.png')
		left 12px top 50% no-repeat;
	background-size: 13px auto;
	left: 15px
}

.talk_area .talk_list .talk_box_area .swiper-button-next, .talk_area .talk_list .talk_box_area .swiper-container-rtl .swiper-button-prev
	{
	background: rgba(0, 0, 0, 0.7)
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_slide_next.png')
		left 16px top 50% no-repeat;
	background-size: 13px auto;
	right: 15px;
	left: auto
}

.talk_area .talk_list .talk_box_area .swiper-button-next.swiper-button-disabled,
	.talk_area .talk_list .talk_box_area .swiper-button-prev.swiper-button-disabled
	{
	pointer-events: visible
}

.talk_area .talk_list .talk_box_area .swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	background: rgba(255, 255, 255, 0.3);
	opacity: 1
}

.talk_area .talk_list .talk_box_area .swiper-pagination-bullet-active {
	background: #fff
}

.talk_area .talk_list .talk_box_area .talk_count_btn {
	padding: 0 20px
}

.talk_area .talk_list .talk_box_area .talk_count {
	padding: 15px 0;
	border-bottom: 1px solid #ebebeb
}

.talk_area .talk_list .talk_box_area .talk_count p {
	font-size: 15px;
	color: #454545;
	font-weight: 500;
	letter-spacing: -0.6px;
	float: left
}

.talk_area .talk_list .talk_box_area .talk_count span {
	color: #878787;
	font-weight: normal;
}

.talk_area .talk_list .talk_box_area .talk_count .comm_mark_line {
	float: right
}

.talk_area .talk_list .talk_box_area .talk_count .comm_mark_line p {
	margin-left: 20px;
}

.talk_area .talk_list .talk_box_area .talk_btn a {
	font-size: 15px;
	color: #606060;
	letter-spacing: -0.6px;
	text-align: center;
	width: 100%;
	display: block;
	float: left;
	padding: 10px 0 15px 30px;
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_money_btn {
	
	font-size: 18px;
	color: #000000;
	letter-spacing: -0.6px;
	text-align: center;
	width: 50%;
	display: block;
	float: left;
	padding: 10px 0 15px 30px;
    font-weight: 500;
}


.talk_area .talk_list .talk_box_area .talk_btn .talk_like_btn:before {
	width: 27px;
	height: 20px;
	display: inline-block;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_like_off.png')
		no-repeat;
	background-size: auto 20px;
	content: '';
	position: relative;
	top: 3px;
	margin-right: 10px;
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_like_btn.on:before
	{
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_like_on.png')
		no-repeat;
	background-size: auto 20px;
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_comm_btn:before {
	width: 21px;
	height: 20px;
	display: inline-block;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_comment.png')
		no-repeat;
	background-size: auto 20px;
	content: '';
	position: relative;
	top: 4px;
	margin-right: 10px;
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_mark_btn:before {
	width: 17px;
	height: 20px;
	display: inline-block;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_mark_off.png')
		no-repeat;
	background-size: auto 20px;
	content: '';
	position: relative;
	top: 4px;
	margin-right: 10px;
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_mark_btn.on:before
	{
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_mark_on.png')
		no-repeat;
	background-size: auto 20px;
}

.talk_area .contents_pic {
	float: right;
	width: 324px;
	padding-top: 45px
}

.talk_area .contents_pic .pic_title {
	font-size: 16px;
	font-weight: 500;
}

.talk_area .talk_best {
	margin-bottom: 20px
}

.talk_area .talk_best a:after {
	display: block;
	content: '';
	clear: both
}

.talk_area .talk_best a {
	display: block;
	background: #fff;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.1);
	padding: 15px;
	position: relative;
	margin-top: 10px;
	border-radius: 0.3rem
}

.talk_area .talk_best a img {
	width: 120px;
	height: 103px;
	display: block;
	float: left
}

.talk_area .talk_best a .best_text {
	padding-left: 15px;
	width: calc(100% - 120px);
	float: left;
}

.talk_area .talk_best a strong {
	font-size: 15px;
	color: #454545;
	letter-spacing: -0.8px;
	font-weight: normal
}

.talk_area .talk_best a p {
	margin-top: 10px;
	font-size: 16px;
	font-weight: 500;
	letter-spacing: -0.8px;
	line-height: 1.4;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	height: 42px
}

.talk_area .talk_best a span {
	width: 159px;
	display: block;
	position: absolute;
	bottom: 15px;
	font-size: 14px;
	color: #2663e2;
	letter-spacing: -0.6px
}

.talk_area .talk_best a span i {
	float: right;
	color: #878787;
}

.talk_area .talk_recom {
	margin-bottom: 20px
}

.talk_area .talk_recom a:after {
	display: block;
	content: '';
	clear: both
}

.talk_area .talk_recom a {
	display: block;
	background: #fff;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.1);
	padding: 15px;
	position: relative;
	margin-top: 10px;
	border-radius: 0.3rem
}

.talk_area .talk_recom a img {
	width: 120px;
	height: 103px;
	display: block;
	float: left
}

.talk_area .talk_recom a .recom_text {
	padding-left: 15px;
	width: calc(100% - 120px);
	float: left;
}

.talk_area .talk_recom a em {
	display: block;
	color: #2663e2;
	letter-spacing: -0.8px;
	font-size: 15px;
	margin-bottom: 10px
}

.talk_area .talk_recom a strong {
	font-size: 15px;
	color: #454545;
	letter-spacing: -0.8px;
	font-weight: normal;
	line-height: 1.4
}

.talk_area .talk_recom a span {
	width: 159px;
	display: block;
	position: absolute;
	bottom: 15px;
	font-size: 14px;
	color: #b5b5b5;
	letter-spacing: -0.6px
}

.talk_area .talk_recom a span i {
	float: right;
	color: #454545;
	font-size: 16px
}

.talk_area .talk_plan {
	margin-bottom: 20px
}

.talk_area .talk_plan a:first-child {
	margin-top: 10px
}

.talk_area .talk_plan a {
	display: block;
	margin-top: 15px;
	border-radius: 0.3rem;
	overflow: hidden;
}

.talk_area .talk_filter {
	position: fixed;
	width: 964px;
	left: 50%;
	margin-left: -482px;
	bottom: 0;
	z-index: 1
}

.talk_area .talk_filter section {
	width: 235px;
	position: absolute;
	left: 188px;
	bottom: 40px;
	background: #fff;
	border-radius: 3rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.1);
	padding: 5px 0
}

.talk_area .talk_filter a {
	width: 50%;
	float: left;
	text-align: center;
	font-size: 16px;
	color: #6c6c6c;
	height: 44px;
	line-height: 42px;
	padding-left: 15px;
	position: relative;
}

.talk_area .talk_filter a.active {
	color: #e84418
}

.talk_area .talk_filter a.active:after {
	width: 6px;
	height: 6px;
	content: '';
	background: #e84418;
	border-radius: 100%;
	display: block;
	position: absolute;
	top: 10px;
	right: 28px
}

.talk_area .talk_filter .talk_filter01 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt01_off.png')
		top 13px left 25px no-repeat;
	background-size: auto 20px;
	border-right: 1px solid #e6e6e6
}

.talk_area .talk_filter .talk_filter01.active {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt01_on.png')
		top 13px left 25px no-repeat;
	background-size: auto 20px;
}

.talk_area .talk_filter .talk_filter02 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt02_off.png')
		top 13px left 23px no-repeat;
	background-size: auto 20px;
}

.talk_area .talk_filter .talk_filter02.active {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt02_on.png')
		top 13px left 23px no-repeat;
	background-size: auto 20px;
}

.talk_area .talk_filter .talk_write_btn {
	width: 85px;
	height: 85px;
	display: block;
	position: absolute;
	bottom: 0;
	right: -185px;
	line-height: normal;
	padding: 0;
	float: none
}

.talk_area .talk_filter2 {
	position: fixed;
	width: 964px;
	left: 50%;
	margin-left: -482px;
	bottom: 0;
	z-index: 1
}

.talk_area .talk_filter2 section {
	width: 235px;
	position: absolute;
	left: 188px;
	bottom: 40px;
}

.talk_area .talk_filter2 .talk_write_btn {
	width: 85px;
	height: 85px;
	display: block;
	position: absolute;
	bottom: 0;
	right: -185px;
}

.talk_area .talk_filter3 {
	position: fixed;
	width: 964px;
	left: 50%;
	margin-left: -482px;
	bottom: 0;
	z-index: 1
}

.talk_area .talk_filter3 section {
	width: 235px;
	position: absolute;
	left: 188px;
	bottom: 40px;
	background: #fff;
	border-radius: 3rem;
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.1);
	padding: 5px 0
}

.talk_area .talk_filter3 a {
	width: 50%;
	float: left;
	text-align: center;
	font-size: 16px;
	color: #6c6c6c;
	height: 44px;
	line-height: 42px;
	padding-left: 15px;
	position: relative;
}

.talk_area .talk_filter3 .talk_write_btn {
	width: 85px;
	height: 85px;
	display: block;
	position: absolute;
	bottom: 0;
	right: -185px;
	line-height: normal;
	padding: 0;
	float: none
}

.talk_area .talk_filter3 .talk_filter03 {
	width: 100%;
	color: #ff724c;
	font-weight: 500;
	float: none;
	display: block;
	text-align: center;
	padding: 0;
	font-size: 18px;
}

.talk_area .talk_filter3 .talk_filter03.active:after {
	content: '';
	width: 6px;
	height: 6px;
	background: #e84418;
	border-radius: 100%;
	display: block;
	position: absolute;
	top: 5px;
	right: 22px
}

.talk_area .talk_list .talk_count_box {
	font-size: 16px;
	color: #747474;
	letter-spacing: -0.2px;
	margin-top: 30px;
}

.talk_area .talk_list .talk_count_box strong {
	font-weight: 500;
	color: #000
}

.talk_area .talk_list .talk_box_area .talk_count .deal_line {
	color: #878787;
	font-weight: normal;
	letter-spacing: -0.7px;
}

.talk_area .talk_list .talk_box_area .talk_count .deal_line strong {
	font-weight: 500;
	color: #454545;
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_pay {
	padding: 15px 0;
	color: #000000;
	font-size: 16px;
	position: relative;
	font-weight: 500
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_pay.deal {
	padding: 8px 0
}

.talk_area .talk_list .talk_box_area .talk_btn .talk_pay.deal:before {
	font-size: 12px;
	color: #606060;
	display: block;
	margin-bottom: 3px;
	font-weight: normal;
}

.talk_area .talk_list .talk_box_area .talk_pic .sold {
	background: #cccccc;
	color: #fff
}

.talk_area .talk_list .talk_box_area .talk_pic .jgo {
	border: 1px solid #ff724c;
	color: #ff724c
}

.talk_area .talk_list .talk_box_area .talk_pic .buy {
	border: 1px solid #dadada;
	color: #267b96
}

.talk_area .talk_list .talk_box_area .talk_pic .sell {
	border: 1px solid #dadada;
	color: #2663e2
}

.talk_area .talk_list .talk_box_area.jgo_sold .talk_text, .talk_area .talk_list .talk_box_area.jgo_sold .talk_btn .talk_pay
	{
	opacity: .3;
}

.talk_area .talk_list .talk_box_area.jgo_sold .talk_visual {
	opacity: .5
}

.talk_area .talk_list .talk_box_area.jgo_sold .talk_visual:after {
	font-size: 22px;
	color: #fff;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	z-index: 99;
	background: rgba(0, 0, 0, 0.3);
	height: 50px;
	line-height: 48px;
	text-align: center
}
</style>



<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_4.jpg');">
	<div class="overlay"></div>
	<div class="container" style="margin-top: -40%;"></div>
</div>

<div class="wrap_area">
	<div class="header_area" style="padding-top: 20px;">


		<!-- <div class="scrolling scroll_up">

							<div class="header_title">
					<section>
						<a class="title_reserve_line">예약검색</a>
						<p class="h_tit">
							반반톡													</p>
					</section>
				</div> -->






<!-- 기획전 팝업 -->
<div class="popup_opacity popup_plan" style="display: none;">
	<div class="popup_area">
		<a class="closein_btn"><img
			src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
			alt="팝업닫기"></a>
		<div class="popup_section"></div>
	</div>
</div>
<!--// 기획전 팝업 -->







<!-- 업체 사진 슬라이드 -->
<div class="gallery_opacity" style="display: none">
	<div class="gallery_area">
		<a class="wrap_close"><img
			src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_01.png"
			alt="팝업닫기"></a>
		<div class="swiper-container gallery-top">
			<div class="swiper-wrapper"></div>
		</div>

		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>

		<div class="clearfix title_paging">
			<div class="company_title"></div>
			<div class="swiper-pagination"></div>
		</div>

		<div class="swiper-container gallery-thumbs">
			<div class="swiper-wrapper"></div>
		</div>
	</div>
</div>
<!--// 업체 사진 슬라이드 -->

<!-- 업체 사진 슬라이드 -->
<div class="gallery_opacity22 talk_gallery" style="display: none">
	<div class="gallery_area">
		<a class="wrap_close"><img
			src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_01.png"
			alt="팝업닫기"></a>
		<div class="swiper-container gallery-top">
			<div class="swiper-wrapper"></div>
		</div>

		<!-- Add Arrows -->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>

		<div class="clearfix title_paging">
			<div class="company_title"></div>
			<div class="swiper-pagination"></div>
		</div>

		<div class="swiper-container gallery-thumbs">
			<div class="swiper-wrapper"></div>
		</div>
	</div>
</div>
<!--// 업체 사진 슬라이드 -->

<div class="header_area">

	<div class="scrolling scroll_up">
		<div class="header_title">
			<section>
				<a class="title_reserve_line" href="/reserve/live_search">예약검색</a>
				<p class="h_tit">반반톡</p>
			</section>
		</div>

		<!-- 반반톡 -->
		<div class="talk_header" style="display:">
			<div class="talk_tab_area">
				<section>
					<ul class="talk_tab clearfix">

						<li class="on"><a data-talk_key="1" data-tc_key="0"
							data-u_type="1" href='javasript:void(0);' onclick="boardAjax(1)">유저조행기</a></li>

						<li class="on"><a data-talk_key="11" data-tc_key="0"
							data-u_type="1" href='javascript:void(0);' onclick="boardAjax(2)">중고장터</a></li>

						<li class="on"><a data-talk_key="2" data-tc_key="0"
							data-u_type="1" href='javascript:void(0);' onclick="boardAjax(3)">유용한정보</a></li>
						<li class="on"><a data-talk_key="3" data-tc_key="0"
							data-u_type="1" href='javascript:void(0);' onclick="boardAjax(4)">낚시지식인</a></li>

						<li class="on"><a data-talk_key="5" data-tc_key="0"
							data-u_type="1" href='javascript:void(0);' onclick="boardAjax(5)">자유게시판</a></li>
					</ul>
				</section>
			</div>
			<!-- <div class="talk_cate_tab tab6" style="display: block">
					<section>
						<ul class="tab_cnt3">
							<li class="active"><a data-tc_key="0" data-talk_key="6">전체</a></li>
							<li class=""><a data-tc_key="1" data-talk_key="6">바다 조황</a></li>
							<li class=""><a data-tc_key="15" data-talk_key="6">민물 조황</a></li>
						</ul>
					</section>
				</div> -->
			<!--// talk_cate_tab -->

		</div>
	</div>

</div>

<div class="talk_area container bg_mp"
	style="width: 1120px; height: 18677px;">

	<section>
		<div class="contents_list">

			<div class="talk_list">

				<div id="talk_detail_list" data-start_key="0" data-offset="0"
					data-limit="30" data-last_offset="" data-is_work="">
					<!-- 	<for문 사용하기> -->
					<c:forEach var="e" items="${list}">
						<div class="talk_box_area" id="talk_visual135516">
							<div class="profile_line">
								<div class="profile_img">
									<p class="lv98">
										<img
											src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
											class="profile" alt="">

									</p>
								</div>
								<div class="profile_name">
									<strong>${e.mid}</strong>
									<p>
										<a href="/" class="header_logo "> <img
											src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
											alt="">${e.haddr}
										</a>
									</p>
								</div>
								<div class="profile_date">
									<p>${e.bdate}</p>
								</div>
							</div>
							<!-- profile_line -->


							<div class="talk_view_btn"
								OnClick="location.href ='talk_detail?bnum=${e.bnum}'"
								style="cursor: pointer;">

								<p class="talk_pic">
									<span class="manage">${e.btype1}</span>
								</p>
								<div class="talk_text">
									<strong>${e.btitle}</strong>
									<p class="more">${e.bcontent}</p>
								</div>
								<div class="img_box"
									style="width: 608px;">
								
										<img
											src="${pageContext.request.contextPath}/resources/images/${e.bimage}"
											alt="">
									
								</div>




							</div>

							<div class="talk_count_btn">
								<div class="talk_count clearfix">
							
									<div class="comm_mark_line">
										<p class="comm_line">
											댓글 <span>0</span>
										</p>
					
									</div>
								</div>
								<div class="talk_btn clearfix">
									

									<a class="talk_comm_btn" href="talk_detail?bnum=${e.bnum}#comment_box">댓글쓰기</a> 

								</div>
							</div>
						</div>
					</c:forEach>
					<!--// talk_box_area -->






				</div>
			</div>
		</div>
		<!--// contents_list -->

		<!-- 조황 리스트 -->
		<div class="contents_pic">
			<div class="talk_plan">
				<p class="pic_title">기획전</p>

				<a href="/home/plan_view?seq_key=90" data-key="90"><img
					src="https://img.moolban.com/unsafe/${pageContext.request.contextPath}/resources/images/promotion/356c558f3c542a8987612238af43f1ec.jpg?rand=1577763884"
					alt=""></a> <a href="/home/plan_view?seq_key=98" data-key="98"><img
					src="https://img.moolban.com/unsafe/${pageContext.request.contextPath}/resources/images/promotion/a0177c8f1e15fd2a4356efab01b35ee1.jpg?rand=1577763884"
					alt=""></a> <a href="/home/plan_view?seq_key=96" data-key="96"><img
					src="https://img.moolban.com/unsafe/${pageContext.request.contextPath}/resources/images/promotion/3bb3742e963becb524de5e62c6a71042.jpg?rand=1577763884"
					alt=""></a> <a href="/home/plan_view?seq_key=97" data-key="97"><img
					src="https://img.moolban.com/unsafe/${pageContext.request.contextPath}/resources/images/promotion/cca0390bb21b635969ea2a84b71d82d8.jpg?rand=1577763884"
					alt=""></a>
			</div>
			<div class="talk_recom">
				<p class="pic_title">물반고기반 추천 바다업체</p>
				<a href="/company/4032"> <img
					src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/4032/main.jpg"
					alt="">
					<div class="recom_text">
						<em>감성돔</em> <strong>창성호</strong> <span><i>60,000원 ~</i></span>
					</div>
				</a> <a href="/company/10220"> <img
					src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/10220/2e81aeea254f3bc94a2a8c2fb400d2d6.jpg"
					alt="">
					<div class="recom_text">
						<em>광어 외 2종</em> <strong>산으로간 낚시꾼</strong> <span><i>33,000원
								~</i></span>
					</div>
				</a> <a href="/company/8984"> <img
					src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/8984/f6220a1cc24049ff683931003e6aa919.jpg"
					alt="">
					<div class="recom_text">
						<em>감성돔</em> <strong>세영호 </strong> <span><i>25,000원 ~</i></span>
					</div>
				</a>
			</div>

			<div class="talk_recom">
				<p class="pic_title">물반고기반 추천 민물업체</p>
				<a href="/company/1660"> <img
					src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1660/b5f00e2d93311337e5907d7a55bf7bef.jpg"
					alt="">
					<div class="recom_text">
						<em>붕어 외 2종</em> <strong>삼하낚시터</strong> <span><i>20,000원
								~</i></span>
					</div>
				</a> <a href="/company/1558"> <img
					src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
					alt="">
					<div class="recom_text">
						<em>붕어 외 2종</em> <strong>김포낚시터</strong> <span><i>20,000원
								~</i></span>
					</div>
				</a> <a href="/company/1623"> <img
					src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1623/5b728be9990c715c0f8f304b8fc9967c.jpg"
					alt="">
					<div class="recom_text">
						<em>붕어 외 2종</em> <strong>원동낚시터</strong> <span><i>30,000원
								~</i></span>
					</div>
				</a>
			</div>

		</div>
		<!--// contents_pic -->
		<!--// 조황 리스트 -->
	</section>



</div>
<!--// container -->

<!-- 중고장터 상품검색 팝업 -->
<div class="popup_opacity popup_jgo_search" style="display: none">
	<div class="popup_area">
		<a class="closein_btn" id="btn_used_popup_close"><img
			src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
			alt="팝업닫기"></a> <a class="closemo_btn" id="btn_used_popup_close"><img
			src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
			alt="팝업닫기"></a>
		<div class="popup_section">
			<h2 class="popup_title">
				상품 검색 <a class="reset_btn"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
					alt="">초기화</a>
			</h2>
			<div class="popup_inner">
				<div class="search_inner">
					<div class="search_box">
						<input type="text" name="tui_item_name"
							placeholder="상품 키워드를 입력해주세요.">
					</div>
					<div class="search_line">
						<p>판매 · 구매 완료상품</p>
						<select name="tui_state" id="">
							<option value="Y">포함</option>
							<option value="N">제외</option>
						</select>
					</div>
					<div class="search_line">
						<p>가격</p>
						<div class="input_line">
							<div class="inner">
								<input type="tel" name="tui_price_min" maxlength="8"
									onkeypress="javascript:onlyNumber();"
									onkeyup="javascript:onlyNumber2(this);" placeholder="최소가격">
								<em>원</em>
							</div>
							<i>~</i>
							<div class="inner">
								<input type="tel" name="tui_price_max" maxlength="8"
									onkeypress="javascript:onlyNumber();"
									onkeyup="javascript:onlyNumber2(this);" placeholder="최대가격">
								<em>원</em>
							</div>
						</div>
					</div>

					<div class="search_line">
						<label> <input type="checkbox" name="tui_price_nego_chk"
							class="tui_price_nego" value="Y" checked=""> <ins></ins>
							<span>가격협의</span> <input type="hidden" name="tui_price_nego">
						</label>
					</div>

					<div class="search_line">
						<p>배송</p>
						<select name="tui_free_shipping" id="">
							<option value="">전체</option>
							<option value="1">직거래</option>
							<option value="2">택배비포함</option>
							<option value="3">택배비별도</option>
							<option value="4">착불</option>
						</select>
					</div>
					<div class="search_line">
						<p>상품상태</p>
						<select name="tui_kind" id="">
							<option value="">전체</option>
							<option value="1">상태무관</option>
							<option value="2">중고상품</option>
							<option value="3">미사용</option>
							<option value="4">거의새것</option>
						</select>
					</div>
					<div class="search_line">
						<p>교환가능</p>
						<select name="tui_exchange" id="">
							<option value="">전체</option>
							<option value="N">교환불가</option>
							<option value="Y">교환가능</option>
						</select>
					</div>
					<div class="search_line">
						<p>선호지역</p>
						<a class="search_map_btn"><i class="area_name">전체</i></a>
					</div>
				</div>
				<div class="btn_box">
					<a class="search_btn">검색하기</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!--// 중고장터 상품검색 팝업 -->

<!-- 중고장터 본인인증 팝업 -->
<div id="exec-wrap"></div>
<!-- 중고장터 본인인증 팝업 -->
<!-- 공통 bottom -->
<div>
	<div class="foot_banner_area scroll_up" style="display: none;">
		<a class="foot_banner"><img
			src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/foot_banner_02.gif"
			alt=""></a> <a class="foot_banner_close">닫기</a>
	</div>
	<div class="banner_top_area scroll_up" style="display: block;"></div>

	<!-- fixed bottom -->
	<div class="foot_fixed scroll_up">
		<a href="/home">홈</a> <a href="/category/list?sea_type=1">바다</a> <a
			href="/category/list?sea_type=2">민물</a> <a href="/search/home">검색</a>
		<a href="/talk/list" class="on">반반톡</a>
	</div>
	<!--// fixed bottom -->
</div>
<!--// 공통 bottom -->



<!-- script -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>



<!-- loader -->


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
	src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".on").each(function() {
			$(this).click(function() {
				$(this).addClass("selected"); //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
				$(this).siblings().removeClass("selected"); //siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
			});
		});

	});

	function boardAjax(check) {
		console.log(check)
		if(check==2){
			
			$.ajax({
				url : "itemsboardAjax?check=" + check,
				datatype : 'json',
				success : function(data) {
					
					console.log(data +"중고장터")
					$("#talk_detail_list").html("")
					$.each(data, function(key, value){
							$("#talk_detail_list").append("	<div class='talk_box_area' id='talk_visual135516'> <div class='profile_line'><div class='profile_img'><p class='lv98'><img src='https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg' class='profile' alt=''></p></div><div class='profile_name'><strong>"+value.mid+"</strong><p><a href='/' class='header_logo'> <img src='https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg' alt=''></a></p></div>"+
										"<div class='profile_date'><p>"+ value.ibdate +"</p></div></div><div class='talk_view_btn' OnClick=\"location.href ='talk_detail?bnum="+value.ibnum+"'\" style='cursor: pointer;'><p class='talk_pic'><span class='manage'>중고장터</span></p>"+
										"<div class='talk_text'><strong>"+value.ibtitle+"</strong><p class='more'>"+value.ibcontent+"</p></div><div class='img_box' style='width: 608px;'><img src='${pageContext.request.contextPath}/resources/images/"+value.ibimage+"' alt=''></div></div><div class='talk_count_btn'><div class='talk_count clearfix'></p><div class='comm_mark_line'><p class='comm_line'>댓글 <span>0</span></p></div></div>"+
										"<div class='talk_btn clearfix'><a class='talk_money_btn' href='#'>"+value.ibmoney+"원</a><a class='talk_comm_btn' style='width:50%;' href='talk_detail?ibnum="+value.ibnum+"#comment_box'>댓글쓰기</a></div></div></div>")
			
					    
					    
					    });
					
						
					
					
				

				}
			});
			
		}else{

			$.ajax({
				url : "talkAjax?check=" + check,
				datatype : 'json',
				success : function(data) {
					
						$("#talk_detail_list").html("")
						$.each(data, function(key,value) {
							
							$("#talk_detail_list").append("	<div class='talk_box_area' id='talk_visual135516'> <div class='profile_line'><div class='profile_img'><p class='lv98'><img src='https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg' class='profile' alt=''></p></div><div class='profile_name'><strong>"+value.mid+"</strong><p><a href='/' class='header_logo'> <img src='https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg' alt=''>"+value.haddr+"</a></p></div>"+
										"<div class='profile_date'><p>"+value.bdate+"</p></div></div><div class='talk_view_btn' OnClick=\"location.href ='talk_detail?bnum="+value.bnum+"'\" style='cursor: pointer;'><p class='talk_pic'><span class='manage'>"+value.btype1+"</span></p>"+
										"<div class='talk_text'><strong>"+value.btitle+"</strong><p class='more'>"+value.bcontent+"</p></div><div class='img_box' style='width: 608px;'><img src='${pageContext.request.contextPath}/resources/images/"+value.bimage+"' alt=''></div></div><div class='talk_count_btn'><div class='talk_count clearfix'><div class='comm_mark_line'><p class='comm_line'>댓글 <span>0</span></p></div></div>"+
										"<div class='talk_btn clearfix'><a class='talk_comm_btn' href='talk_detail?bnum="+value.bnum+"#comment_box'>댓글쓰기</a></div></div></div>")
							
							
						});
					
						
					
				

				}
			});
			
		}

	}
</script>


</body>
</html>