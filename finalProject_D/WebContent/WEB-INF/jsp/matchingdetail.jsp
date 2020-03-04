<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
/* ��ü �� */
.view_area {
	padding-bottom: 0
}

.view_area .view_profile {
	border: 1px solid #d5d5d5;
	padding: 0;
	position: relative;
	margin-top: 50px
}

.view_area .view_profile .profile_slide {
	width: 600px;
	height: 365px;
	position: relative;
	float: left;
}

.view_area .view_profile .profile_slide .slide_arrow_btn a {
	position: absolute;
	top: 157px;
	background: none
}

.view_area .view_profile .profile_slide .slide_arrow_btn a.arrow_prev {
	left: 15px;
}

.view_area .view_profile .profile_slide .slide_arrow_btn a.arrow_next {
	right: 15px;
	left: auto
}

.view_area .view_profile .profile_slide .swiper-pagination-bullet {
	opacity: 1;
	background: rgba(255, 255, 255, 0.5);
}

.view_area .view_profile .profile_slide .swiper-pagination-bullet-active
	{
	background: rgba(255, 255, 255, 1)
}

.view_area .view_profile .profile_slide .like_share_btn a {
	position: absolute;
	z-index: 1
}

.view_area .view_profile .profile_slide .like_share_btn a.like_btn {
	right: 58px;
	top: 20px;
	width: 30px;
	height: 25px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_slide_like_off.png')
		no-repeat;
	background-size: 100% auto
}

.view_area .view_profile .profile_slide .like_share_btn a.like_btn.active
	{
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_slide_like_on.png')
		no-repeat;
	background-size: 100% auto
}

.view_area .view_profile .profile_slide .like_share_btn a.share_btn {
	right: 18px;
	top: 17px;
	width: 30px;
	height: 29px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_slide_share.png')
		no-repeat;
	background-size: 100% auto;
}

.view_area .view_profile .profile_slide #point_map {
	width: 100%;
	height: 270px
}

.view_area .view_profile .profile_info {
	float: left;
	margin-left: 10px;
	margin-top: 5px;
	width: auto;
}

.view_area .view_profile .profile_info dt {
	font-family:Do Hyeon;
	font-size: 25px;
	margin-bottom: 30px;
}

.view_area .view_profile .profile_info dt h1 {
	font-size: 25px;
	font-weight: 500;
	display: block
}

.view_area .view_profile .profile_info dt strong {
	font-weight: 500;
	display: block
}

.view_area .view_profile .profile_info dt i.ico_review {
	width: 37px;
	height: 37px;
	display: inline-block;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_bg.png')
		no-repeat;
	background-size: 100% auto;
	vertical-align: middle;
	position: relative;
	top: -3px;
}

.view_area .view_profile .profile_info dt i.ico_review.on1 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_01.png')
		no-repeat;
	background-size: 100% auto;
}

.view_area .view_profile .profile_info dt i.ico_review.on2 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_02.png')
		no-repeat;
	background-size: 100% auto;
}

.view_area .view_profile .profile_info dt i.ico_review.on3 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_03.png')
		no-repeat;
	background-size: 100% auto;
}

.view_area .view_profile .profile_info dt i.ico_review.on4 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_04.png')
		no-repeat;
	background-size: 100% auto;
}

.view_area .view_profile .profile_info dt i.ico_review.on5 {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_05.png')
		no-repeat;
	background-size: 100% auto;
}

.view_area .view_profile .profile_info dt span {
	display: inline-block;
	font-size: 18px;
	font-weight: 500;
	color: #9e5c4a;
}

.view_area .view_profile .profile_info dt em {
	display: inline-block;
	font-size: 18px;
	font-weight: 500;
	color: #5191e7;
}

.view_area .view_profile .profile_info dt em:before {
	display: inline-block;
	width: 4px;
	height: 4px;
	border-radius: 100%;
	background: #c0c0c0;
	margin: 0 8px 0 3px;
	content: '';
	position: relative;
	top: -4px
}

.view_area .view_profile .profile_info dd {
	font-size: 20px;
	color: #606060;
	margin-top: 15px;
}

.view_area .view_profile .profile_info dd h2 {
	font-size: 20px;
	font-weight: normal;
}

.view_area .view_profile .profile_info dd img {
	margin-right: 5px;
	vertical-align: top
}

