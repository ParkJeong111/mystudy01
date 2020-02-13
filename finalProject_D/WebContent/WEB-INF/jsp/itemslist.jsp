<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<style>
.talk_header {
	border-bottom: 1px solid #e6e6e6;
}

.talk_header .talk_tab li {
	float: left;
	width: 11.1111%;
	position: relative;
	top: 1px;
}

.talk_header .talk_tab li a {
	display: block;
	font-size: 16px;
	color: #606060;
	letter-spacing: -0.6px;
	text-align: center;
	height: 44px;
	line-height: 42px;
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

.talk_header .talk_tab li.active a {
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

li {
	list-style: none;
}

}
.talk_area.container {
	padding-top: 202px !important;
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
	margin-top: 15px;
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
	width: 33.3333%;
	display: block;
	float: left;
	padding: 10px 0 15px 30px;
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

.talk_area .contents_pic {
	float: right;
	width: 324px;
	padding-top: 45px;
}
</style>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/style.css">
<!-- 경계선 -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/boot/css/style.css">
</head>
<body>


	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');">
		<div class="overlay"></div>
		<div class="container" style="margin-top: -40%;"></div>
	</div>
	<!--  여기에 헤더부분 추가  -->
	<p style="text-align: center; font-weight: bold; color: #606060; font-size: 30px; padding-top: 25px; padding-bottom: 5px;">
		<c:choose >
			<c:when test="${type == 1}">
				바다낚시
			</c:when>
			<c:when test="${type == 2}">
				민물낚시
			</c:when>
			<c:when test="${type == 3}">
				전문낚시
			</c:when>
			<c:when test="${type == 4}">
				카페낚시
			</c:when>
		</c:choose>
	</p>
	<hr>
	<div class="talk_header">
		<div class="talk_tab_area">
			<section>
				<ul class="talk_tab clearfix" style="font-weight: bold;">
					<!--  <li class="active">-->
					<li class=""><a href="" data-talk_key="6" data-tc_key="0"
						data-u_type="1">바다 홈</a></li>
					<li class=""><a href="" data-talk_key="1" data-tc_key="0"
						data-u_type="1">선상</a></li>
					<li class=""><a href="" data-talk_key="12" data-tc_key="0"
						data-u_type="1">낚시터</a></li>
					<li class=""><a href="" data-talk_key="11" data-tc_key="0"
						data-u_type="1">갯바위</a></li>
					<li class=""><a href="" data-talk_key="10" data-tc_key="0"
						data-u_type="1">요트</a></li>
					<li class=""><a href="" data-talk_key="2" data-tc_key="0"
						data-u_type="1">항구정보</a></li>
					<li class=""><a href="" data-talk_key="3" data-tc_key="0"
						data-u_type="1">공지사항</a></li>
					<li class=""><a href="" data-talk_key="4" data-tc_key="0"
						data-u_type="1">이벤트</a></li>
				</ul>
				<hr>
			</section>
		</div>
		<section class="ftco-section ftco-degree-bg"
			style="padding-top: 10px;">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 sidebar ftco-animate">
						<div class="sidebar-wrap bg-light ftco-animate">
							<h3 class="heading mb-4"
								style="text-align: center; font-weight: bold;">상세 검색</h3>
							<form action="searchlist" method="post">
								<div class="fields">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="검색 할 컨텐츠" name="searchValue" id="searchValue">
									</div>
									<div class="form-group">
										<div class="select-wrap one-third">
											<div class="icon">
												<span class="ion-ios-arrow-down"></span>
											</div>
											<select name="" id="" class="form-control">
												<option value="">거리를 설정해주세요</option>
												<option value="">100km</option>
												<option value="">200km</option>
												<option value="">300km</option>
												<option value="">500km</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="range-slider">
											<span> <input type="number" value="1000" min="0" name="minprice" id="minprice"
												max="120000" />원 - <input type="number" value="50000" name="maxprice" id="maxprice"
												min="0" max="120000" />원
											</span> <input value="1000" min="0" max="120000" step="500"
												type="range" /> <input value="50000" min="0" max="120000"
												step="500" type="range" />
										</div>
									</div>
									<div class="form-group">
										<input type="button" value="검색" id="searchbtn"
											class="btn btn-primary py-3 px-5">
									</div>
								</div>
							</form>
						</div>
						<div class="sidebar-wrap bg-light ftco-animate">
							<h3 class="heading mb-4"
								style="text-align: center; font-weight: bold;">리뷰 별점</h3>
							<form method="post" class="star-rating">
								<div class="form-check">
									<input type="radio" class="form-check-input" name="star" value="0"> <label class="form-check-label"
										for="exampleCheck1">
										<p class="rate">
											<span>&nbsp;상관없음</span>
										</p>
									</label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" name="star" value="5"> <label class="form-check-label"
										for="exampleCheck1">
										<p class="rate">
											<span><i class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star"></i></span>
										</p>
									</label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" name="star"  value="4"> <label class="form-check-label"
										for="exampleCheck1">
										<p class="rate">
											<span><i class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star-o"></i></span>
										</p>
									</label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" name="star"  value="3"> <label class="form-check-label"
										for="exampleCheck1">
										<p class="rate">
											<span><i class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star"></i><i class="icon-star-o"></i><i
												class="icon-star-o"></i></span>
										</p>
									</label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" name="star"  value="2"> <label class="form-check-label"
										for="exampleCheck1">
										<p class="rate">
											<span><i class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star-o"></i><i class="icon-star-o"></i><i
												class="icon-star-o"></i></span>
										</p>
									</label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" name="star"  value="1"> <label class="form-check-label"
										for="exampleCheck1">
										<p class="rate">
											<span><i class="icon-star"></i><i class="icon-star-o"></i><i
												class="icon-star-o"></i><i class="icon-star-o"></i><i
												class="icon-star-o"></i></span>
										</p>
									</label>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="row" id="hostlistdiv">
							<c:forEach items="${hostlist }" var="hostlist">
								<div class="col-md-4 ftco-animate">
									<div class="destination">
										<a href="itemdetail?hnum=${hostlist.hnum}"
											class="img img-2 d-flex justify-content-center align-items-center"
											style="background-image: url(${pageContext.request.contextPath}/resources/images/${hostlist.himage });">
											<div
												class="icon d-flex justify-content-center align-items-center">
												<span class="icon-search2"></span>
											</div>
										</a>
										<div class="text p-3">
											<div class="d-flex">
												<div class="one">
													<h3>
														<a href="itemdetail?hnum=${hostlist.hnum}">${hostlist.hname }</a>
													</h3>
													<p class="rate starrate">
													<c:forEach begin="0" end="4" varStatus="i">
														<c:choose>
															<c:when test="${i.current < hostlist.hstar}">
																<i class="icon-star"></i>
															</c:when>
															<c:otherwise>
																<i class="icon-star-o"></i>
															</c:otherwise>
														</c:choose>
													</c:forEach>		
													<span style="font-size: 15px;">${hostlist.hstar}</span>
													</p>
												</div>
												<div class="two">
													<span class="price product-price">${hostlist.hgmoney }</span>
												</div>
											</div>
											<p>${hostlist.hnotice }</p>
											<p class="days"></p>
											<hr>
											<p class="bottom-area d-flex">
												<span><i class="icon-map-o"></i>${hostlist.haddr } </span> 
												<%-- <span class="ml-auto"><a href="#">예약하기</a></span> --%>
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!--  <div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>-->
					</div>
					<!-- .col-md-8 -->
				</div>
			</div>
		</section>
		<!-- .section -->
		</div>
		<script>
		$(function() {
			
			var star = 0;
			
			$.fn.priceBuilder = function(price) {
				// 금액에 천단위 콤마 추가해주는 정규표현식
				return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}

			$(".product-price").each(function(idx) {
				// 금액에 천단위 콤마추가해주고 맨 뒤에 원을 붙임
				var value = $(this).text();
				$(this).text($.fn.priceBuilder(value));
			});
			
			$("#searchbtn").click(function() {
				star = $(':radio[name="star"]:checked').val();
				$.ajax({
					url : "searchlist?searchValue=" + encodeURI($('#searchValue').val(), "UTF-8") + "&minprice=" + $('#minprice').val() 
							+ "&maxprice=" + $('#maxprice').val() + "&star=" + star + "&type=" + '${type}',
					datatype : 'json',
					success : function(data) {
						console.log(data)
						$("#hostlistdiv").html("")
						$.each(data, function(key, value) {
							
							var star = "";
							for(i = 0; i < 5; i++) {
								if(i < value.hstar) {
									star += '<i class="icon-star"></i>';				
								} else {
									star += '<i class="icon-star-o"></i>';
								}
							}
							
							$("#hostlistdiv").append("<div class='col-md-4 ftco-animate fadeInUp ftco-animated'>"
									+ "<div class='destination'>"
									+ '<a href="itemdetail?hnum=' + value.hnum + '" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${pageContext.request.contextPath}/resources/images/'+ value.himage + ');">'
									+ '<div class="icon d-flex justify-content-center align-items-center">'
									+ '<span class="icon-search2"></span></div></a>'
									+ '<div class="text p-3"><div class="d-flex"><div class="one"><h3><a href="itemdetail?hnum='+ value.hnum + '">' + value.hname + '</a></h3>'
								    + '<p class="rate">' + star
								    + '<span style="font-size: 15px;">'+ value.hstar + '</span></p></div>'
								    + '<div class="two"><span class="price product-price">' + value.hgmoney + '</span></div></div>'
									+ '<p>' + value.hnotice + '</p><p class="days"></p><hr><p class="bottom-area d-flex"><span><i class="icon-map-o"></i>' + value.haddr + ' </span></p></div></div></div>'
									);
						});
						$(".product-price").each(function(idx) {
							var value = $(this).text();
							$(this).text($.fn.priceBuilder(value));
						});
					}
				});
			});
		});
		</script>


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
		<script src="${pageContext.request.contextPath}/resources/js/range.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>