.view_area .view_profile .profile_info .coupon_link {
	background: linear-gradient(99deg, #0c98dd, #4dcfbe);
	min-width: 250px;
	max-width: 303px;
	border-radius: .5rem;
	margin-top: 10px;
}

.view_area .view_profile .profile_info .coupon_link a {
	line-height: 1.3;
	margin-left: 19px;
	font-size: 16px;
	color: #fff;
	font-weight: 500;
	display: block;
	padding: 10px 42px 11px 15px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/coupon/arrow_link_01.png')
		no-repeat center right 15px;
	background-size: 7px auto;
}

.view_area .view_profile .profile_info .coupon_link a span {
	color: #fffca8
}

.view_area .view_profile .profile_info .coupon_link a img {
	width: 14px;
	margin-right: 5px;
	margin-top: 5px;
	margin-left: -19px;
}

.view_area .view_profile .profile_info .call_dd a {
	position: absolute;
	bottom: 30px;
	right: 20px;
	width: 70px;
	height: 70px;
	background: #e84418
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_call.png')
		top 17px center no-repeat;
	background-size: 30px auto;
	border: 1px solid #d5d5d5;
	border-radius: 100%
}

.view_area .view_profile .profile_info .like_link {
	position: absolute;
	bottom: 30px;
	right: 20px;
	width: 70px;
	height: 70px;
	display: block;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/like_off_01.png')
		top 20px center no-repeat;
	background-size: 30px 28px;
	border: 1px solid #d5d5d5;
	border-radius: 100%;
	display: none
}

.view_area .view_profile .profile_info .like_link.active {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/like_on_01.png')
		top 20px center no-repeat;
	background-size: 30px 28px;
	border: 1px solid #e84418;
}

.view_area .view_tab {
	padding-top: 50px;
	background: #fff;
}

.view_area .view_tab.view_tab3 li {
	width: 33.3333%;
}

.view_area .view_tab.view_tab4 li {
	width: 25%;
}

.view_area .view_tab li {
	float: left;
	text-align: center;
	border-bottom: 1px solid #e6e6e6;
	padding-bottom: 19px
}

.view_area .view_tab li.active {
	border-bottom: 1px solid #e84418
}

.view_area .view_tab li a {
	font-size: 20px;
	color: #606060;
}

.view_area .view_tab li:hover a {
	color: #e84418;
	font-weight: 500
}

.view_area .view_tab li.active a {
	color: #e84418;
	font-weight: 500
}

.view_area .view_contents {
	background: #f8f8f8;
	padding-top: 50px;
	padding-bottom: 150px
}

.view_area .notice_alarm {
	background: #f0f0f0;
	border: none;
	padding: 18px 0;
	width: 962px;
	margin: 0 auto;
	border-radius: 0.3rem;
	margin-bottom: 30px
}

.view_area .notice_alarm p {
	font-size: 16px;
	color: #777777;
	text-align: center;
}

.view_area .notice_alarm p img {
	margin-right: 10px;
	margin-left: -10px;
	position: relative;
	top: -2px;
}

.view_area .season_off {
	border: 1px solid #f85959;
	border-radius: 0.3rem;
	background: #fff;
	padding: 17px 20px;
	margin-bottom: 30px;
}

.view_area .season_off p {
	font-size: 18px;
	color: #f85959;
	font-weight: 500;
}

.view_area .season_off p img {
	width: 17px;
	position: relative;
	margin-right: 4px;
	top: -2px;
}

.view_area .season_off p span {
	font-weight: normal;
	float: right;
}

.view_area .wrong_error a {
	font-size: 16px;
	color: #777777;
	padding: 18px 30px;
	background: #fff
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_03.png')
		top 20px right 30px no-repeat;
	display: block;
	border: 1px solid #e6e6e6;
	border-radius: 0.3rem
}

.view_area .wrong_error a img {
	margin-right: 10px;
	position: relative;
	top: -2px
}

.view_area .ps_txt {
	margin-top: 27px;
}

.view_area .ps_txt p {
	font-size: 14px;
	color: #8c8c8c;
}

.view_area .ps_txt2 {
	margin: 20px 0;
}

.view_area .ps_txt2 p {
	font-size: 14px;
	color: #8c8c8c;
}

.view_area .view_map {
	border: 1px solid #d5d5d5;
	overflow: hidden;
}

.view_area .view_map .map_link {
	background: #fff
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/map_bg.png')
		top right no-repeat;
	width: 100%;
	height: 120px;
	padding: 45px 30px;
	font-size: 20px;
	display: block;
	position: relative
}

.view_area .view_map .map_link h2 {
	font-size: 20px;
	font-weight: normal;
}

.view_area .view_map .map_link img.map_arrow {
	margin-left: 10px;
	position: relative;
	top: -2px;
}

.view_area .view_map .map_link img.map_symbol {
	position: absolute;
	top: 36px;
	right: 36px
}

.view_area .view_map .map_link_area {
	width: 100%;
	border-top: 1px solid #d5d5d5
}

.view_area .view_map .map_link_area a {
	width: 50%;
	float: left;
	display: block;
	text-align: center;
	font-size: 20px;
	padding: 15px 0
}

.view_area .view_map .map_link_area a.share_btn {
	display: none
}

.view_area .view_map .map_link_area a:nth-child(2) {
	border-left: 1px solid #d5d5d5;
}

.view_area .view_map .map_link_area a img {
	margin-right: 10px;
}

.view_area .view_box {
	background: #fff;
	border: 1px solid #e6e6e6;
	border-radius: 0.3rem;
	margin-bottom: 30px
}

.view_area .view_box .view_box_title:after {
	display: block;
	content: '';
	clear: both
}

.view_area .view_box .view_box_title {
	margin-left:20px;
	font-family:Do Hyeon;
	font-size: 25px;
	font-weight: 500;
}

.view_area .view_box .view_box_title .fare_pic span:before {
	width: 7px;
	height: 7px;
	margin-right: 7px;
	border-radius: 100%;
	display: inline-block;
	content: '';
	position: relative;
	top: -4px
}

.view_area .view_box .view_box_title .fare_pic1:before {
	background: #4d4d4d
}

.view_area .view_box .view_box_title .fare_pic2:before {
	background: #e4389a
}

.view_area .view_box .view_box_title .fare_pic3:before {
	background: #3583d3
}

.view_area .view_box .view_box_title .fare_pic {
	float: right;
}

.view_area .view_box .view_box_title .fare_pic span {
	font-size: 18px;
	float: left;
	margin-left: 20px;
}

.view_area .view_box .view_box_title .fare_pic1 {
	margin-left: 0;
}

.view_area .view_box .view_box_title .title_link {
	float: right;
	font-size: 18px;
	color: #777777;
	position: relative;
	top: 7px;
}

.view_area .view_box .view_box_title .title_link img {
	margin-left: 10px;
	position: relative;
	top: -2px;
}

.view_area .view_box .view_box_title .count_txt {
	color: #f85959;
	margin-left: 5px;
	font-size: 20px;
	
}

.view_area .view_box .view_box_title .vote_help {
	position: relative;
	top: 2px;
	float: right
}

.view_area .view_box .view_box_title .vote_help img {
	width: 24px;
}

.view_area .view_box .fare_pic1 {
	color: #4d4d4d
}

.view_area .view_box .fare_pic2 {
	color: #e4389a
}

.view_area .view_box .fare_pic3 {
	color: #3583d3
}

.view_area .view_box .in_box {
	border-top: 1px solid #e6e6e6;
}

.view_area .view_box .in_box .dot_txt:before {
	background: #f85959;
}

.view_area .view_box .in_box .dot_txt {
	color: #404040
}

.view_area .view_box .in_box .dot_txt a {
	display: inline-block;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_01.png')
		top right no-repeat;
	width: calc(100% - 1px);
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	padding-right: 30px
}

.view_area .view_box .in_box+.btm_txt {
	border-top: 1px solid #e6e6e6;
	background: #fbfbfb;
	font-size: 16px;
	color: #777777;
	padding: 15px 30px
}

.view_area .view_box table {
	width: 100%;
}

.view_area .view_box table th {
	padding: 15px 0;
	background: #f7f7f7;
	font-size: 20px;
	text-align: center;
	font-weight: normal;
	border-top: 1px solid #e6e6e6
}

.view_area .view_box table td {
	padding: 15px 0;
	font-size: 18px;
	color: #606060;
	text-align: center;
	border-top: 1px solid #e6e6e6
}

.view_area .view_box table td .ps_txt {
	color: #8c8c8c;
	display: block
}

.view_area .view_box.info_view_sty1 .in_box {
	padding: 10px 30px 20px
}

.view_area .view_box.info_view_sty1 .in_box .dot_txt {
	margin-top: 10px;
}

.view_area .view_box.info_view_sty1 .in_box.event_in_box {
	padding: 0 30px
}

.view_area .view_box.info_view_sty1 .in_box.event_in_box .dot_txt {
	border-top: 1px solid #e6e6e6;
	margin: 0;
	padding: 15px 0;
	font-weight: normal;
}

.view_area .view_box.info_view_sty1 .in_box.event_in_box .dot_txt:first-child
	{
	border-top: none
}

.view_area .view_box.info_view_sty1 .in_box.event_in_box .dot_txt:before
	{
	margin-left: 0
}

.view_area .view_box.info_view_sty1 .in_box.event_in_box .dot_txt a {
	width: calc(100% - 17px)
}

.view_area .view_box.info_view_sty1 .in_box.comment_in_box {
	padding: 0 30px
}

.view_area .view_box.info_view_sty1 .in_box.comment_in_box .in_txt {
	border-top: 1px solid #e6e6e6;
	margin: 0;
	padding: 15px 0;
	font-weight: normal;
	font-size: 18px;
}

.view_area .view_box.info_view_sty1 .in_box.comment_in_box .in_txt:first-child
	{
	border-top: none
}

.view_area .view_box.info_view_sty1 .in_box.comment_in_box .in_txt a {
	width: calc(100% - 17px)
}

.view_area .view_box.info_view_sty1 .in_box strong.str_txt {
	color: #f85959;
	font-size: 18px;
	font-weight: normal;
}

.view_area .view_box.info_view_sty2 table th:first-child {
	width: 300px;
	border-right: 1px solid #e6e6e6
}

.view_area .view_box.info_view_sty2 table th:last-child {
	width: 662px
}

.view_area .view_box.info_view_sty2 table td:first-child {
	border-right: 1px solid #e6e6e6
}

.view_area .view_box.info_view_sty3 table th {
	width: 33.3333%;
}

.view_area .view_box.info_view_sty3 table th:nth-child(2) {
	border-left: 1px solid #e6e6e6;
	border-right: 1px solid #e6e6e6
}

.view_area .view_box.info_view_sty3 table td:nth-child(2) {
	border-left: 1px solid #e6e6e6;
	border-right: 1px solid #e6e6e6
}

.view_area .view_box.info_view_sty3 table td span {
	display: block
}

.view_area .view_box.info_view_sty4 a {
	display: block;
	border-top: 1px solid #e6e6e6;
}

.view_area .view_box.info_view_sty4 a:first-child {
	border-top: none
}

.view_area .view_box.info_view_sty4 dl {
	padding: 20px 30px;
	width: 100%;
}

.view_area .view_box.info_view_sty4 dt {
	font-size: 20px;
	font-weight: 500;
}

.view_area .view_box.info_view_sty4 dt:after {
	display: block;
	content: '';
	clear: both
}

.view_area .view_box.info_view_sty4 dt h2 {
	font-size: 20px;
	font-weight: 500;
	float: left
}

.view_area .view_box.info_view_sty4 dt strong {
	font-size: 20px;
	color: #e84418;
	font-weight: 500;
	text-align: right;
	vertical-align: top;
	float: right;
	margin-top: -2px
}

.view_area .view_box.info_view_sty4 dt strong span {
	font-size: 16px;
	font-weight: normal;
}

.view_area .view_box.info_view_sty4 dt strong i {
	font-weight: normal;
	position: relative;
	top: -2px;
	font-size: 15px;
	display: inline-block;
	margin-left: 10px;
	height: 28px;
	line-height: 26px;
	border-radius: 0.3rem;
	padding: 0 10px;
}

.view_area .view_box.info_view_sty4 dt strong i.orders_call {
	color: #e84418;
	border: 1px solid #e84418;
	cursor: pointer
}

.view_area .view_box.info_view_sty4 dt strong i.orders_call a {
	color: #e84418
}

.view_area .view_box.info_view_sty4 dt strong i.orders_now {
	background: #e84418;
	color: #fff;
	cursor: pointer
}

.view_area .view_box.info_view_sty4 dd {
	margin-top: 10px;
	font-weight: normal;
	margin-left: 16px;
	display: block;
	font-size: 16px;
	color: #8c8c8c;
	line-height: 1.4
}

.view_area .view_box.info_view_sty4 dd:before {
	margin-left: -16px;
	margin-right: 10px;
	width: 5px;
	height: 5px;
	border-radius: 100%;
	background: #f85959;
	position: relative;
	top: -2px;
	display: inline-block;
	content: '';
}

.view_area .view_box.info_view_sty5 table th {
	font-size: 16px;
	padding: 11px 0;
	border-bottom: 1px solid #e6e6e6
}

.view_area .view_box.info_view_sty5 table td {
	text-align: left;
	padding: 15px 30px;
	border-bottom: 1px solid #e6e6e6;
	border-top: none;
	width: 50%
}

.view_area .view_box.info_view_sty5 table tr:last-child td {
	border-bottom: none
}

.view_area .view_box.info_view_sty5 table td strong {
	float: right;
	color: #e84418;
	font-weight: 500
}

.view_area .view_box.info_view_sty5 table td strong span {
	font-size: 14px;
	font-weight: normal;
}

.view_area .view_box.info_view_sty5 table td:first-child {
	border-right: 1px solid #e6e6e6
}

.view_area .view_box.info_view_sty6 .in_box {
	padding: 0 20px 20px
}

.view_area .view_box.info_view_sty6 li {
	float: left;
	width: 12.5%;
	text-align: center;
	margin-top: 20px;
	font-size: 17px
}

.view_area .view_box.info_view_sty6 li img {
	border-radius: 100%;
	border: 1px solid #e6e6e6;
	display: block;
	margin: 0 auto 10px;
	width: 70px;
	height: 70px;
}

.view_area .view_box.info_view_sty6 li h2 {
	font-size: 17px;
	font-weight: normal;
}

.view_area .view_box.info_view_sty7 .in_box {
	padding: 10px 30px 20px
}

.view_area .view_box.info_view_sty7 .in_box .dot_txt {
	margin-top: 10px;
	color: #333;
	font-weight: 500;
	display: block;
	width: 100%;
}

.view_area .view_box.info_view_sty7 .in_box .dot_txt span {
	display: inline-block;
	width: 100px;
	color: #505050;
	font-weight: normal
}

.view_area .view_box.info_view_sty7 .in_box .dot_txt strong {
	display: inline-block;
	color: #333;
	font-weight: 500;
	vertical-align: top;
	max-width: calc(100% - 10px);
}

.view_area .view_box.info_view_sty7 .in_box .dot_txt strong em {
	display: block
}

.view_area .view_box.info_view_sty8 .in_box {
	padding: 0 20px 20px
}

.view_area .view_box.info_view_sty8 li {
	float: left;
	width: 10%;
	text-align: center;
	margin-top: 20px;
	font-size: 16px;
}

.view_area .view_box.info_view_sty8 li img {
	display: block;
	margin: 0 auto 10px;
	width: 70%
}

.view_area .view_box.info_view_sty9 .in_box {
	padding: 5px 25px 20px;
	font-size: 0
}

.view_area .view_box.info_view_sty9 span {
	font-size: 17px;
	padding: 0 10px;
	margin: 15px 5px 0;
	display: inline-block;
	height: 37px;
	line-height: 35px;
	border: 1px solid #f85959;
	color: #f85959;
	border-radius: 3rem;
}

.view_area .view_box.view_coupon a {
	padding: 0 45px 0 30px;
	display: block;
	font-size: 18px;
	color: #333;
	font-weight: 500;
	height: 69px;
	line-height: 69px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/coupon/arrow_link_02.png')
		no-repeat center right 30px;
	background-size: 10px auto
}

.view_area .view_box.view_coupon a img {
	width: 17px;
	margin-right: 6px;
	position: relative;
	top: -2px;
}

.view_area .view_box.view_coupon a span {
	color: #e84418
}

/* �޷� */
.view_area .calendar_area {
	padding-top: 30px;
}

.view_area .calendar_area .calendar_title .title_arrow {
	width: 160px;
	position: relative;
	font-size: 23px;
	font-weight: 500;
	margin: 0 auto;
	text-align: center
}

.view_area .calendar_area .calendar_title .title_arrow a.calendar_prev {
	left: -11px;
	position: absolute;
	top: 4px
}

.view_area .calendar_area .calendar_title .title_arrow a.calendar_next {
	right: -11px;
	position: absolute;
	top: 4px
}

.view_area .calendar_area .calendar_title .one_ticket {
	position: absolute;
	right: 30px;
	top: 34px;
	font-size: 18px;
	color: #eb9200;
	font-weight: 500;
}

.view_area .calendar_area .calendar_title .one_ticket:before {
	width: 7px;
	height: 7px;
	border-radius: 100%;
	background: #eb9200;
	margin-right: 10px;
	position: relative;
	top: -3px;
	display: inline-block;
	content: '';
}

.view_area .calendar_area table {
	table-layout: fixed;
	width: 100%;
	margin-top: 20px;
}

.view_area .calendar_area table th {
	border-top: none;
	background: #fff;
	text-align: center;
	font-size: 16px;
	color: #8c8c8c;
	padding-bottom: 20px;
	font-weight: normal;
}

.view_area .calendar_area table td {
	padding: 0;
	border-top: 1px solid #eeeeee;
	border-right: 1px solid #eeeeee;
	height: 111px;
}

.view_area .calendar_area table td:nth-child(7n) {
	border-right: none
}

.view_area .calendar_area table td a:hover {
	border: 1px solid #f85959
}

.view_area .calendar_area table td a {
	display: block;
	padding: 5px 10px 13px;
	height: 111px;
	text-align: center;
	position: relative;
}

.view_area .calendar_area table td a strong {
	display: block;
	font-weight: bold;
	text-align: left;
	margin-bottom: 5px;
}

.view_area .calendar_area table td a img {
	margin-right: 5px;
	width: 30px
}

.view_area .calendar_area table td a span {
	font-size: 18px;
	font-weight: 500;
	color: #b0b0b0;
}

.view_area .calendar_area table .off strong {
	color: #dddddd;
	font-weight: normal;
}

.view_area .calendar_area table .none strong {
	color: #b0b0b0;
	text-decoration: line-through;
	font-weight: normal;
}

.view_area .calendar_area table .today strong:after {
	top: 10px;
	right: 10px;
	width: 7px;
	height: 7px;
	background: #eb9200;
	border-radius: 100%;
	position: absolute;
	display: block;
	content: '';
}

.view_area .calendar_area table .on {
	border: 1px solid #f85959 !important
}

.view_area .calendar_area table .sunday strong {
	color: #f85959
}

.view_area .calendar_area table .off:hover {
	border: none;
	border-top: 1px solid #eeeeee;
	border-left: 1px solid #eeeeee;
}

.view_area .calendar_area table .none:hover {
	border: none;
	border-top: 1px solid #eeeeee;
	border-left: 1px solid #eeeeee;
}

.view_area .date_widget_area .date_title {
	background: #fbfbfb;
	position: relative;
	padding: 15px 0;
	border-bottom: 1px solid #eeeeee;
}

.view_area .date_widget_area .date_title p {
	font-size: 20px;
	color: #777777;
	font-weight: 500;
	text-align: center;
}

.view_area .date_widget_area .date_title span {
	font-size: 18px;
	color: #878787;
	position: absolute;
	top: 15px;
	right: 30px
}

.view_area .date_widget_area .widget_area {
	display: table;
	width: 100%;
	table-layout: fixed;
}

.view_area .date_widget_area .widget_area .widget_box {
	display: table-cell;
	width: 50%;
	text-align: center;
	vertical-align: middle;
	height: 124px
}

.view_area .date_widget_area .widget_area .widget_box_left {
	border-right: 1px solid #eee
}

.view_area .date_widget_area .widget_area .widget_box_left dt {
	display: inline-block;
	text-align: right;
	padding-right: 20px;
	vertical-align: middle
}

.view_area .date_widget_area .widget_area .widget_box_left dd {
	display: inline-block;
	text-align: left;
	vertical-align: middle
}

.view_area .date_widget_area .widget_area .widget_box_left dd span {
	display: block;
	font-size: 20px;
	color: #777777
}

.view_area .date_widget_area .widget_area .widget_box_left dd strong {
	color: #f85959;
	font-weight: normal;
}

.view_area .date_widget_area .widget_area .widget_box_right span {
	font-size: 20px;
	color: #777777;
	margin: 0 15px
}

.view_area .date_widget_area .widget_area .widget_box_right strong {
	color: #f85959;
	font-weight: normal;
}

.view_area .date_widget_area .widget_area .widget_box_right .personnel_choice
	{
	display: inline-block;
	padding: 0 15px;
	font-size: 18px;
	color: #f85959;
	border: 1px solid #f85959;
	border-radius: 0.3rem;
	height: 37px;
	line-height: 35px;
}

.view_area .date_widget_area .widget_area_box {
	text-align: center;
	padding: 42px 0;
	display: block
}

.view_area .date_widget_area .widget_area_box span {
	font-size: 20px;
	color: #777777;
	margin: 0 15px
}

.view_area .date_widget_area .widget_area_box strong {
	color: #f85959;
	font-weight: normal;
}

.view_area .date_widget_area .widget_area_box .personnel_choice {
	display: inline-block;
	padding: 0 15px;
	font-size: 18px;
	color: #f85959;
	border: 1px solid #f85959;
	border-radius: 0.3rem;
	height: 37px;
	line-height: 35px;
}

.view_area .insur_ps_area {
	width: 100%;
	border: 1px solid #399dff;
	padding: 16px;
	text-align: center;
	font-size: 20px;
	letter-spacing: -0.8px;
}

.view_area .insur_ps_area dt {
	color: #399dff;
	font-weight: 500;
}

.view_area .insur_ps_area dd {
	color: #808080;
}

.view_area .reserve_area {
	padding: 30px 30px 20px;
	display: block;
}

.view_area .reserve_area .reserve_con span {
	vertical-align: top
}

.view_area .reserve_area .reserve_con span:first-child {
	margin-left: 0
}

.view_area .reserve_area .count_pic {
	color: #e84418;
	font-size: 18px;
	display: inline-block;
	padding: 0 10px;
	height: 30px;
	line-height: 28px;
	border: 1px solid #e84418;
	margin-bottom: 10px;
}

.view_area .reserve_area .sheet_pic {
	color: #f85959;
	font-size: 18px;
	display: inline-block;
	padding: 0 10px;
	height: 30px;
	line-height: 28px;
	border: 1px solid #dadada;
	margin-bottom: 10px;
}

.view_area .reserve_area .sold_pic {
	color: #7a47b8;
	font-size: 18px;
	display: inline-block;
	padding: 0 10px;
	height: 30px;
	line-height: 28px;
	border: 1px solid #7a47b8;
	margin-bottom: 10px;
}

.view_area .reserve_area .deadline_pic {
	color: #2663e2;
	font-size: 18px;
	display: inline-block;
	padding: 0 10px;
	height: 30px;
	line-height: 28px;
	border: 1px solid #2663e2;
	margin-bottom: 10px;
}

.view_area .reserve_area .soldout_pic {
	color: #dadada;
	font-size: 18px;
	display: inline-block;
	padding: 0 10px;
	height: 30px;
	line-height: 28px;
	border: 1px solid #dadada;
	margin-bottom: 10px;
}

.view_area .reserve_area .ico_point {
	padding: 0 7px;
	display: inline-block;
	font-size: 14px;
	color: #2876a1;
	font-weight: 500;
	margin-bottom: 10px;
	border: 1px solid #2876a1;
	height: 30px;
	line-height: 28px;
	vertical-align: top
}

.view_area .reserve_area .ico_point img {
	width: 14px;
	margin-right: 3px;
	position: relative;
	top: -1px;
}

.view_area .reserve_area .reserve_title {
	font-size: 25px;
	font-weight: bold;
}

.view_area .reserve_area .reserve_price {
	margin-top: 5px;
}

.view_area .reserve_area .reserve_price p {
	text-align: right;
	margin-top: 5px;
	font-size: 25px;
	color: #e84418;
	font-weight: bold
}

.view_area .reserve_area .reserve_price p strong {
	margin-right: 10px;
	font-size: 18px;
	font-weight: normal;
	display: inline-block;
}

.view_area .reserve_area .reserve_price p span {
	font-size: 20px;
	font-weight: normal;
}

.view_area .reserve_area .reserve_price p i {
	margin-left: 15px;
	display: inline-block;
	font-size: 18px;
	color: #e84418;
	font-weight: 500;
	width: 83px;
	height: 32px;
	line-height: 30px;
	text-align: center;
	border-radius: 0.3rem;
	border: 1px solid #e84418;
}

.view_area .reserve_area .reserve_price .live_pay {
	color: #505050;
	font-weight: normal;
}

.view_area .reserve_area .reserve_price .live_pay strong {
	margin-right: 0;
	color: #505050;
	width: 100px;
	text-align: center;
	position: relative;
	top: -3px
}

.view_area .reserve_area .reserve_price .reserve_pay strong {
	color: #ffffff;
	text-align: center;
	width: 100px;
	height: 32px;
	line-height: 30px;
	border-radius: 0.3rem;
	background: #f85959;
}

.view_area .reserve_area .reserve_price .coupon_pay strong {
	padding-left: 8px;
	text-align: left;
	color: #ffffff;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/coupon_cap.png')
		no-repeat;
	width: 172px;
	height: 30px;
	line-height: 28px;
}

.view_area .reserve_area .reserve_price .one_pay strong {
	padding-left: 8px;
	text-align: left;
	width: 97px;
	height: 30px;
	line-height: 28px;
	color: #fff;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/one_cap.png')
		no-repeat;
}

.view_area .reserve_area .reserve_price .sale_pay {
	color: #333
}

.view_area .reserve_area .reserve_price .sale_pay em {
	font-weight: normal;
	display: block;
	font-size: 18px;
	color: #878787;
	text-decoration: line-through;
}

.view_area .reserve_area .reserve_price .sale_pay strong {
	text-align: left;
	color: #fff;
	padding-left: 10px;
	font-size: 18px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/sale_cap.png')
		no-repeat;
	width: 97px;
	height: 30px;
	line-height: 28px;
}

.view_area .reserve_area .reserve_dot {
	border-top: 1px solid #e6e6e6;
	padding-top: 15px;
	margin-top: 30px
}

.view_area .reserve_area .reserve_dot p {
	font-size: 18px;
	color: #8c8c8c;
	margin-left: 15px;
	line-height: 1.5
}

.view_area .reserve_area .reserve_dot p:before {
	width: 5px;
	height: 5px;
	border-radius: 100%;
	background: #f85959;
	display: inline-block;
	content: '';
	margin-right: 10px;
	margin-left: -15px;
	position: relative;
	top: -5px
}

.reserveclick:hover {
	border-color: #f85959;
	cursor: pointer;
}

.view_area .reserve_area_off .count_pic {
	background: #b5b5b5;
	border: 1px solid #b5b5b5;
	color: #fff;
}

.view_area .reserve_area_off .reserve_title {
	color: #b5b5b5
}

.view_area .reserve_area_off .reserve_title .deadline {
	margin-right: 10px;
	font-size: 18px;
	color: #ffffff;
	font-weight: normal;
	position: relative;
	top: -3px;
	display: inline-block;
	width: 83px;
	height: 30px;
	line-height: 28px;
	text-align: center;
	background: #b5b5b5;
}

.view_area .reserve_area_off .reserve_price p {
	color: #b5b5b5
}

.view_area .reserve_area_off .reserve_price p span {
	color: #b5b5b5
}

.view_area .reserve_area_off .reserve_price p.live_pay strong {
	color: #b5b5b5 !important
}

.view_area .reserve_area_off .reserve_price p i {
	color: #b5b5b5;
	border: 1px solid #b5b5b5
}

.view_area .reserve_area_off .reserve_price .live_pay {
	color: #b5b5b5
}

.view_area .reserve_area_off .reserve_price .reserve_pay strong {
	background: #b5b5b5;
	color: #fff;
}

.view_area .reserve_area_off .reserve_price .coupon_pay strong {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/coupon_cap_dis.png')
		no-repeat;
}

.view_area .reserve_area_off .reserve_price .one_pay strong {
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/one_cap_dis.png')
		no-repeat;
}

.view_area .reserve_area_off .reserve_price .sale_pay {
	color: #b5b5b5
}

.view_area .reserve_area_off .reserve_price .sale_pay em {
	display: none
}

.view_area .reserve_area_off .reserve_price .sale_pay strong {
	display: none
}

.view_area .reserve_area_off .reserve_dot p {
	color: #b5b5b5;
}

.view_area .reserve_area_off .reserve_dot p:before {
	background: #b5b5b5;
}

.view_area .view_notice {
	padding: 30px;
}

.view_area .view_notice dt {
	font-size: 25px;
	font-weight: normal;
	margin-bottom: 15px;
}

.view_area .view_notice dt span {
	margin-bottom: 12px;
	font-size: 18px;
	color: #fff;
	width: 85px;
	height: 30px;
	line-height: 28px;
	text-align: center;
	display: block;
	background: #e84418
}

.view_area .view_notice dd {
	font-size: 18px;
	color: #777777;
}

.view_area .area_alarm a {
	display: block;
	font-size: 16px;
	color: #f85959;
	text-align: center;
	padding: 20px 0
}

.view_area .info_view_vote .in_box {
	padding: 14px 14px 20px;
}

.view_area .info_view_vote .vote_tab {
	border: 1px solid #d5d5d5;
	background: #fbfbfb
}

.view_area .info_view_vote .vote_tab li {
	float: left;
	width: 25%;
}

.view_area .info_view_vote .vote_tab li a {
	display: block;
	font-size: 16px;
	color: #777;
	text-align: center;
	border-bottom: 2px solid #fbfbfb;
	padding: 14px 0 13px
}

.view_area .info_view_vote .vote_tab li.active a {
	border-bottom: 2px solid #e84418;
	color: #e84418
}

.view_area .info_view_vote .vote_tab_content a {
	margin-right: 20px;
	margin-top: 14px;
	padding: 17px 0;
	position: relative;
	width: calc(25% - 15px);
	display: block;
	float: left;
	border: 1px solid #d5d5d5;
	border-radius: 3rem;
	text-align: center;
	color: #333333;
	font-size: 16px;
	padding-left: 32px;
}

.view_area .info_view_vote .vote_tab_content a:nth-child(4n) {
	margin-right: 0
}

.view_area .info_view_vote .vote_tab_content a span {
	font-size: 16px;
	color: #b1b1b1;
	font-weight: 500;
	width: 50px;
	height: 50px;
	line-height: 48px;
	display: block;
	text-align: center;
	border-radius: 100%;
	background: #ececec;
	position: absolute;
	top: 0px;
	left: 0px
}

.view_area .info_view_vote .vote_tab_content a.vote {
	color: #fff;
	background: #f85959;
	border: 1px solid #f85959;
}

.view_area .info_view_vote .vote_tab_content a.vote span {
	background: #fff;
	color: #333
}

.view_area .info_view_point a {
	font-size: 18px;
	color: #404040;
	padding: 15px 32px;
	display: block;
	border-top: 1px solid #e6e6e6;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_01.png')
		top 29px right 14px no-repeat;
}

.view_area .info_view_point a i {
	position: relative;
	top: -1px;
	margin-right: 5px;
	font-size: 13px;
	color: #f85959;
	width: 26px;
	height: 21px;
	text-align: center;
	line-height: 19px;
	background:
		url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/point_number_01.png')
		top right no-repeat;
	background-size: 100% auto;
	display: inline-block;
}

.view_area .info_view_point a i em {
	display: block;
	position: relative;
	left: -2px
}

.view_area .info_view_point a:first-child {
	border-top: none
}

.view_area .info_view_point a span {
	margin-top: 4px;
	display: block;
	font-size: 16px;
	color: #8c8c8c;
	padding-left: 34px;
	margin-left: 15px
}

.view_area .info_view_point a span:before {
	margin-left: -15px;
	width: 5px;
	height: 5px;
	border-radius: 100%;
	background: #f85959;
	display: inline-block;
	position: relative;
	top: -3px;
	content: '';
	margin-right: 10px;
}

/* ��Ȳ���� */
.manage_tab_area {
	background: #fff;
	padding-top: 30px;
	padding-bottom: 30px
}

.manage_tab_area li {
	float: left;
	width: calc(33.333% - 10px);
}

.manage_tab_area li a {
	border: 1px solid #8c8c8c;
	font-size: 16px;
	padding: 10px 0;
	color: #8c8c8c;
	text-align: center;
	display: block;
	border-radius: 0.3rem
}

.manage_tab_area li:nth-child(2) {
	margin: 0 15px
}

.manage_tab_area li.active a {
	border: 1px solid #ff724c;
	color: #ff724c
}

.manage_tab_area li:hover a {
	border: 1px solid #ff724c
}

.view_area .view_contents.view_info_manage {
	background: #fff
}

.view_info_manage {
	border-top: 1px solid #e6e6e6;
	padding-top: 25px
}

.view_info_manage .view_count_text p {
	font-size: 20px;
}

.view_info_manage .view_count_text p span {
	color: #ff724c;
}

.view_info_manage .manage_list_area li {
	float: left;
	margin-top: 10px;
	background: #fff;
	width: calc(33.333% - 8px);
	border: 1px solid #e6e6e6;
	border-radius: 0.3rem;
	margin-right: 10px
}

.view_info_manage .manage_list_area li:nth-child(3n+1) {
	margin-right: 0
}

.view_info_manage .manage_list_area li .profile_box {
	padding: 10px 15px;
	position: relative;
}

.view_info_manage .manage_list_area li .profile_box .profile_img {
	float: left;
	width: 35px;
	height: 35px;
	border-radius: 100%;
	overflow: hidden;
	position: relative;
}

.view_info_manage .manage_list_area li .profile_box .profile_img:before
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
	z-index: 1;
	line-height: 15px;
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv0:before
	{
	content: 'lv.0';
	background: #dc967c
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv1:before
	{
	content: 'lv.1';
	background: #ec440b
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv2:before
	{
	content: 'lv.2';
	background: #ffba12
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv3:before
	{
	content: 'lv.3';
	background: #55b44d
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv4:before
	{
	content: 'lv.4';
	background: #4595ec
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv5:before
	{
	content: 'lv.5';
	background: #4c65d5
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv6:before
	{
	content: 'lv.6';
	background: #845bbd
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv7:before
	{
	content: 'lv.7';
	background: #bb4e4e
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv8:before
	{
	content: 'lv.8';
	background: linear-gradient(to right, #a8f5ff, #d6faff 28%, #40bcd3 77%, #218092);
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv9:before
	{
	content: 'lv.9';
	background: linear-gradient(to right, #ffbf16, #ffe4b2 33%, #f2ad4e 69%, #ffe151);
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv10:before
	{
	content: 'lv.10';
	background: linear-gradient(to right, #e06e6e, #fadb25 33%, #9eda51 68%, #486ce8);
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv99:before
	{
	content: 'M';
	background: linear-gradient(to bottom, #616161, #171717);
}

.view_info_manage .manage_list_area li .profile_box .profile_img.lv98:before
	{
	content: '����';
	background: linear-gradient(to bottom, #ffd848, #ff3600);
}

.view_info_manage .manage_list_area li .profile_box .profile_img img {
	width: 100%;
	height: 100%;
}

.view_info_manage .manage_list_area li .profile_box .profile_name {
	width: calc(100% - 45px);
	float: left;
	margin-left: 10px;
	font-size: 15px;
	padding-top: 10px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	height: 28px;
}

.view_info_manage .manage_list_area li .manage_title_img {
	overflow: hidden;
	width: 100%;
	padding-bottom: 56.26%;
	height: 0;
	position: relative;
}

.view_info_manage .manage_list_area li .manage_title_img img {
	position: absolute;
	top: 50%;
	left: 0;
	width: 100%;
	height: auto;
	transform: translate(0, -50%);
}

.view_info_manage .manage_list_area li .manage_title_img .live_tag {
	width: 83px;
	height: 28px;
	line-height: 26px;
	background: #e84418;
	border-radius: 0.3rem;
	font-size: 15px;
	font-weight: 300;
	text-align: center;
	position: absolute;
	top: 10px;
	left: 10px;
	z-index: 1;
	color: #fff;
	letter-spacing: -0.6px
}

.view_info_manage .manage_list_area li .manage_txt_box {
	padding: 15px;
	height: 140px;
	position: relative;
}

.view_info_manage .manage_list_area li .manage_kind_tag span {
	border: 1px solid #dadada;
	border-radius: 0.3rem;
	color: #2663e2;
	font-size: 15px;
	padding: 0 8px;
	height: 28px;
	line-height: 26px;
	display: inline-block
}

.view_info_manage .manage_list_area li .manage_title_txt {
	margin: 5px 0 10px;
	font-size: 17px;
	font-weight: 500;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	height: 42px;
	line-height: 1.2
}

.view_info_manage .manage_list_area li .manage_date {
	font-size: 14px;
	color: #8c8c8c;
	position: absolute;
	bottom: 15px
}

/* �������� */
.view_area .view_info_reserve {
	padding-bottom: 120px;
}

.swiper-container {
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1
}

.swiper-container-no-flexbox .swiper-slide {
	float: left
}

.swiper-container-vertical>.swiper-wrapper {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform;
	-webkit-box-sizing: content-box;
	box-sizing: content-box
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0)
}

.swiper-container-multirow>.swiper-wrapper {
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap
}

.swiper-container-free-mode>.swiper-wrapper {
	-webkit-transition-timing-function: ease-out;
	-o-transition-timing-function: ease-out;
	transition-timing-function: ease-out;
	margin: 0 auto
}

.swiper-slide {
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform
}

.swiper-invisible-blank-slide {
	visibility: hidden
}

.swiper-container-autoheight, .swiper-container-autoheight .swiper-slide
	{
	height: auto
}

.swiper-container-autoheight .swiper-wrapper {
	-webkit-box-align: start;
	-webkit-align-items: flex-start;
	-ms-flex-align: start;
	align-items: flex-start;
	-webkit-transition-property: height, -webkit-transform;
	transition-property: height, -webkit-transform;
	-o-transition-property: transform, height;
	transition-property: transform, height;
	transition-property: transform, height, -webkit-transform
}

.swiper-container-3d {
	-webkit-perspective: 1200px;
	perspective: 1200px
}

.swiper-container-3d .swiper-cube-shadow, .swiper-container-3d .swiper-slide,
	.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top,
	.swiper-container-3d .swiper-wrapper {
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d
}

.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top
	{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: 10
}

.swiper-container-3d .swiper-slide-shadow-left {
	background-image: -webkit-gradient(linear, right top, left top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(right, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(right, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to left, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-3d .swiper-slide-shadow-right {
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to right, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-3d .swiper-slide-shadow-top {
	background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(bottom, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(bottom, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to top, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-3d .swiper-slide-shadow-bottom {
	background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(top, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to bottom, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-wp8-horizontal, .swiper-container-wp8-horizontal>.swiper-wrapper
	{
	-ms-touch-action: pan-y;
	touch-action: pan-y
}

.swiper-container-wp8-vertical, .swiper-container-wp8-vertical>.swiper-wrapper
	{
	-ms-touch-action: pan-x;
	touch-action: pan-x
}

.swiper-button-next, .swiper-button-prev {
	position: absolute;
	top: 50%;
	width: 27px;
	height: 44px;
	margin-top: -22px;
	z-index: 10;
	cursor: pointer;
	background-size: 27px 44px;
	background-position: center;
	background-repeat: no-repeat
}

.swiper-button-next.swiper-button-disabled, .swiper-button-prev.swiper-button-disabled
	{
	opacity: .35;
	cursor: auto;
	pointer-events: none
}

.swiper-button-prev, .swiper-container-rtl .swiper-button-next {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23007aff'%2F%3E%3C%2Fsvg%3E");
	left: 10px;
	right: auto
}

.swiper-button-next, .swiper-container-rtl .swiper-button-prev {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23007aff'%2F%3E%3C%2Fsvg%3E");
	right: 10px;
	left: auto
}

.swiper-button-prev.swiper-button-white, .swiper-container-rtl .swiper-button-next.swiper-button-white
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-next.swiper-button-white, .swiper-container-rtl .swiper-button-prev.swiper-button-white
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-prev.swiper-button-black, .swiper-container-rtl .swiper-button-next.swiper-button-black
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23000000'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-next.swiper-button-black, .swiper-container-rtl .swiper-button-prev.swiper-button-black
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23000000'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-lock {
	display: none
}

.swiper-pagination {
	position: absolute;
	text-align: center;
	-webkit-transition: .3s opacity;
	-o-transition: .3s opacity;
	transition: .3s opacity;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
	z-index: 10
}

.swiper-pagination.swiper-pagination-hidden {
	opacity: 0
}

.swiper-container-horizontal>.swiper-pagination-bullets,
	.swiper-pagination-custom, .swiper-pagination-fraction {
	bottom: 10px;
	left: 0;
	width: 100%
}

.swiper-pagination-bullets-dynamic {
	overflow: hidden;
	font-size: 0
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet {
	-webkit-transform: scale(.33);
	-ms-transform: scale(.33);
	transform: scale(.33);
	position: relative
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active {
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-main
	{
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev
	{
	-webkit-transform: scale(.66);
	-ms-transform: scale(.66);
	transform: scale(.66)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev-prev
	{
	-webkit-transform: scale(.33);
	-ms-transform: scale(.33);
	transform: scale(.33)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next
	{
	-webkit-transform: scale(.66);
	-ms-transform: scale(.66);
	transform: scale(.66)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next-next
	{
	-webkit-transform: scale(.33);
	-ms-transform: scale(.33);
	transform: scale(.33)
}

.swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	display: inline-block;
	border-radius: 100%;
	background: #000;
	opacity: .2
}

button.swiper-pagination-bullet {
	border: none;
	margin: 0;
	padding: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none
}

.swiper-pagination-clickable .swiper-pagination-bullet {
	cursor: pointer
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: #007aff
}

.swiper-container-vertical>.swiper-pagination-bullets {
	right: 10px;
	top: 50%;
	-webkit-transform: translate3d(0, -50%, 0);
	transform: translate3d(0, -50%, 0)
}

.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 6px 0;
	display: block
}

.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic
	{
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 8px
}

.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	display: inline-block;
	-webkit-transition: .2s top, .2s -webkit-transform;
	transition: .2s top, .2s -webkit-transform;
	-o-transition: .2s transform, .2s top;
	transition: .2s transform, .2s top;
	transition: .2s transform, .2s top, .2s -webkit-transform
}

.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 0 4px
}

.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic
	{
	left: 50%;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%);
	white-space: nowrap
}

.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	-webkit-transition: .2s left, .2s -webkit-transform;
	transition: .2s left, .2s -webkit-transform;
	-o-transition: .2s transform, .2s left;
	transition: .2s transform, .2s left;
	transition: .2s transform, .2s left, .2s -webkit-transform
}

.swiper-container-horizontal.swiper-container-rtl>.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	-webkit-transition: .2s right, .2s -webkit-transform;
	transition: .2s right, .2s -webkit-transform;
	-o-transition: .2s transform, .2s right;
	transition: .2s transform, .2s right;
	transition: .2s transform, .2s right, .2s -webkit-transform
}

.swiper-pagination-progressbar {
	background: rgba(0, 0, 0, .25);
	position: absolute
}

.swiper-pagination-progressbar .swiper-pagination-progressbar-fill {
	background: #007aff;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	transform: scale(0);
	-webkit-transform-origin: left top;
	-ms-transform-origin: left top;
	transform-origin: left top
}

.swiper-container-rtl .swiper-pagination-progressbar .swiper-pagination-progressbar-fill
	{
	-webkit-transform-origin: right top;
	-ms-transform-origin: right top;
	transform-origin: right top
}

.swiper-container-horizontal>.swiper-pagination-progressbar,
	.swiper-container-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite
	{
	width: 100%;
	height: 4px;
	left: 0;
	top: 0
}

.swiper-container-horizontal>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite,
	.swiper-container-vertical>.swiper-pagination-progressbar {
	width: 4px;
	height: 100%;
	left: 0;
	top: 0
}

.swiper-pagination-white .swiper-pagination-bullet-active {
	background: #fff
}

.swiper-pagination-progressbar.swiper-pagination-white {
	background: rgba(255, 255, 255, .25)
}

.swiper-pagination-progressbar.swiper-pagination-white .swiper-pagination-progressbar-fill
	{
	background: #fff
}

.swiper-pagination-black .swiper-pagination-bullet-active {
	background: #000
}

.swiper-pagination-progressbar.swiper-pagination-black {
	background: rgba(0, 0, 0, .25)
}

.swiper-pagination-progressbar.swiper-pagination-black .swiper-pagination-progressbar-fill
	{
	background: #000
}

.swiper-pagination-lock {
	display: none
}

.swiper-scrollbar {
	border-radius: 10px;
	position: relative;
	-ms-touch-action: none;
	background: rgba(0, 0, 0, .1)
}

.swiper-container-horizontal>.swiper-scrollbar {
	position: absolute;
	left: 1%;
	bottom: 3px;
	z-index: 50;
	height: 5px;
	width: 98%
}

.swiper-container-vertical>.swiper-scrollbar {
	position: absolute;
	right: 3px;
	top: 1%;
	z-index: 50;
	width: 5px;
	height: 98%
}

.swiper-scrollbar-drag {
	height: 100%;
	width: 100%;
	position: relative;
	background: rgba(0, 0, 0, .5);
	border-radius: 10px;
	left: 0;
	top: 0
}

.swiper-scrollbar-cursor-drag {
	cursor: move
}

.swiper-scrollbar-lock {
	display: none
}

.swiper-zoom-container {
	width: 100%;
	height: 100%;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	text-align: center
}

.swiper-zoom-container>canvas, .swiper-zoom-container>img,
	.swiper-zoom-container>svg {
	max-width: 100%;
	max-height: 100%;
	-o-object-fit: contain;
	object-fit: contain
}

.swiper-slide-zoomed {
	cursor: move
}

.swiper-lazy-preloader {
	width: 42px;
	height: 42px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -21px;
	margin-top: -21px;
	z-index: 10;
	-webkit-transform-origin: 50%;
	-ms-transform-origin: 50%;
	transform-origin: 50%;
	-webkit-animation: swiper-preloader-spin 1s steps(12, end) infinite;
	animation: swiper-preloader-spin 1s steps(12, end) infinite
}

.swiper-lazy-preloader:after {
	display: block;
	content: '';
	width: 100%;
	height: 100%;
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%236c6c6c'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E");
	background-position: 50%;
	background-size: 100%;
	background-repeat: no-repeat
}

.swiper-lazy-preloader-white:after {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%23fff'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E")
}

@
-webkit-keyframes swiper-preloader-spin { 100%{
	-webkit-transform: rotate(360deg);
	transform: rotate(360deg)
}

}
@
keyframes swiper-preloader-spin { 100%{
	-webkit-transform: rotate(360deg);
	transform: rotate(360deg)
}

}
.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000
}

.swiper-container-fade.swiper-container-free-mode .swiper-slide {
	-webkit-transition-timing-function: ease-out;
	-o-transition-timing-function: ease-out;
	transition-timing-function: ease-out
}

.swiper-container-fade .swiper-slide {
	pointer-events: none;
	-webkit-transition-property: opacity;
	-o-transition-property: opacity;
	transition-property: opacity
}

.swiper-container-fade .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-fade .swiper-slide-active, .swiper-container-fade .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube {
	overflow: visible
}

.swiper-container-cube .swiper-slide {
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1;
	visibility: hidden;
	-webkit-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	transform-origin: 0 0;
	width: 100%;
	height: 100%
}

.swiper-container-cube .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-cube.swiper-container-rtl .swiper-slide {
	-webkit-transform-origin: 100% 0;
	-ms-transform-origin: 100% 0;
	transform-origin: 100% 0
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-next,
	.swiper-container-cube .swiper-slide-next+.swiper-slide,
	.swiper-container-cube .swiper-slide-prev {
	pointer-events: auto;
	visibility: visible
}

.swiper-container-cube .swiper-slide-shadow-bottom,
	.swiper-container-cube .swiper-slide-shadow-left,
	.swiper-container-cube .swiper-slide-shadow-right,
	.swiper-container-cube .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

.swiper-container-cube .swiper-cube-shadow {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .6;
	-webkit-filter: blur(50px);
	filter: blur(50px);
	z-index: 0
}

.swiper-container-flip {
	overflow: visible
}

.swiper-container-flip .swiper-slide {
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1
}

.swiper-container-flip .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-flip .swiper-slide-active, .swiper-container-flip .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-flip .swiper-slide-shadow-bottom,
	.swiper-container-flip .swiper-slide-shadow-left,
	.swiper-container-flip .swiper-slide-shadow-right,
	.swiper-container-flip .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

.swiper-container-coverflow .swiper-wrapper {
	-ms-perspective: 1200px
}

.dot_txt:before {
	margin-left: -16px;
	margin-right: 10px;
	width: 7px;
	height: 7px;
	border-radius: 100%;
	position: relative;
	top: -2px;
	display: inline-block;
	content: '';
}
.joingroup:hover{
background-color: #f85959;
-webkit-filter: invert(0%);
filter: invert(0%);
}
</style>
<!-- END nav -->
<div class="hero-wrap js-fullheight"
	style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_3.jpg');">

	<div class="container" style="margin-top: -40%;"></div>
</div>
<!--  ���⿡ ����κ� �߰�  -->
<div class="view_area" style = "font-family: jua;">
	<div class="talk_tab_area">
		<section>
			<h3 class="talk_tab clearfix"
				style="text-align: center; font-weight: bold; font-size: 45px; padding-top: 25px; padding-bottom: 5px; font-family:Do Hyeon; color:#333333;">
				<%-- <c:choose>
					<c:when test="${host.htype == '�ٴ�'}">
						�ٴ�
					</c:when>
					<c:when test="${host.htype == '�ι�'}">
						�ι�
					</c:when>
				</c:choose> --%>
				�Խ��� ������
			</h3>
			<hr>
		</section>
	</div><c:forEach items="${matchpage}" var="list">
	<div class="view_area container" style = "font-family: jua;" >
		<!-- ��ü�� ��� -->
		<section>
			<div class="view_profile clearfix">
				<img
					src="${pageContext.request.contextPath}/resources/images/${list.mbimage}"
					alt="" style="width: 35%; height: 100%; float: left;">
				<!-- ��ü ���� -->
				<div class="profile_info col-md-4" >
					<dl class="clearfix">
						<dt>
							<span class="ico_pic ico_pic1">����</span> <br>${list.mbtitle}<br>
							<span class="ico_pic ico_pic1">��ġ</span> <br>${list.mblocation}<br>
						</dt>
						<!-- 
						<dd>
							<h2>����</h2>
							<span id="distance" style="color: black;"></span>
						</dd> -->
					</dl>
				</div>
				<!-- ��ü ���� -->
				<!-- ��ü ���� -->
				<!--  <div class="profile_info col-md-4">
					<span class="ico_pic ico_pic1">����</span> <br>����<br>
					<span class="ico_pic ico_pic1">��ġ</span> <br>����<br>
				</div>-->
				
				<div style="width: 35%; height: 100%; float: right; margin-right: auto; text-align: center;">
				<a href = "#" onclick="location.href = 'matchadd?mbnum=${list.mbnum }'">
				<img style="display:block; width: 50%; height: 100%; margin:auto; margin-top:5%;" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBpZD0iQ2FwYV8xIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCA1MTIgNTEyIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgd2lkdGg9IjUxMnB4Ij48cGF0aCBkPSJtMjU1LjEwNyA2NS4wNmM1LjU2MiAwIDEwLjA3MS00LjUwOSAxMC4wNzEtMTAuMDcxdi00NC45MThjMC01LjU2Mi00LjUwOS0xMC4wNzEtMTAuMDcxLTEwLjA3MXMtMTAuMDcxIDQuNTA5LTEwLjA3MSAxMC4wNzF2NDQuOTE4Yy4wMDEgNS41NjIgNC41MSAxMC4wNzEgMTAuMDcxIDEwLjA3MXoiIGZpbGw9IiMwMDAwMDAiLz48cGF0aCBkPSJtNTAxLjI4IDM0NS45ODUtMTcuNzkxLTE3Ljc0MWMtNi4zMjktNi4zMjEtMTQuNzY0LTkuODAzLTIzLjc1Mi05LjgwMy01Ljc0NyAwLTExLjI2NCAxLjQzLTE2LjE1MyA0LjEwOWwtMzMuNTI2LTMzLjQ4NiAxLjYzMy0xLjYzMWMxMy42MDEtMTMuNjI4IDEzLjU5Ni0zNS43NzMtLjAwMS00OS4zNTUtNC44NTktNC44NjgtMTAuOTIyLTguMTE0LTE3LjUzMS05LjQ4LjkxLTMuMTQxIDEuMzg5LTYuNDMxIDEuMzg5LTkuNzk4IDAtOS4zNTUtMy42MzQtMTguMTI3LTEwLjIxMi0yNC42NzgtNC44Ni00Ljg2OC0xMC45MjItOC4xMTQtMTcuNTMxLTkuNDguOTEtMy4xNDEgMS4zODktNi40MyAxLjM4OS05Ljc5OCAwLTkuMzU2LTMuNjM0LTE4LjEyNy0xMC4yMjMtMjQuNjg4LTQuOTc2LTQuOTctMTEuMDkzLTguMTE2LTE3LjUxNi05LjQ1NSAzLjQzNi0xMS44NDcuNS0yNS4xNzYtOC44Mi0zNC41MTItNy43NTgtNy43MjUtMTguMjg1LTExLjA0NS0yOC40My05Ljk2OWwtNjYuNDM1LTEyLjU3NWMtMTAuMTMyLTEuOTIyLTIyLjc4NS0zLjE5My0zMC43NzIgNC4wOTItLjUwNC40Ni0xLjAxOC45ODktMS41MjQgMS41NzgtMTIuMzg0LTQuNTE0LTI2LjgyOC0xLjgyNi0zNi43NDUgOC4wOC02LjU3OSA2LjU3MS0xMC4yMDMgMTUuMzM5LTEwLjIwMyAyNC42ODkgMCAzLjM2OC40NzcgNi42NTcgMS4zODYgOS43OTktNi42MDIgMS4zNjUtMTIuNjU3IDQuNjA3LTE3LjUgOS40NTktNi41OTIgNi41NjUtMTAuMjI3IDE1LjMyMy0xMC4yMzQgMjQuNjYyLS4wMDMgMy4zNzYuNDc2IDYuNjc2IDEuMzkgOS44MjYtNi42MDUgMS4zNjItMTIuNjY0IDQuNTk4LTE3LjUyMiA5LjQ1LTYuNTkyIDYuNTg1LTEwLjIyMiAxNS4zNTgtMTAuMjIyIDI0LjcwMyAwIDcuMTU4IDIuMTM3IDEzLjk3NyA2LjA5NyAxOS43MzctNSAxLjY5NS05LjU4IDQuNTE2LTEzLjQxNSA4LjM0Ny0xMy42MSAxMy41OTMtMTMuNjE1IDM1LjczOS4wMDkgNDkuMzg3bDEuNjI3IDEuNjItMzMuNTMgMzMuNDY5Yy0xMi40NjEtNS44NjctMjcuODE0LTMuNjY5LTM4LjA5NyA2LjYwMWwtMTcuODAyIDE3Ljc1MmMtNi4zMzIgNi4zMjQtOS44MTggMTQuNzYtOS44MTkgMjMuNzUzIDAgOC45OTQgMy40ODcgMTcuNDMxIDkuODE5IDIzLjc1NmwyMi4yMTcgMjIuMTljMy45MzUgMy45MzEgMTAuMzEyIDMuOTI3IDE0LjI0Mi0uMDA4IDMuOTMxLTMuOTM1IDMuOTI3LTEwLjMxMi0uMDA4LTE0LjI0MmwtMjIuMjE3LTIyLjE5Yy0yLjUyMi0yLjUxOS0zLjkxMS01Ljg5NS0zLjkxMS05LjUwNSAwLTMuNjA5IDEuMzg5LTYuOTg0IDMuOTA1LTkuNDk3bDE3LjgwMy0xNy43NTNjNC40NDgtNC40NDMgMTEuMjU2LTUuMTA1IDE2LjQyNi0yLjAxNC4zNjQuNTQ3Ljc4NSAxLjA2NyAxLjI2NyAxLjU1Ljg2My44NjUgMS44NDggMS41MjggMi44OTQgMi4wMTNsMTAyLjA5MyAxMDEuOTQzYy40ODUgMS4wNTcgMS4xNTEgMi4wNTIgMi4wMiAyLjkyMi44NDYuODQ3IDEuODExIDEuNTAyIDIuODM1IDEuOTg0IDIuMTU5IDIuNDQxIDMuMzUyIDUuNTU5IDMuMzUyIDguODg1IDAgMy42MS0xLjM4OSA2Ljk4NS0zLjkxMSA5LjUwNGwtMTcuNzg1IDE3Ljc2NGMtNS4yNTUgNS4yMzItMTMuODAzIDUuMjMxLTE5LjA0Mi4wMTZsLTIyLjIxNy0yMi4yMTljLTMuOTMzLTMuOTMzLTEwLjMwOS0zLjkzMy0xNC4yNDIgMHMtMy45MzMgMTAuMzA5IDAgMTQuMjQybDIyLjIzMyAyMi4yMzVjNi41NDQgNi41MTcgMTUuMTM4IDkuNzc0IDIzLjczNiA5Ljc3NCA4LjYgMCAxNy4yMDQtMy4yNjIgMjMuNzU2LTkuNzg1bDE3Ljc5Ni0xNy43NzVjNi4zMzItNi4zMjUgOS44MTktMTQuNzYxIDkuODE5LTIzLjc1NiAwLTYuNDE5LTEuNzg1LTEyLjU0OS01LjEwNC0xNy44MzVsMzcuNzM2LTM3LjY5Yy4wNC0uMDQxLjA4LS4wODIuMTIxLS4xMjMgNC4zMjEtNC40NjcgMTYuMzU0LTMuNjMxIDI3Ljk5MS0yLjgyMyA4LjI2OC41NzUgMTcuNDg2IDEuMjE0IDI2LjQ5Mi4xNzZsNDEuMzI0IDQxLjI3NWMtMi42NzcgNC44ODEtNC4xMDYgMTAuMzkxLTQuMTA2IDE2LjEyOSAwIDguOTg1IDMuNDg3IDE3LjQxNiA5LjgxOSAyMy43NDFsMTcuNzk3IDE3Ljc3NWM2LjMyOCA2LjMyMSAxNC43NjMgOS44MDMgMjMuNzUxIDkuODAzIDguOTg3IDAgMTcuNDIyLTMuNDgxIDIzLjc1MS05LjgwM2wxMDcuOTQxLTEwNy44MWM2LjMzMi02LjMyNCA5LjgxOS0xNC43NiA5LjgxOS0yMy43NTQtLjAwMS04Ljk5My0zLjQ4OC0xNy40MjktOS44MjYtMjMuNzU5em0tMjY3LjI2LTI0Mi41NSA0My42ODcgOC4yNjktMjYuMTQ5IDI2LjEzOWMtNC4wNDUtMS45NDQtOS41ODktNS41Ny0xNS42NzEtMTEuMzg4LTguMzI1LTcuOTY0LTE0LjI4LTE3LjE1OS0xNC44MjItMjIuODk0LS4wMDEtLjAwMy0uMDAxLS4wMDYtLjAwMS0uMDA5IDAtLjAwMS0uMDAxLS4wMDItLjAwMS0uMDAzLS4wMzktLjQxMi0uMDQ5LS43NDEtLjA0NC0uOTkyIDEuMzE3LS4zMiA0LjgxNS0uNjc1IDEzLjAwMS44Nzh6bS01MS4wNTggOC4yMTFjNS4xMDItNS4wOTcgMTMuMDI4LTUuNjg1IDE4Ljc5My0xLjc4MSAzLjI2NyAxMy42OTggMTQuOTUyIDI2LjExMyAyMC4yMDkgMzEuMTQzIDMuODk2IDMuNzI4IDE2LjM5NyAxNC45MDUgMjkuMDE1IDE3Ljk3NyAxLjcwNyAyLjQ0NyAyLjYzNiA1LjM2NCAyLjYzNiA4LjQ0MiAwIDMuOTY1LTEuNTI1IDcuNjcyLTQuMzA0IDEwLjQ0OC0yLjc3MSAyLjc3Ni02LjQ4NCA0LjMwNC0xMC40NTYgNC4zMDQtMy45NzMgMC03LjY4Ni0xLjUyOC0xMC40Ny00LjMxN2wtLjAwMS0uMDAxLS4wMDUtLjAwNS00NS40MTgtNDUuMzM2Yy0yLjc2OS0yLjc2NS00LjI5NC02LjQ3Mi00LjI5NC0xMC40MzYuMDAxLTMuOTY1IDEuNTI2LTcuNjcyIDQuMjk1LTEwLjQzOHptLTI2LjMxNiA0My45NDdjMi43NzEtMi43NzUgNi40OC00LjMwNCAxMC40NDYtNC4zMDQgMy45NzEgMCA3LjY5MiAxLjUzMiAxMC40ODEgNC4zMThsMzYuNTcyIDM2LjQ5OWM1Ljc1OSA1Ljc2OCA1Ljc1OSAxNS4xNTQuMDIgMjAuOTAyLTIuNzg2IDIuNzc1LTYuNTEyIDQuMzAzLTEwLjQ5MSA0LjMwM3MtNy43MDUtMS41MjgtMTAuNDc5LTQuMjkxbC0uMDAxLS4wMDEtMjcuNzQ1LTI3LjczOWMtLjA0My0uMDQzLS4wOS0uMDgzLS4xMzQtLjEyN2wtOC42OC04LjY3NmMtMi43ODUtMi43ODItNC4zMTgtNi40OTYtNC4zMTUtMTAuNDU4LjAwNC0zLjk0OSAxLjUzMi03LjY0NCA0LjMyNi0xMC40MjZ6bS0yNi4zNjYgNDMuOTM4YzIuNzczLTIuNzY5IDYuNDktNC4yOTQgMTAuNDY4LTQuMjk0IDMuOTQ1IDAgNy42MyAxLjUwMyAxMC4zOTEgNC4yMjRsMjcuODMgMjcuODE3YzIuNzc1IDIuNzY0IDQuMzA0IDYuNDY3IDQuMzA0IDEwLjQyNyAwIDMuOTU5LTEuNTI5IDcuNjYyLTQuMzE1IDEwLjQzNy0yLjc3MiAyLjc2OC02LjQ4NSA0LjI5My0xMC40NTYgNC4yOTMtMy45NzcgMC03LjcwMi0xLjUyOS0xMC40NzgtNC4yOTNsLTEwLjA4OS0xMC4wNzdjLS4wMDItLjAwMy0uMDA1LS4wMDUtLjAwNy0uMDA3bC0xNy42NDctMTcuNjI2Yy0yLjc4Mi0yLjc3OS00LjMxNC02LjQ5MS00LjMxNC0xMC40NTEgMC0zLjk1OSAxLjUzMi03LjY3MiA0LjMxMy0xMC40NXptLTE3LjU0IDUyLjc4NmMyLjc4NS0yLjc4MiA2LjUwNy00LjMxNCAxMC40OC00LjMxNCAzLjk3MiAwIDcuNjkzIDEuNTMxIDEwLjQ3NyA0LjMxMWwxMC4xMDMgMTAuMDkxYzIuNzc2IDIuNzY0IDQuMzA0IDYuNDY3IDQuMzA0IDEwLjQyN3MtMS41MjkgNy42NjItNC4zMjUgMTAuNDQ4Yy0yLjc3MSAyLjc3NS02LjQ4NCA0LjMwNC0xMC40NTYgNC4zMDQtMy45NzMgMC03LjY4Ni0xLjUyOC0xMC40NzctNC4zMjRsLTEuMjY1LTEuMjZjLS4wMTctLjAxNy0uMDMtLjAzNS0uMDQ2LS4wNTEtLjAxOS0uMDE4LS4wMzktLjAzNC0uMDU4LS4wNTJsLTguNzI3LTguNjkzYy01Ljc1OS01Ljc3MS01Ljc2NC0xNS4xNC0uMDEtMjAuODg3em0yMDUuMjM0IDExNC40NThjLTMuOTMxLTMuOTM2LTEwLjMwOC0zLjkzOS0xNC4yNDItLjAwOWwtOC45NiA4Ljk0OWMtOC41MTQgOC41MTQtMjMuOTQxIDcuNDQyLTM4Ljg2IDYuNDA3LTE2LjIwMS0xLjEyNi0zMi45NTQtMi4yODgtNDMuNzk1IDguODQybC0zNy4wOTUgMzcuMDUtOTIuNzYzLTkyLjYyNyAzMi44MjgtMzIuNzY5YzUuNDI2IDMuMzI2IDExLjY4NyA1LjEwOSAxOC4yMzggNS4xMDkgOS4zNTkgMCAxOC4xMzUtMy42MjggMjQuNjktMTAuMTk1IDYuNTk5LTYuNTcyIDEwLjIzNC0xNS4zNDMgMTAuMjM0LTI0LjY5OSAwLS4wODctLjAwNi0uMTczLS4wMDYtLjI2LjA4Ny4wMDEuMTc0LjAwNi4yNjEuMDA2IDkuMzQ2IDAgMTguMTE1LTMuNjE3IDI0LjY3OS0xMC4xNzMgNi41OTktNi41NzIgMTAuMjM0LTE1LjM0NCAxMC4yMzQtMjQuNjk5IDAtLjA4Ny0uMDA2LS4xNzMtLjAwNi0uMjYuMDg4IDAgLjE3Ni4wMDYuMjY1LjAwNiA5LjM0MyAwIDE4LjExNy0zLjYxMyAyNC43MjUtMTAuMTk0IDYuODYtNi44NzEgMTAuMjUzLTE1LjkxNyAxMC4xODgtMjQuOTQ0LjA5LjAwMS4xOC4wMDYuMjcuMDA2IDkuMzU5LS4wMDEgMTguMTM0LTMuNjI4IDI0LjY5OS0xMC4yMDUgNi41NzktNi41NzEgMTAuMjAzLTE1LjMzOSAxMC4yMDMtMjQuNjg5IDAtNi41MzktMS43NzgtMTIuNzktNS4wOTMtMTguMjA1bDI4Ljc3My0yOC43NjFjMi4xNDQtMi4xMzUgNC43ODgtMy40NzUgNy41NTktNC4wMjguMy0uMDMyLjU5Ni0uMDguODg5LS4xMzggNC40NDYtLjYxMyA5LjExNS43NTkgMTIuNTE1IDQuMTQ1IDUuNzU5IDUuNzY5IDUuNzU5IDE1LjE1NS4wMjEgMjAuOTAzbC04Ljc2MyA4LjcyN2MtLjAyOS4wMjktLjA2LjA1NS0uMDg5LjA4NGwtMTAuMDkzIDEwLjA3NmMtMy45MzYgMy45My0zLjk0IDEwLjMwNy0uMDA5IDE0LjI0MiAzLjkzMiAzLjkzNiAxMC4zMDggMy45MzkgMTQuMjQyLjAwOWw4Ljc5OC04Ljc4NmMuMDAyLS4wMDIuMDA0LS4wMDQuMDA2LS4wMDZsMS4zMy0xLjMyNWM1Ljc3NS01LjcyMiAxNS4xMzEtNS43MSAyMC45LjA1MSAyLjc3NiAyLjc2NCA0LjMwNSA2LjQ2NyA0LjMwNSAxMC40MjcgMCAzLjk1OS0xLjUyOSA3LjY2Mi00LjMyNyAxMC40NDhsLTguODEzIDguODMxYy0uMDAxLjAwMS0uMDAyLjAwMi0uMDAzLjAwNGwtMTAuMDkyIDEwLjA1MWMtMy45NDEgMy45MjUtMy45NTQgMTAuMzAyLS4wMjkgMTQuMjQyIDMuOTI1IDMuOTQxIDEwLjMwMSAzLjk1MyAxNC4yNDIuMDI5bDEwLjEzOC0xMC4wOTdjMi43NzEtMi43NzYgNi40ODQtNC4zMDQgMTAuNDU2LTQuMzA0IDMuOTczIDAgNy42ODcgMS41MjggMTAuNDc4IDQuMzI0IDIuNzc2IDIuNzY1IDQuMzA0IDYuNDY4IDQuMzA0IDEwLjQyOCAwIDMuOTU5LTEuNTI4IDcuNjYyLTQuMzIgMTAuNDQybC0xNy41NyAxNy41NzdjLTMuOTMyIDMuOTM0LTMuOTMxIDEwLjMxLjAwMiAxNC4yNDIgMS45NjcgMS45NjYgNC41NDMgMi45NDggNy4xMiAyLjk0OCAyLjU3OCAwIDUuMTU2LS45ODQgNy4xMjItMi45NTFsOC42MTEtOC42MTRjLjA0OS0uMDQ3LjEwMi0uMDg4LjE1MS0uMTM3IDIuNzcxLTIuNzc2IDYuNDg0LTQuMzA0IDEwLjQ1Ni00LjMwNCAzLjk3MyAwIDcuNjg2IDEuNTI4IDEwLjQ2NyA0LjMxNCA1Ljc1MyA1Ljc0NyA1Ljc0OCAxNS4xMTcgMCAyMC44NzVsLTguNzU1IDguNzQ1Yy0uMDAzLjAwMy0uMDA3LjAwNi0uMDEuMDA5cy0uMDA2LjAwNy0uMDA5LjAxbC0xMy44OTYgMTMuODc5Yy0zLjkzNSAzLjkzMS0zLjkzOSAxMC4zMDgtLjAwOSAxNC4yNDMgMS45NjcgMS45NjkgNC41NDcgMi45NTQgNy4xMjYgMi45NTQgMi41NzUgMCA1LjE1MS0uOTgyIDcuMTE3LTIuOTQ1bDYuNzk3LTYuNzg5IDMyLjU3NyAzMi41MzktOTIuNzU1IDkyLjY0Mi0zMy4yMzQtMzMuMTk0YzIuMzE3LTEuNDkgNC41MzQtMy4yNDIgNi42MTUtNS4zMjNsOC45NTUtOC45NDRjMy45MzctMy45MjkgMy45NDEtMTAuMzA2LjAxLTE0LjI0MXptMTY5LjA3OCAxMi40NzItMTA3Ljk0MSAxMDcuODFjLTIuNTI1IDIuNTIyLTUuOTA1IDMuOTExLTkuNTE3IDMuOTExcy02Ljk5Mi0xLjM4OS05LjUxOC0zLjkxMmwtMTcuNzk3LTE3Ljc3NWMtMi41MjItMi41MTgtMy45MTEtNS44ODgtMy45MTEtOS40ODkgMC0zLjYgMS4zODktNi45NyAzLjkxMS05LjQ4OWwxMDcuOTQxLTEwNy44MWMyLjUyNi0yLjUyMyA1LjkwNS0zLjkxMiA5LjUxOC0zLjkxMiAzLjYxMiAwIDYuOTkyIDEuMzg5IDkuNTI0IDMuOTE4bDE3Ljc5MSAxNy43NDFjMi41MjIgMi41MTkgMy45MTEgNS44OTMgMy45MTEgOS41MDMtLjAwMSAzLjYxMS0xLjM5IDYuOTg2LTMuOTEyIDkuNTA0eiIgZmlsbD0iIzAwMDAwMCIvPjxwYXRoIGQ9Im0xMjEuMzc4IDU2LjU3YzEuOTY2IDEuOTYyIDQuNTQgMi45NDIgNy4xMTQgMi45NDIgMi41OCAwIDUuMTYxLS45ODYgNy4xMjgtMi45NTcgMy45MjktMy45MzcgMy45MjMtMTAuMzEzLS4wMTQtMTQuMjQybC0zNi42OTgtMzYuNjI1Yy0zLjkzNi0zLjkyOS0xMC4zMTMtMy45MjQtMTQuMjQyLjAxNC0zLjkyOSAzLjkzNy0zLjkyMyAxMC4zMTMuMDE0IDE0LjI0MnoiIGZpbGw9IiMwMDAwMDAiLz48cGF0aCBkPSJtMzgxLjcyMiA1OS41MTJjMi41NzUgMCA1LjE1MS0uOTgyIDcuMTE3LTIuOTQ1bDM2LjY3LTM2LjYyNmMzLjkzNS0zLjkzIDMuOTM5LTEwLjMwNy4wMDgtMTQuMjQyLTMuOTMtMy45MzUtMTAuMzA2LTMuOTM5LTE0LjI0Mi0uMDA4bC0zNi42NyAzNi42MjZjLTMuOTM1IDMuOTMtMy45MzkgMTAuMzA3LS4wMDggMTQuMjQyIDEuOTY3IDEuOTY5IDQuNTQ2IDIuOTUzIDcuMTI1IDIuOTUzeiIgZmlsbD0iIzAwMDAwMCIvPjxwYXRoIGQ9Im02Mi44MTkgNDMzLjIwNGMtMy44OTkgMy45NjYtMy44NDUgMTAuMzQzLjEyMiAxNC4yNDJsLjAyOS4wMjhjMS45NTcgMS45MjQgNC40OTggMi44ODIgNy4wMzggMi44ODIgMi42MDcgMCA1LjIxNC0xLjAwOSA3LjE4OS0zLjAxOCAzLjg5OS0zLjk2NiAzLjgzLTEwLjM1Ny0uMTM2LTE0LjI1Ni0zLjk2NS0zLjg5OS0xMC4zNDEtMy44NDQtMTQuMjQyLjEyMnoiIGZpbGw9IiMwMDAwMDAiLz48cGF0aCBkPSJtMzQyLjYwNiAzNTIuMjY3YzEuNTMyIDAgMy4wODYtLjM0OSA0LjU0NS0xLjA4NCA0Ljk2Ni0yLjUwNSA2Ljk2MS04LjU2MSA0LjQ1Ny0xMy41MjctMi41MDUtNC45NjYtOC41NjItNi45NjItMTMuNTI3LTQuNDU3bC0uMDU2LjAyOGMtNC45NjYgMi41MDUtNi45MzMgOC41NDctNC40MjkgMTMuNTEzIDEuNzY4IDMuNTA4IDUuMzI0IDUuNTI3IDkuMDEgNS41Mjd6IiBmaWxsPSIjMDAwMDAwIi8+PC9zdmc+Cg==" /> 
				<span style="display:block; font-size: 20px; font-family: Jua;"><b>��û�ϱ�</b></span></a>
				</div>
				<%-- <img
					src="${pageContext.request.contextPath}/resources/images/õ��������.JPG"
					alt="" style="width: 35%; height: 100%; float: right; margin-right: auto;"> --%>
			</div>
			<!--// view_profile -->
		</section>
		<div id="view_ticket"
			class="view_info view_info_reserve view_contents" style = "padding-bottom: 0px;">
			<section>
				<!-- ���� ���� ���� -->
				<div style="align-items: center;" class="view_box info_view_sty6">
				
				
					<dl class="clearfix" style="margin-top: 15px;">
						<dt>
							<p class="view_box_title">
						���ɻ� : <span style="margin-right: 400px;" class="count_txt">${list.mbtag}</span>
						�ο��� : <span  class="count_txt">${list.mbperson}</span>
					</p>
					
						<p class="view_box_title">
						������ : <span style="margin-right: 326px;" class="count_txt">${list.mbstartdate}</span>
						�Խñ� ����� : <span class="count_txt">${list.mbdate}</span>
					</p>
						
						<p class="view_box_title">
						��Ī ��û�� ���̵� : <span class="count_txt">${list.mbresult }(${list.mbstatus})</span>
					</p>
						</dt>
						<hr>
						<p style="margin-bottom: 30px;" class="view_box_title">
						���� : <span style="margin-top: 30px;" class="count_txt"><br>
						${list.mbcontent}</span>
						</p>
							
						<!-- 
						<dd>
							<h2>����</h2>
							<span id="distance" style="color: black;"></span>
						</dd> -->
					</dl>
			
				
				</div>
			</section>
		</div>
		
	</div>
	</c:forEach>
	
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38715a06f2433fec74cbd6060d15e8fa&libraries=services,clusterer,drawing"></script>
	<script>
		$(function() {
			// ��ġ����� ���� ����
			var startposition_y = 0;
			var startposition_x = 0;
			var endposition_y = 0;
			var endposition_x = 0;
			var distance = 0;
			// ������ġ�� ��ü��ġ �Ÿ� ����Լ�
			function calldistance(lat1, lon1, lat2, lon2, unit) {
				theta = lon1 - lon2;
				dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2))
						+ Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2))
						* Math.cos(deg2rad(theta));

				dist = Math.acos(dist);
				dist = rad2deg(dist);
				dist = dist * 60 * 1.1515;

				if (unit == "kilometer") {
					dist = dist * 1.609344;
				} else if (unit == "meter") {
					dist = dist * 1609.344;
				}
				return dist;
			}
			function deg2rad(deg) {
				return (deg * Math.PI / 180.0);
			}
			function rad2deg(rad) {
				return (rad * 180 / Math.PI);
			}

			// ���� ��ġ �������� �Լ�
			function getLocation() {
				if (navigator.geolocation) { // GPS�� �����Ѵٸ�...
					navigator.geolocation.getCurrentPosition(
							function(position) {
								// ���� ���� �浵
								// alert(position.coords.latitude + ' ' + position.coords.longitude);
								startposition_y = position.coords.latitude; // ����
								startposition_x = position.coords.longitude; // �浵
							}, function(error) {
								console.error("getLocation : " + error);
							}, {
								enableHighAccuracy : false,
								maximumAge : 0,
								timeout : Infinity
							});
				}
			}

			// ���� ��ġ �������� ȣ��
			getLocation();

			// �ּҷ� ���� �浵 �޾ƿ��� �Լ�
			var geocoder = new kakao.maps.services.Geocoder();
			var callback = function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					endposition_y = result[0].y; // ����
					endposition_x = result[0].x; // �浵
					console.log("����: " + endposition_y); // ����
					console.log("�浵: " + endposition_x); // �浵
					// �� ��ġ���� �Ÿ�
					distance = calldistance(startposition_y, startposition_x,
							endposition_y, endposition_x, 'kilometer');

					// ������ ǥ�õ� ��ġ
					var container = document.getElementById('map');
					// ���� ���� �ɼ�
					var options = {
						center : new kakao.maps.LatLng(endposition_y,
								endposition_x),
						draggable : false,
						level : 3
					};

					// ��������
					var map = new kakao.maps.Map(container, options);

					// ��Ŀ�� ǥ�õ� ��ġ
					var markerPosition = new kakao.maps.LatLng(endposition_y,
							endposition_x);
					// ��Ŀ ����
					var marker = new kakao.maps.Marker({
						position : markerPosition
					});
					marker.setMap(map);
					$('#distance').text(
							"���� ��ġ�κ��� �Ÿ� : " + distance.toFixed(2) + "km");
				} else {
					console.log("callback error");
					$('#distance').text("���� ��ġ�κ��� �Ÿ� : �� �� ����");
				}
			};
			var haddr = '<c:out value="${host.haddr}"/>'

			geocoder.addressSearch(haddr, callback);

			$.fn.priceBuilder = function(price) {
				// �ݾ׿� õ���� �޸� �߰����ִ� ����ǥ����
				return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}

			$(".product-price").each(function(idx) {
				// �ݾ׿� õ���� �޸��߰����ְ� �� �ڿ� ���� ����
				var value = $(this).text();
				$(this).text($.fn.priceBuilder(value) + ' ��');
			});

			// �̿�� Ŭ���� form post ����
			$("a[id=reservelink]")
					.each(
							function() {
								$(this)
										.click(
												function() {
													var hg = $(this).attr(
															'data-num');
													var $form = $('<form></form>');
													$form.attr('action',
															'reserve');
													$form
															.attr('method',
																	'post');
													$form.appendTo('body');
													var hnum = $('<input type="hidden" value="${host.hnum}" name="hnum">');
													var hgnum = $('<input type="hidden" value="' + hg + '" name="hgnum">');
													$form.append(hnum).append(
															hgnum);
													$form.submit();
												});
							});
		});
	</script>
	<!-- .section -->
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
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	</body>
	</html>