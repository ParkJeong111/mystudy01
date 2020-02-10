<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<style>


li {list-style: none;}
img{vertical-align:middle;max-width:100%;}
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
	font-size: 30px;
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
	width: 11.1111%;
	position: relative;
	top: 1px;
}

.talk_header .talk_tab li a {
	display: block;
	font-size: 16px;
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




.talk_area.container{position:relative;padding-bottom:135px;}
.talk_area.container.talk_top{padding-top:157px !important}
.talk_area .talk_banner_area{position:fixed;left:50%;margin-left:-482px;width:964px;z-index:1;top:0}
.talk_area .talk_banner_area section{position:absolute;left:-169px;width:141px;margin:0;top:250px}
.talk_area .talk_banner_area section.add_banner{top:550px}
.talk_area.talk_top .talk_banner_area section{top:207px;}
.talk_area.talk_top .talk_banner_area section.add_banner{top:507px}
.talk_area .contents_list{width:610px;float:left;position:relative;padding-top:45px;}
.talk_area .contents_list .talk_notice{border:1px solid #e6e6e6;background:#fff;border-radius:0.3rem;padding:10px 15px 15px;margin-bottom:5px;}
.talk_area .contents_list .talk_notice span{font-size:15px;color:#333333;font-weight:500;letter-spacing:-0.6px;float:left;display:block;position:relative;top:2px;}
.talk_area .contents_list .talk_notice span:after{width:5px;height:9px;margin:0 10px 0 5px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_02.png') no-repeat;background-size:100% auto;content:'';display:inline-block;}
.talk_area .contents_list .talk_notice .vTicker{float:left;width:calc(100% - 50px);}
.talk_area .contents_list .talk_notice .vTicker a{font-size:14px;color:#606060;letter-spacing:-0.5px;}
.talk_area .contents_list .talk_notice .vTicker{height:22px !important;}
.talk_area .contents_list .talk_notice .vTicker li{height:22px !important;}
.talk_area .contents_list .live_hot{background:#fff;border:1px solid #e6e6e6;padding:15px;position:relative;border-radius:0.3rem;}
.talk_area .contents_list .live_hot .hot_title{margin-right:10px;float:left;border:1px solid #dadada;border-radius:0.3rem;width:125px;height:30px;line-height:28px;font-size:16px;font-weight:500;text-align:center;}
.talk_area .contents_list .live_hot .hot_title span{color:#e84418}
.talk_area .contents_list .live_hot .hot_list{float:left;width:calc(100% - 135px);overflow:hidden;margin-top:3px;}
.talk_area .contents_list .live_hot .hot_list .vTicker{height:27px !important}
.talk_area .contents_list .live_hot .hot_list .vTicker li{height:27px !important}
.talk_area .contents_list .live_hot .hot_list .vTicker li span{color:#e84418}
.talk_area .talk_list .talk_box_area{background:#fff;border:1px solid #e6e6e6;border-radius:0.3rem;margin-top:15px;}
.talk_area .talk_list .talk_box_area .profile_line{padding:15px 20px;width:100%;display:table}
.talk_area .talk_list .talk_box_area .profile_line .profile_img{display:table-cell;vertical-align:middle;}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p{width:42px;height:42px;border-radius:100%;background:#d8d8d8;border:1px solid #f8f8f8;overflow:hidden;position:relative}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p:before{width:100%;height:17px;position:absolute;bottom:0;left:0;display:block;color:#fff;font-size:9px;text-align:center;z-index:1}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv0:before{content:'lv.0';background:#dc967c}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv1:before{content:'lv.1';background:#ec440b}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv2:before{content:'lv.2';background:#ffba12}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv3:before{content:'lv.3';background:#55b44d}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv4:before{content:'lv.4';background:#4595ec}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv5:before{content:'lv.5';background:#4c65d5}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv6:before{content:'lv.6';background:#845bbd}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv7:before{content:'lv.7';background:#bb4e4e}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv8:before{content:'lv.8';background:linear-gradient(to right, #a8f5ff, #d6faff 28%, #40bcd3 77%, #218092);}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv9:before{content:'lv.9';background:linear-gradient(to right, #ffbf16, #ffe4b2 33%, #f2ad4e 69%, #ffe151);}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv10:before{content:'lv.10';background:linear-gradient(to right, #e06e6e, #fadb25 33%, #9eda51 68%, #486ce8);}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv99:before{content:'M';background:linear-gradient(to bottom, #616161, #171717);}
.talk_area .talk_list .talk_box_area .profile_line .profile_img p.lv98:before{background:linear-gradient(to bottom, #ffd848, #ff3600);}

.talk_area .talk_list .talk_box_area .profile_line .profile_name{display:table-cell;vertical-align:middle;width:100%;padding:0 10px}
.talk_area .talk_list .talk_box_area .profile_line .profile_name strong{font-size:16px;font-weight:500;letter-spacing:-0.6px;display:block}
.talk_area .talk_list .talk_box_area .profile_line .profile_name p{font-size:14px;color:#878787;letter-spacing:-0.6px;}
.talk_area .talk_list .talk_box_area .profile_line .profile_name p img{width:8px;margin-right:4px;margin-top:-2px;}
.talk_area .talk_list .talk_box_area .profile_line .profile_date{display:table-cell;vertical-align:middle;position:relative;}
.talk_area .talk_list .talk_box_area .profile_line .profile_date p{width:135px;text-align:right;font-size:14px;color:#878787;letter-spacing:-0.6px}
.talk_area .talk_list .talk_box_area .profile_line .profile_date p.up:before{position:relative;top:-1px;margin-right:4px;font-size:11px;color:#878787;text-align:center;display:inline-block;width:26px;height:14px;line-height:12px;border-radius:3rem;border:1px solid #e6e6e6;content:'UP'}
.talk_area .talk_list .talk_box_area .talk_view_btn{display:block;}
.talk_area .talk_list .talk_box_area .talk_pic{padding:0 15px 10px;font-size:0}
.talk_area .talk_list .talk_box_area .talk_pic span{height:28px;line-height:26px;font-size:15px;padding:0 8px;letter-spacing:-0.6px;border-radius:0.3rem;display:inline-block;margin-left:8px;}
.talk_area .talk_list .talk_box_area .talk_pic span:first-child{margin-left:0}
.talk_area .talk_list .talk_box_area .talk_pic span.live{background:#e84418;color:#fff}
.talk_area .talk_list .talk_box_area .talk_pic span.manage{border:1px solid #e84418;color:#e84418}
.talk_area .talk_list .talk_box_area .talk_pic span.kind{border:1px solid #dadada;color:#2663e2}
.talk_area .talk_list .talk_box_area .talk_text{padding:0 20px 15px;display:block}
.talk_area .talk_list .talk_box_area .talk_text strong{display:block;font-size:17px;font-weight:500;letter-spacing:-0.7px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;line-height:1;height:21px;}
.talk_area .talk_list .talk_box_area .talk_text p{font-size:15px;color:#454545;letter-spacing:-0.6px;line-height:1.3;margin-top:10px}
.talk_area .talk_list .talk_box_area .talk_text p.more:after{color:#c0c0c0;}
.talk_area .talk_list .talk_box_area .talk_visual{position:relative;width:608px;height:300px;overflow:hidden;background:#eee url('https://img.moolban.com/unsafe/asset/common/img/low_404image.png') top 50% left no-repeat;background-size:100% auto;}
.talk_area .talk_list .talk_box_area .talk_visual img{width:100%;}
.talk_area .talk_list .talk_box_area .talk_visual em{font-size:15px;color:#fff;letter-spacing:-0.6px;display:block;position:absolute;top:0;right:0;height:22px;line-height:20px;background:rgba(0, 0, 0, 0.7);padding:0 5px;}
.talk_area .talk_list .talk_box_area .talk_visual i{width:30px;position:absolute;top:20px;left:20px;}
.talk_area .talk_list .talk_box_area .talk_visual_more{position:absolute;bottom:45px;left:50%;margin-left:-49px;text-align:center;border:1px solid #ffffff;background:rgba(0, 0, 0, 0.22);border-radius:3rem;width:98px;height:32px;line-height:30px;font-size:15px;color:#ffffff;}
.talk_area .talk_list .talk_box_area .swiper-caption{width:auto;padding:0 9px;height:26px;line-height:24px;font-size:14px;color:#fff;background: rgba(0, 0, 0, 0.7);position:absolute;top:15px;bottom:auto;left:auto;right:15px;text-align:center;z-index:2;border-radius:3rem;font-weight:300}
.talk_area .talk_list .talk_box_area .swiper-button-next,
.talk_area .talk_list .talk_box_area .swiper-button-prev{width:40px;height:40px;border-radius:100%;position:absolute;top:50%;}
.talk_area .talk_list .talk_box_area .swiper-button-prev,
.talk_area .talk_list .talk_box_area .swiper-container-rtl .swiper-button-next{background:rgba(0, 0, 0, 0.7) url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_slide_prev.png') left 12px top 50% no-repeat;background-size:13px auto;left:15px}
.talk_area .talk_list .talk_box_area .swiper-button-next,
.talk_area .talk_list .talk_box_area .swiper-container-rtl .swiper-button-prev{background:rgba(0, 0, 0, 0.7) url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_slide_next.png') left 16px top 50% no-repeat;background-size:13px auto;right:15px;left:auto}
.talk_area .talk_list .talk_box_area .swiper-button-next.swiper-button-disabled,
.talk_area .talk_list .talk_box_area .swiper-button-prev.swiper-button-disabled{pointer-events:visible}
.talk_area .talk_list .talk_box_area .swiper-pagination-bullet{width:8px;height:8px;background: rgba(255, 255, 255, 0.3);opacity:1}
.talk_area .talk_list .talk_box_area .swiper-pagination-bullet-active{background:#fff}
.talk_area .talk_list .talk_box_area .talk_count_btn{padding:0 20px}
.talk_area .talk_list .talk_box_area .talk_count{padding:15px 0;border-bottom:1px solid #ebebeb}
.talk_area .talk_list .talk_box_area .talk_count p{font-size:15px;color:#454545;font-weight:500;letter-spacing:-0.6px;float:left}
.talk_area .talk_list .talk_box_area .talk_count span{color:#878787;font-weight:normal;}
.talk_area .talk_list .talk_box_area .talk_count .comm_mark_line{float:right}
.talk_area .talk_list .talk_box_area .talk_count .comm_mark_line p{margin-left:20px;}
.talk_area .talk_list .talk_box_area .talk_btn a{font-size:15px;color:#606060;letter-spacing:-0.6px;text-align:center;width:33.3333%;display:block;float:left;padding:10px 0 15px 30px;}
.talk_area .talk_list .talk_box_area .talk_btn .talk_like_btn:before{width:27px;height:20px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_like_off.png') no-repeat;background-size:auto 20px;content:'';position:relative;top:3px;margin-right:10px;}
.talk_area .talk_list .talk_box_area .talk_btn .talk_like_btn.on:before{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_like_on.png') no-repeat;background-size:auto 20px;}
.talk_area .talk_list .talk_box_area .talk_btn .talk_comm_btn:before{width:21px;height:20px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_comment.png') no-repeat;background-size:auto 20px;content:'';position:relative;top:4px;margin-right:10px;}
.talk_area .talk_list .talk_box_area .talk_btn .talk_mark_btn:before{width:17px;height:20px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_mark_off.png') no-repeat;background-size:auto 20px;content:'';position:relative;top:4px;margin-right:10px;}
.talk_area .talk_list .talk_box_area .talk_btn .talk_mark_btn.on:before{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_mark_on.png') no-repeat;background-size:auto 20px;}
.talk_area .contents_pic{float:right;width:324px;padding-top:45px}
.talk_area .contents_pic .pic_title{font-size:16px;font-weight:500;}
.talk_area .talk_best{margin-bottom:20px}
.talk_area .talk_best a:after{display:block;content:'';clear:both}
.talk_area .talk_best a{display:block;background:#fff;box-shadow:0 0 5px 0 rgba(0, 0, 0, 0.1);padding:15px;position:relative;margin-top:10px;border-radius:0.3rem}
.talk_area .talk_best a img{width:120px;height:103px;display:block;float:left}
.talk_area .talk_best a .best_text{padding-left:15px;width:calc(100% - 120px);float:left;}
.talk_area .talk_best a strong{font-size:15px;color:#454545;letter-spacing:-0.8px;font-weight:normal}
.talk_area .talk_best a p{margin-top:10px;font-size:16px;font-weight:500;letter-spacing:-0.8px;line-height:1.4;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;height:42px}
.talk_area .talk_best a span{width:159px;display:block;position:absolute;bottom:15px;font-size:14px;color:#2663e2;letter-spacing:-0.6px}
.talk_area .talk_best a span i{float:right;color:#878787;}
.talk_area .talk_recom{margin-bottom:20px}
.talk_area .talk_recom a:after{display:block;content:'';clear:both}
.talk_area .talk_recom a{display:block;background:#fff;box-shadow:0 0 5px 0 rgba(0, 0, 0, 0.1);padding:15px;position:relative;margin-top:10px;border-radius:0.3rem}
.talk_area .talk_recom a img{width:120px;height:103px;display:block;float:left}
.talk_area .talk_recom a .recom_text{padding-left:15px;width:calc(100% - 120px);float:left;}
.talk_area .talk_recom a em{display:block;color:#2663e2;letter-spacing:-0.8px;font-size:15px;margin-bottom:10px}
.talk_area .talk_recom a strong{font-size:15px;color:#454545;letter-spacing:-0.8px;font-weight:normal;line-height:1.4}
.talk_area .talk_recom a span{width:159px;display:block;position:absolute;bottom:15px;font-size:14px;color:#b5b5b5;letter-spacing:-0.6px}
.talk_area .talk_recom a span i{float:right;color:#454545;font-size:16px}
.talk_area .talk_plan{margin-bottom:20px}
.talk_area .talk_plan a:first-child{margin-top:10px}
.talk_area .talk_plan a{display:block;margin-top:15px;border-radius:0.3rem;overflow:hidden;}
.talk_area .talk_filter{position:fixed;width:964px;left:50%;margin-left:-482px;bottom:0;z-index:1}
.talk_area .talk_filter section{width:235px;position:absolute;left:188px;bottom:40px;background:#fff;border-radius:3rem;box-shadow:0 0 10px 0 rgba(0, 0, 0, 0.1);padding:5px 0}
.talk_area .talk_filter a{width:50%;float:left;text-align:center;font-size:16px;color:#6c6c6c;height:44px;line-height:42px;padding-left:15px;position:relative;}
.talk_area .talk_filter a.active{color:#e84418}
.talk_area .talk_filter a.active:after{width:6px;height:6px;content:'';background:#e84418;border-radius:100%;display:block;position:absolute;top:10px;right:28px}
.talk_area .talk_filter .talk_filter01{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt01_off.png') top 13px left 25px no-repeat;background-size:auto 20px;border-right:1px solid #e6e6e6}
.talk_area .talk_filter .talk_filter01.active{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt01_on.png') top 13px left 25px no-repeat;background-size:auto 20px;}
.talk_area .talk_filter .talk_filter02{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt02_off.png') top 13px left 23px no-repeat;background-size:auto 20px;}
.talk_area .talk_filter .talk_filter02.active{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_flt02_on.png') top 13px left 23px no-repeat;background-size:auto 20px;}
.talk_area .talk_filter .talk_write_btn{width:85px;height:85px;display:block;position:absolute;bottom:0;right:-185px;line-height:normal;padding:0;float:none}
.talk_area .talk_filter2{position:fixed;width:964px;left:50%;margin-left:-482px;bottom:0;z-index:1}
.talk_area .talk_filter2 section{width:235px;position:absolute;left:188px;bottom:40px;}
.talk_area .talk_filter2 .talk_write_btn{width:85px;height:85px;display:block;position:absolute;bottom:0;right:-185px;}
.talk_area .talk_filter3{position:fixed;width:964px;left:50%;margin-left:-482px;bottom:0;z-index:1}
.talk_area .talk_filter3 section{width:235px;position:absolute;left:188px;bottom:40px;background:#fff;border-radius:3rem;box-shadow:0 0 10px 0 rgba(0, 0, 0, 0.1);padding:5px 0}
.talk_area .talk_filter3 a{width:50%;float:left;text-align:center;font-size:16px;color:#6c6c6c;height:44px;line-height:42px;padding-left:15px;position:relative;}
.talk_area .talk_filter3 .talk_write_btn{width:85px;height:85px;display:block;position:absolute;bottom:0;right:-185px;line-height:normal;padding:0;float:none}
.talk_area .talk_filter3 .talk_filter03{width:100%;color:#ff724c;font-weight:500;float:none;display:block;text-align:center;padding:0;font-size:18px;}
.talk_area .talk_filter3 .talk_filter03.active:after{content:'';width:6px;height:6px;background:#e84418;border-radius:100%;display:block;position:absolute;top:5px;right:22px}



.talk_area .talk_list .talk_count_box{font-size:16px;color:#747474;letter-spacing:-0.2px;margin-top:30px;}
.talk_area .talk_list .talk_count_box strong{font-weight:500;color:#000}
.talk_area .talk_list .talk_box_area .talk_count .deal_line{color:#878787;font-weight:normal;letter-spacing:-0.7px;}
.talk_area .talk_list .talk_box_area .talk_count .deal_line strong{font-weight:500;color:#454545;}
.talk_area .talk_list .talk_box_area .talk_btn .talk_pay{padding:15px 0;color:#000000;font-size:16px;position:relative;font-weight:500}
.talk_area .talk_list .talk_box_area .talk_btn .talk_pay.deal{padding:8px 0}
.talk_area .talk_list .talk_box_area .talk_btn .talk_pay.deal:before{font-size:12px;color:#606060;display:block;margin-bottom:3px;font-weight:normal;}
.talk_area .talk_list .talk_box_area .talk_pic .sold{background:#cccccc;color:#fff}
.talk_area .talk_list .talk_box_area .talk_pic .jgo{border:1px solid #ff724c;color:#ff724c}
.talk_area .talk_list .talk_box_area .talk_pic .buy{border:1px solid #dadada;color:#267b96}
.talk_area .talk_list .talk_box_area .talk_pic .sell{border:1px solid #dadada;color:#2663e2}
.talk_area .talk_list .talk_box_area.jgo_sold .talk_text, .talk_area .talk_list .talk_box_area.jgo_sold .talk_btn .talk_pay{opacity:.3;}
.talk_area .talk_list .talk_box_area.jgo_sold .talk_visual{opacity:.5}
.talk_area .talk_list .talk_box_area.jgo_sold .talk_visual:after{font-size:22px;color:#fff;position:absolute;bottom:0;left:0;width:100%;z-index:99;background:rgba(0, 0, 0, 0.3);height:50px;line-height:48px;text-align:center}


</style>



	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_4.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

	<div class="wrap_area">
		<div class="header_area" style="padding-top: 20px;">


			<!-- <div class="scrolling scroll_up">

							<div class="header_title">
					<section>
						<a class="title_reserve_line">����˻�</a>
						<p class="h_tit">
							�ݹ���													</p>
					</section>
				</div> -->



			<!-- ��� ���� -->
			<div class="list_header" style="display: none">
				<div class="list_menu_area ">
					<section>
						<ol>
						</ol>
					</section>
				</div>
				<div class="list_filter_hide wide_filter">
					<div class="list_filter_area">
						<section class="clearfix">
							<a class="adress_btn">���� ����</a> <a class="filter_btn">����<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/filter_ico04.png"
								alt="" style="display: none"></a> <a class="map_btn">��������</a>
							<div class="filter_warp">
								<div class="select_btn">
									<p class="select_title">�Ÿ���</p>
								</div>
								<div class="select_btn">
									<p class="select_title">500km</p>
								</div>
							</div>
							<div class="guide_wrap">
								<!--a class="redfilter_btn">�ǽð����� �켱����<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/filter_ico04.png" alt=""></a-->
								<a class="guide_btn" href="/guide/index">���հ��̵�</a>
							</div>
							<div class="etc_wrap" style="display: none">
								<a class="prohibit_btn on">���ñ���<img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/filter_ico04.png"
									alt=""></a> <a class="point_btn">����Ʈ���</a>
							</div>
						</section>
					</div>
					<div class="ico_filter_area" style="display: none"></div>
				</div>
			</div>

			<!-- ���� -->
			<div class="reserve_header" style="display: none">
				<section class="reserve_header_pc">
					<!-- <div class="location_setting clearfix">
					<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_setting_ico.png" alt="">
					<p class="pos_addr_text">���� ��õ�� ���굿</p>
					<a class="btn_geo_popup">��ġ����</a>
				</div> -->

					<div class="filtter_btn">
						<a class="fish_btn">����<em><span class="cnt_txt">�䲿��������
									�� 1��</span><i>����</i></em></a> <a class="person_btn">�ο�<em><span
								class="cnt_txt">100��</span><i>����</i></em></a> <a class="area_btn">����<em><span
								class="cnt_txt">��⵵ �����ֽ� �� 5��</span><i>����</i></em></a> <a
							class="detail_btn">������<em><span class="cnt_txt">5��
									����</span><i>����</i></em></a>
					</div>
				</section>

				<section class="reserve_header_mo">
					<a class="fish_btn">����<span class="cnt"></span></a> <a
						class="person_btn">�ο�<span class="cnt"></span></a> <a
						class="area_btn">����<span class="cnt"></span></a> <a
						class="detail_btn">������<span class="cnt"></span></a>
				</section>
			</div>

			<!-- ���ô�ȸ -->
			<div class="contest_header" style="display: none">
				<section></section>
			</div>

			<!-- ����Ʈ -->
			<div class="point_header" style="display: none">
				<section>
					<a class="point_guide" target="_blank" href="/more/caution_list">���ǻ���</a>
				</section>
			</div>

		</div>
	</div>


	<!-- /* �˾� */ -->
	<div class="openM_opacity" style="display: none;"></div>
	<div class="openM2_opacity" style="display: none;"></div>

	<!-- ��ȸ�� �ֹ���ȸ �˾� -->
	<div class="popupsm_opacity popup_more_nomember" style="display: none;">
		<div class="popup_area">
			<form id="reserve_form" action="/reserve/reserve_view" method="POST"
				novalidate="novalidate">
				<a class="closein_btn"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
					alt="�˾��ݱ�"></a>
				<div class="popup_section">
					<h2 class="popup_title">��ȸ�� �ֹ���ȸ</h2>
					<div class="popup_inner">
						<div class="nomember_box">
							<dl>
								<dt>�ֹ��ڸ�</dt>
								<dd>
									<input type="text" name="srch_ord_name" placeholder="�ֹ��ڸ�">
								</dd>
							</dl>
							<dl>
								<dt>����/�ֹ���ȣ</dt>
								<dd>
									<input type="tel" name="o_key" placeholder="����/�ֹ���ȣ"
										data-number-mask="" maxlength="10" style="text-align: right;">
								</dd>
							</dl>
							<!--
								<dl>
									<dt>�޴�����ȣ</dt>
									<dd><input type="tel" name="srch_ord_phone" placeholder="�޴�����ȣ" data-phone-mask maxlength="13"></dd>
								</dl>
							-->
							<p>�ֹ��ڸ�, ����/�ֹ���ȣ�� �ʼ��Դϴ�.</p>
						</div>
						<div class="wrap_btn wrap_btn2">
							<a class="wrap_close">���</a> <a class="reserve_info_btn">Ȯ��</a>
						</div>
						<!--// wrap_btn -->
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// ��ȸ�� �ֹ���ȸ �˾� -->

	<!-- ������� �˾� -->
	<div class="popup_opacity popup_info_fare" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">�������</h2>
				<div class="popup_inner">
					<div class="view_area"></div>
					<!--// view_area -->
				</div>
			</div>
		</div>
	</div>
	<!--// ������� �˾� -->

	<!-- �̺�Ʈ �˾� -->
	<div class="popup_opacity popup_info_event" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">�̺�Ʈ</h2>
				<div class="popup_inner">
					<dl class="eventbox_area">
						<dt></dt>
						<dd></dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<!--// �̺�Ʈ �˾� -->

	<!-- ä��/��� �˾� -->
	<div class="popup_opacity popup_info_chaebi popup_info_vote"
		style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">ä������</h2>
				<div class="popup_inner"></div>
			</div>
		</div>
	</div>
	<!--// ä��/��� �˾� -->

	<!-- ��ǰ���� �˾� -->
	<div class="popup_opacity popup_info_goods" data-saledate=""
		style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<form method="post" id="popup_reserve_form">

				<input type="hidden" name="c_key" value=""> <input
					type="hidden" name="srch_chkin_date" value=""> <input
					type="hidden" name="filter_person" value="1"> <input
					type="hidden" name="insur_chk" value="">
				<div class="popup_section">
					<h2 class="popup_title">��ǰ �����ϱ�</h2>
					<div class="popup_inner">
						<div class="scroll_area label_check"></div>
						<!--// scroll_area -->
						<div class="scroll_btn_box check_off" data-os_type="W"
							data-insu_txt_show="Y">
							<!-- ��ǰ�� ������� .check_off �߰�  -->
							<a>��ǰ����</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// ��ǰ���� �˾� -->

	<!-- �ο����� �˾� -->
	<div class="popupsm_opacity popup_personnel_change"
		style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">�ο� ����</h2>
				<div class="popup_inner">
					<div class="change_box">
						<a class="minus"></a>
						<p>
							<span class="filter_person">1</span>��
						</p>
						<a class="add active"></a>
					</div>
					<!--// change_box -->

					<div class="group_box">
						<p>���ϴ� ���ǿ� ���缭 ��ü ���� ��ǰ�� ��õ�ص����.</p>
						<a href="/reserve/orders_recommend">��ü���� �ٷΰ���</a>
					</div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">���</a> <a class="change_ok">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// �ο����� �˾� -->

	<!-- confirm �˾� -->
	<div class="popupsm_opacity popup_confirm" style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<h2 class="popup_title" style="display: none"></h2>
				<div class="popup_inner">
					<div class="group_box"></div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">���</a> <a class="confirm_ok">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// confirm �˾� -->

	<!-- confirm �ݱ⸸ �˾� -->
	<div class="popupsm_opacity popup_close_confirm" style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<h2 class="popup_title" style="display: none"></h2>
				<div class="popup_inner">
					<div class="group_box"></div>
					<!--// group_box -->
					<div class="wrap_btn wrap_full_btn">
						<a class="wrap_close">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// confirm �ݱ⸸ �˾� -->

	<!-- confirm �˾� -->
	<div class="popupsm_opacity popup_login_confirm" style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<h2 class="popup_title">��ȭ�ϱ� �ȳ�</h2>
				<div class="popup_inner">
					<div class="group_box">��ȭ�ϱ�� �α��� �� �̿밡���մϴ�.</div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">���</a> <a href="/mypage/login">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// confirm �˾� -->

	<!-- ������ �ȳ� �˾� -->
	<div class="popupsm_opacity popup_customer_center"
		style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<div class="popup_inner">
					<div class="group_box">
						<span class="tel_msg"></span> <span class="c_phone"></span>
					</div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="popup_close mo_btn">���</a> <a class="popup_close pc_btn">���</a>
						<a class="m_c_phone" href="tel:1599-6975">��ȭ</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// ������ �ȳ� �˾� -->

	<!-- ������� �˾� -->
	<div class="popupsm_opacity popup_coupon" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">���� ���</h2>
				<div class="popup_inner">
					<div class="coupon_box">
						<input type="text" name="coupon_code" placeholder="���� �ڵ带 �Է��ϼ���."
							maxlength="28">
						<p>���� ��� �� �Ⱓ, ����, ��� ���� ���� �� Ȯ���ϼ���.</p>
						<p>�����ڵ� ��� �� ���ĺ� ��ҹ��ڴ� ���� �������� �ʽ��ϴ�.</p>
					</div>
					<div class="wrap_btn wrap_btn2">
						<a class="popup_close">���</a> <a class="popup_coupon_reg">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// ������� �˾� -->

	<!-- �佺Ʈ�˸�-->
	<div class="alert_area" style="display: none">
		<p></p>
	</div>
	<!--// �佺Ʈ�˸�-->

	<!-- ������ü���� �˾� -->
	<div class="popup_opacity popup_view_photo" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title"></h2>
				<div class="popup_inner"></div>
			</div>
		</div>
	</div>
	<!--// ������ü���� �˾� -->

	<!-- ��������Ʈ ����ϱ� �˾� -->
	<div class="popup_opacity popup_point" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">��������Ʈ ����ϱ�</h2>
				<div class="popup_inner">
					<div class="map">
						<!-- <img src="https://img.moolban.com/unsafe/asset/www/responsive/img/test/view_test_img_07.png" alt="" style="width:100%;height:100%"> -->

						<div class="point_choice_area">
							<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/point_ico03.png"
								alt="" class="ico_point">
							<p>
								������ ������ ����Ʈ�� ������ּ���.<a href="">����Ʈ ����</a>
							</p>
						</div>
					</div>
					<!--// map -->

					<div class="inner">
						<dl class="point_ps_txt">
							<dt>
								����Ʈ���� �˼� ���׿� ���� ����� �� �ֽ��ϴ�.<br>��ϵ� ����Ʈ �󼼿� �г����� ������ �帳�ϴ�.
							</dt>
							<dd>����) ���ݰ��ݴ��� ����� ����Ʈ�Դϴ�.</dd>
						</dl>

						<p class="ps_txt">* �ʼ� �Է� �׸��Դϴ�.</p>

						<div class="point_box">
							<dl class="half_box">
								<dt>����Ʈ��</dt>
								<dd>
									<input type="text" placeholder="����Ʈ���� �Է����ּ���."><i>*</i>
								</dd>
							</dl>
							<dl class="half_box">
								<dt>�ּ�</dt>
								<dd>
									��⵵ ����<i>*</i>
								</dd>
							</dl>
						</div>

						<div class="point_check_box">
							<p class="point_title">
								�ֿ����<i>*</i>
							</p>
							<div class="check_kind_box">
								<a class="more_kind">���� ��κ���</a>
								<div class="check_kind clearfix">
									<div class="line_box_area">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����ġ</ins>
											</label> <label> <input type="checkbox"> <ins>����ġ</ins>
											</label> <label> <input type="checkbox"> <ins>�ݺؾ�</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����</ins>
											</label> <label> <input type="checkbox"> <ins>����</ins>
											</label> <label> <input type="checkbox"> <ins>���ڰ�</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����</ins>
											</label> <label> <input type="checkbox"> <ins>�ޱ�</ins>
											</label> <label> <input type="checkbox"> <ins>�轺</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>�ձٹٸ�</ins>
											</label> <label> <input type="checkbox"> <ins>���ؾ�</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">������(�ι�)</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����׾�</ins>
											</label> <label> <input type="checkbox"> <ins>������</ins>
											</label> <label> <input type="checkbox"> <ins>����</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����׾�</ins>
											</label> <label> <input type="checkbox"> <ins>������</ins>
											</label> <label> <input type="checkbox"> <ins>����</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����</ins>
											</label> <label> <input type="checkbox"> <ins>�׾�</ins>
											</label> <label> <input type="checkbox"> <ins>���</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����</ins>
											</label> <label> <input type="checkbox"> <ins>�۾�</ins>
											</label> <label> <input type="checkbox"> <ins>���</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>���</ins>
											</label> <label> <input type="checkbox"> <ins>��ؾ�</ins>
											</label> <label> <input type="checkbox"> <ins>�ι���Ÿ</ins>
											</label>
										</div>
									</div>
								</div>
								<!--// check_kind -->
							</div>
						</div>
						<!--// point_check_box -->

						<div class="point_check_box">
							<p class="point_title">
								�ֿ�̳�<i>*</i>
							</p>
							<div class="check_kind_box">
								<a class="more_kind">�̳� ��κ���</a>
								<div class="check_kind clearfix">
									<div class="line_box_area">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>����(�⺻)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">����(���)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">����(�۷��ٷ�)</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins
													class="on">����(��������)</ins>
											</label> <label> <input type="checkbox"> <ins>���</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">���̳�(������)</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins
													class="on">���̳�(����)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">���̳�(������)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">���̳�(���ؾ�)</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>��Ÿ</ins>
											</label>
										</div>
									</div>
								</div>
								<!--// check_kind -->
							</div>
						</div>
						<!--// point_check_box -->

						<dl class="tip_box">
							<dt>�߰� TIP</dt>
							<dd>
								<input type="text" placeholder="�߰� TIP�� �Է����ּ���.">
							</dd>
						</dl>
						<dl class="tip_box">
							<dt>�߰� TIP</dt>
							<dd>
								<input type="text" placeholder="�߰� TIP�� �Է����ּ���."><a><img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_03.png"
									alt=""></a>
							</dd>
						</dl>

						<div class="add_tip_btn clearfix">
							<a>�߰��ϱ�</a>
						</div>

						<div class="full_btn_moolban">
							<a href="">����Ʈ ����ϱ�</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// ��������Ʈ ����ϱ� �˾� -->

	<!-- ��¥���� �˾� -->
	<div class="popup_opacity popup_date_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">��¥ ����</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="date_area">
							<p>
								2018�� 7�� <span class="one_pic">õ������</span>
							</p>
							<table>
								<tbody>
									<tr>
										<th>��</th>
										<th>��</th>
										<th>ȭ</th>
										<th>��</th>
										<th>��</th>
										<th>��</th>
										<th>��</th>
									</tr>
									<tr>
										<td class="off"><a><strong>1</strong></a></td>
										<td class="off"><a><strong>2</strong></a></td>
										<td class="off"><a><strong>3</strong></a></td>
										<td class="off"><a><strong>4</strong></a></td>
										<td class="off"><a><strong>5</strong><span>��5.22</span></a>
										</td>
										<td class="off"><a><strong>6</strong></a></td>
										<td class="none"><a><strong>7</strong></a></td>
									</tr>
									<tr>
										<td class="none"><a><strong>8</strong></a></td>
										<td class="none"><a><strong>9</strong></a></td>
										<td class="today"><a><strong>10</strong></a></td>
										<td><a><strong>11</strong></a></td>
										<td class="on"><a><strong>12</strong><span>��5.29</span></a>
										</td>
										<td><a><strong>13</strong></a></td>
										<td><a><strong>14</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>15</strong></a></td>
										<td><a><strong>16</strong></a></td>
										<td class="one_pic date_pic"><a><strong>17</strong></a></td>
										<td><a><strong>18</strong></a></td>
										<td><a><strong>19</strong></a></td>
										<td><a><strong>20</strong></a></td>
										<td><a><strong>21</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>22</strong></a></td>
										<td><a><strong>23</strong></a></td>
										<td><a><strong>24</strong></a></td>
										<td><a><strong>25</strong></a></td>
										<td><a><strong>26</strong></a></td>
										<td><a><strong>27</strong></a></td>
										<td><a><strong>28</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>29</strong></a></td>
										<td><a><strong>30</strong></a></td>
										<td><a><strong>31</strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="date_area">
							<p>2018�� 8��</p>
							<table>
								<tbody>
									<tr>
										<th>��</th>
										<th>��</th>
										<th>ȭ</th>
										<th>��</th>
										<th>��</th>
										<th>��</th>
										<th>��</th>
									</tr>
									<tr>
										<td class="off"><a><strong>1</strong></a></td>
										<td class="off"><a><strong>2</strong></a></td>
										<td class="off"><a><strong>3</strong></a></td>
										<td class="off"><a><strong>4</strong></a></td>
										<td class="off"><a><strong>5</strong><span>��5.22</span></a>
										</td>
										<td class="off"><a><strong>6</strong></a></td>
										<td class="none"><a><strong>7</strong></a></td>
									</tr>
									<tr>
										<td class="none"><a><strong>8</strong></a></td>
										<td class="none"><a><strong>9</strong></a></td>
										<td class="today"><a><strong>10</strong></a></td>
										<td><a><strong>11</strong></a></td>
										<td class="on"><a><strong>12</strong><span>��5.29</span></a>
										</td>
										<td><a><strong>13</strong></a></td>
										<td><a><strong>14</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>15</strong></a></td>
										<td><a><strong>16</strong></a></td>
										<td><a><strong>17</strong></a></td>
										<td><a><strong>18</strong></a></td>
										<td><a><strong>19</strong></a></td>
										<td><a><strong>20</strong></a></td>
										<td><a><strong>21</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>22</strong></a></td>
										<td><a><strong>23</strong></a></td>
										<td><a><strong>24</strong></a></td>
										<td><a><strong>25</strong></a></td>
										<td><a><strong>26</strong></a></td>
										<td><a><strong>27</strong></a></td>
										<td><a><strong>28</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>29</strong></a></td>
										<td><a><strong>30</strong></a></td>
										<td><a><strong>31</strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="date_area">
							<p>2018�� 9��</p>
							<table>
								<tbody>
									<tr>
										<th>��</th>
										<th>��</th>
										<th>ȭ</th>
										<th>��</th>
										<th>��</th>
										<th>��</th>
										<th>��</th>
									</tr>
									<tr>
										<td class="off"><a><strong>1</strong></a></td>
										<td class="off"><a><strong>2</strong></a></td>
										<td class="off"><a><strong>3</strong></a></td>
										<td class="off"><a><strong>4</strong></a></td>
										<td class="off"><a><strong>5</strong><span>��5.22</span></a>
										</td>
										<td class="off"><a><strong>6</strong></a></td>
										<td class="none"><a><strong>7</strong></a></td>
									</tr>
									<tr>
										<td class="none"><a><strong>8</strong></a></td>
										<td class="none"><a><strong>9</strong></a></td>
										<td class="today"><a><strong>10</strong></a></td>
										<td><a><strong>11</strong></a></td>
										<td class="on"><a><strong>12</strong><span>��5.29</span></a>
										</td>
										<td><a><strong>13</strong></a></td>
										<td><a><strong>14</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>15</strong></a></td>
										<td><a><strong>16</strong></a></td>
										<td><a><strong>17</strong></a></td>
										<td><a><strong>18</strong></a></td>
										<td><a><strong>19</strong></a></td>
										<td><a><strong>20</strong></a></td>
										<td><a><strong>21</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>22</strong></a></td>
										<td><a><strong>23</strong></a></td>
										<td><a><strong>24</strong></a></td>
										<td><a><strong>25</strong></a></td>
										<td><a><strong>26</strong></a></td>
										<td><a><strong>27</strong></a></td>
										<td><a><strong>28</strong></a></td>
									</tr>
									<tr>
										<td><a><strong>29</strong></a></td>
										<td><a><strong>30</strong></a></td>
										<td><a><strong>31</strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
										<td><a><strong></strong></a></td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<p>
							2018�� 7�� 19�� <span>(����) 6.7<i>�ӽð�����</i></span>
						</p>
						<a href="">��¥ ���� �Ϸ�</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// ��¥���� �˾� -->

	<!-- �������� �˾� -->
	<div class="popup_opacity popup_fish_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					�������� <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">�ʱ�ȭ</a>
				</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="fish_chk_area">
							<!-- <a>���� ��ü<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_04.png" alt=""></a> -->
							<p>���ϴ� ������ �������ּ���.</p>
						</div>

						<div class="fish_chk_label">
							<div class="all_chk">
								<label> <input type="checkbox"> <ins></ins> <span>����
										��ü</span>
								</label>
							</div>
							<div class="choice_chk">
								<label> <input type="checkbox"> <ins></ins> <span>�췰</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>������</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>���</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>���</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>���ٸ�</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����¡��</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>�޲ٹ�</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>��ġ</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>�νø�</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>������</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>�ξ�</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>���ڹ�</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>������</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>���</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>�ٴٱ�Ÿ</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>��ġ</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>��ġ</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>�ɼ���</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>����
										��¡��</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>�뱸</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>��ġ</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>������</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>������</span>
								</label>
							</div>
						</div>

					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<a href="">���� �Ϸ�</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// �������� �˾� -->

	<!-- �������� �˾� -->
	<div class="popup_opacity popup_area_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					�������� <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">�ʱ�ȭ</a>
				</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="area_chk_area">
							<a>����/��õ/����/����<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_04.png"
								alt=""></a>
							<!-- <p>���ϴ� ������ �������ּ���.</p> -->
						</div>

						<div class="area_chk_label clearfix">
							<ul class="area_chk_tab">
								<li class="active"><a href="#area_chk1">��ü</a></li>
								<li><a href="#area_chk2">���ر�</a></li>
								<li><a href="#area_chk3">���ر�</a></li>
								<li><a href="#area_chk4">���ر�</a></li>
								<li><a href="#area_chk5">���ֱ�</a></li>
							</ul>

							<div class="area_chk_container">
								<div id="area_chk1" class="area_chk_content" style="">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� ��ü</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �Ȼ� / ȭ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�¾� / ȫ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �ξ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�� / ���� / ���</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ��ô</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �︪��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>��� / �λ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / â��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�뿵 / ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �ϵ� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�س� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>������</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�ž� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�븶��</span>
										</label>
									</div>
								</div>
								<div id="area_chk2" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� ��ü</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �Ȼ� / ȭ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�¾� / ȫ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �ξ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�� / ���� / ���</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ��ô</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �︪��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>��� / �λ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / â��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�뿵 / ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �ϵ� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�س� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>������</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�ž� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�븶��</span>
										</label>
									</div>
								</div>
								<div id="area_chk3" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� ��ü</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �Ȼ� / ȭ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�¾� / ȫ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �ξ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�� / ���� / ���</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ��ô</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �︪��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>��� / �λ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / â��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�뿵 / ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �ϵ� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�س� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>������</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�ž� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�븶��</span>
										</label>
									</div>
								</div>
								<div id="area_chk4" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� ��ü</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �Ȼ� / ȭ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�¾� / ȫ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �ξ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�� / ���� / ���</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ��ô</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �︪��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>��� / �λ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / â��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�뿵 / ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �ϵ� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�س� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>������</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�ž� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�븶��</span>
										</label>
									</div>
								</div>
								<div id="area_chk5" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� ��ü</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �Ȼ� / ȭ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�¾� / ȫ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / �ξ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�� / ���� / ���</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / ��ô</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �︪��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>��� / �λ�</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / â��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�뿵 / ��</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ��õ</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>���� / ���� / �ϵ� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�س� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>������</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�ž� / ���� / ����</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>�븶��</span>
										</label>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<a href="">���� �Ϸ�</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// �������� �˾� -->

	<!-- ���� �˾� -->
	<div class="popup_opacity popup_filter_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					���� <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">�ʱ�ȭ</a>
				</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="filter_area sort_box ico_box">
							<h2>����</h2>
							<ol class="inner">
								<li class="sort_1"><a class="on">�Ÿ���</a></li>
								<li class="sort_2"><a>Ȱ����</a></li>
								<li class="sort_3"><a>���� ���ݼ�</a></li>
								<li class="sort_4"><a>���� ���ݼ�</a></li>
								<li class="sort_5"><a>��Ȳ��</a></li>
								<li class="sort_6"><a>���</a></li>
								<li class="sort_7"><a>��ۼ�</a></li>
							</ol>
						</div>
						<!--// sort_box -->
						<div class="filter_area street_box filter_chkOn">
							<h2>�Ÿ�����</h2>
							<ol class="inner">
								<li><a class="on">50Km</a></li>
								<li><a>100Km</a></li>
								<li><a>200Km</a></li>
								<li><a>300Km</a></li>
								<li><a>500Km</a></li>
							</ol>
						</div>
						<!--// street_box -->
						<div class="filter_area fish_box">
							<h2>����</h2>
							<div class="check_kind_box inner">
								<a class="more_kind">���� ��κ���</a>
								<div class="check_kind clearfix">
									<div class="line_box_area">
										<div class="line_box_area">
											<label> <input type="checkbox"> <ins></ins> <span>����ġ</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����ġ</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�ݺؾ�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>���ڰ�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�ޱ�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�轺</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�ձٹٸ�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>���ؾ�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>������(�ι�)</span>
											</label>
										</div>
										<div class="line_box_area line_box_toggle">
											<label> <input type="checkbox"> <ins></ins> <span>����׾�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>������</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����׾�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>������</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�׾�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>���</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>����</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�۾�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>���</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>���</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>��ؾ�</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>�ι���Ÿ</span>
											</label>
										</div>
									</div>
								</div>
								<!--// check_kind -->
							</div>
						</div>
						<!--// fish_box -->

						<div class="filter_area time_box">
							<h2>�̵��ð�</h2>
							<div class="inner">
								<p class="date_txt">2�ð�~10�ð�</p>
								<div class="line_box">
									<div class="line">
										<p>
											<em></em>
										</p>
									</div>
									<div class="clearfix">
										<p class="left_date">0�ð�</p>
										<p class="right_date">10�ð�</p>
									</div>
								</div>
							</div>
						</div>
						<!--// street_box -->

						<div class="filter_area price_box filter_chkOn">
							<h2>����(��)</h2>
							<ol class="inner">
								<li><a class="on">��ü</a></li>
								<li><a>~ 3��</a></li>
								<li><a>3 ~ 5��</a></li>
								<li><a>5~ 10��</a></li>
								<li><a>10�� ~</a></li>
							</ol>
						</div>
						<!--// price_box -->

						<div class="filter_area island_box">
							<h2>������(������)</h2>
							<div class="inner">
								<label> <input type="checkbox"> <ins></ins> <span>���ŵ�</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>���ڵ�</span>
								</label>
							</div>
						</div>
						<!--// island_box -->

						<div class="filter_area goods_box filter_chkOn">
							<h2>��ǰ����</h2>
							<ol class="inner">
								<li><a class="on">����</a></li>
								<li><a>������</a></li>
								<li><a>��Ż</a></li>
								<li><a>����</a></li>
								<li><a>���ϸ�</a></li>
							</ol>
						</div>
						<!--// goods_box -->

						<div class="inner_box" style="display: none">
							<div class="filter_area place_box filter_chkOn">
								<h2>�´�����</h2>
								<ol class="inner">
									<li><a class="on">�´�</a></li>
									<li><a>������</a></li>
									<li><a>�ػ��ܵ�</a></li>
									<li><a>�ո���</a></li>
									<li><a>������</a></li>
									<li><a>�Ͽ콺</a></li>
									<li><a>����</a></li>
								</ol>
							</div>
							<!--// place_box -->

							<div class="filter_area service_box">
								<h2>������(������)</h2>
								<div class="inner">
									<label> <input type="checkbox"> <ins></ins> <span>ȸ
											���帲</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>���ô�
											�뿩</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>����/ħ��</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>�߽�</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>���̵�</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>Ŀ��/��������</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>�չٴ�</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>�Ļ�����</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>������</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>PC</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>WIFI</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>���ÿ�ǰ</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>�̳�</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>����</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>�繰��</span>
									</label>
								</div>
							</div>
							<!--// service_box -->

							<div class="filter_area siseol_box ico_box">
								<h2>���ǽü�</h2>
								<ol class="inner">
									<li class="siseol_1"><a class="on">���̹�</a></li>
									<li class="siseol_2"><a>ī��</a></li>
									<li class="siseol_3"><a>����</a></li>
									<li class="siseol_4"><a>�԰Ÿ���</a></li>
									<li class="siseol_5"><a>�׸�</a></li>
									<li class="siseol_6"><a>����</a></li>
									<li class="siseol_7"><a>�߿ܽ�Ź</a></li>
									<li class="siseol_8"><a>ȭ���</a></li>
									<li class="siseol_9"><a>�������</a></li>
									<li class="siseol_10"><a>��������</a></li>
									<li class="siseol_11"><a>�״ø�</a></li>
									<li class="siseol_12"><a>����</a></li>
									<li class="siseol_13"><a>�����</a></li>
									<li class="siseol_14"><a>�����ü�</a></li>
									<li class="siseol_15"><a>��ǳ��</a></li>
									<li class="siseol_16"><a>��ȭ��</a></li>
									<li class="siseol_17"><a>������</a></li>
									<li class="siseol_18"><a>ħ��</a></li>
									<li class="siseol_19"><a>Ŀ��/����</a></li>
									<li class="siseol_20"><a>�Ķ��</a></li>
									<li class="siseol_21"><a>CCTV</a></li>
									<li class="siseol_22"><a>TV</a></li>
									<li class="siseol_23"><a>���ð�����</a></li>
									<li class="siseol_24"><a>Ŀ����Ʈ</a></li>
								</ol>
							</div>
							<!--// siseol_box -->

							<div class="filter_area siseol_box ico_box">
								<h2>�ֺ��ü�</h2>
								<ol class="inner">
									<li class="siseol_25"><a class="on">���ڽü�</a></li>
									<li class="siseol_26"><a>�߿���</a></li>
									<li class="siseol_27"><a>�����</a></li>
									<li class="siseol_28"><a>������</a></li>
									<li class="siseol_29"><a>������</a></li>
									<li class="siseol_30"><a>�ްԽ�</a></li>
									<li class="siseol_31"><a>����</a></li>
									<li class="siseol_32"><a>�ι�</a></li>
									<li class="siseol_33"><a>������</a></li>
									<li class="siseol_34"><a>����</a></li>
									<li class="siseol_35"><a>�Ĵ�</a></li>
									<li class="siseol_36"><a>���</a></li>
								</ol>
							</div>
							<!--// siseol_box -->
						</div>

						<div class="filter_detail_btn">
							<a>�� �׸� ����</a>
						</div>
					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<a href="">�� 3�� �׸� �����ϱ�</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// ���� �˾� -->

	<!-- �� ��ġ �缳�� �˾� -->
	<div class="popupsm_opacity popup_location" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">�� ��ġ �缳��</h2>
				<div class="popup_inner">
					<div class="location_area">
						<p>
							���� ��ġ ��˻� �Ǵ�<br>������ ��ġ������ �����մϴ�.
						</p>
						<a class="location_btn1 location_reload_btn"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_ico01.png"
							alt="">���� ��ġ ��˻�</a> <a class="location_btn2 btn_get_map"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_ico02.png"
							alt="">�������ּҷ� ��ġ ����</a>
					</div>
					<div class="search_area" style="display: none">
						<div class="search_box">
							<input type="text" id="btn_location_addr"
								placeholder="��, ��, �� �� �Է�"> <a class="search_close"
								style="display: none;"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_ico02.png"
								alt=""></a> <a class="search_addr_btn"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/search_ico03.png"
								alt=""></a>
						</div>
						<div class="map_box" style="">
							<div id="get_map" style="width: 100%; height: 100%;"></div>
							<div class="full_map_btn">
								<a>���� �Ϸ�</a>
							</div>
						</div>
						<dl class="map_none" style="display: none">
							<dt>��Ȯ�ϰ� �Է����ּ���.</dt>
							<dd>�� : ����, ��â��, ������, ����</dd>
						</dl>
						<div class="search_txt"></div>
					</div>
				</div>
				<div class="popup_close wrap_close">
					<a class="">�ݱ�</a>
				</div>
			</div>
		</div>
	</div>
	<!--// �� ��ġ �缳�� �˾� -->

	<!-- Ƽ�ϰ��̵� �˾� -->
	<div class="popup_opacity popup_ticket_guide" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">Ƽ�ϰ��̵�</h2>
				<div class="popup_inner">
					<div class="ticket_area">
						<p class="guide_title">Ƽ�� ���̵�</p>

						<!--dl>
							<dt>QR �ڵ� �� NFC �±��� �̿��� ���</dt>
							<dd>���ݰ��� �α��� ���¿��� ����  QR�ڵ� ��  NFC �±� (���� �ڵ� ����)</dd>
							<dd>����� Ƽ�ϸ� �� ���� ���ֿ��� ���� ����</dd>
							<dd>���ְ� ���ְ����ڿ��� Ƽ�� ��� ó��</dd>
							<dd>���ó�� �Ϸ�� Ƽ�ϳ��� Ȯ��</dd>
						</dl-->
						<dl>
							<dt>���忡�� �ٷ� ����ϴ� ���</dt>
							<dd>Ƽ�� ���Ž� �������� ��ȭ��ȣ ���ڸ� �Ǵ� �̸� ���忡�� ���� ����</dd>
							<dd>���ְ� ���ְ����ڿ��� ��ȸ (���� ���� ����)</dd>
							<dd>����� Ƽ�ϸ� �� ���� ���ֿ��� ���� ����</dd>
							<dd>���ְ� ���ְ����ڿ��� Ƽ�� ��� ó��</dd>
							<dd>���ó���Ϸ�� Ƽ�ϳ��� Ȯ��</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// Ƽ�ϰ��̵� �˾� -->

	<!-- �����˾� -->
	<div class="popup_front" style="display: none">
		<div class="front_inner">
			<div class="banner_box">
				<img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/test/popup_test_img_01.png"
					alt="">
			</div>
			<div class="fornt_btn">
				<a>7�ϵ��� ���� �ʱ�</a> <a>�ݱ�</a>
			</div>
		</div>
	</div>
	<!--// �����˾� -->

	<!-- �̿�ȳ� �˾� -->
	<div class="popupsm_opacity popup_use_info" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					<img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/rtreserve_ico11.png"
						alt="">�̿� �ȳ�
				</h2>
				<div class="popup_inner">
					<div class="text_box">
						<p class="dot_txt">������ �� 19�� �̸����� �ϸ�,</p>
						<p class="dot_txt">�ź��� ���� �ʼ��Դϴ�.</p>
					</div>
					<div class="wrap_btn">
						<a class="popup_close">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// �̿�ȳ� �˾� -->

	<!-- Ƽ�� �̿�ȳ� �˾� -->
	<div class="popupsm_opacity popup_ticket_info" style="display: none;">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					<img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/rtreserve_ico12.png"
						alt="">�̿� �ȳ�
				</h2>
				<div class="popup_inner">
					<div class="text_box"></div>
					<div class="wrap_btn">
						<a class="popup_close">Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// Ƽ�� �̿�ȳ� �˾� -->

	<!-- ��ȹ�� �˾� -->
	<div class="popup_opacity popup_plan" style="display: none;">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section"></div>
		</div>
	</div>
	<!--// ��ȹ�� �˾� -->

	<!-- �ݴ���ǰ �˾� -->
	<div class="popupsm_opacity popup_bandum" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">�ݴ���ǰ�̶�?</h2>
				<div class="popup_inner">
					<div class="text_box">
						<p class="bandum_ico">50% �ݴ� ���� ����</p>
						<p class="bandum_txt">
							50% ������ ������ �ݴ� ������ ���޵Ǵ� ��ǰ����,<br> �ݴ� ��ǰ ���� �� ���� ���� ���忡�� <span>NFC
								�±� �� ��ü �湮Ȯ�� �� <br>�ݴ� ������ ���޵˴ϴ�.
							</span>
						</p>

						<div class="notice_txt">
							<p>
								<img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_notice.png"
									alt=""> ������ �ݴ� ��ǰ�� ���� ���� �ִ� �ݾ��� �޶��� �� �ֽ��ϴ�.<br>�ݴ�
								��ǰ�� ������ ���� ��ü������ ����� �����մϴ�.
							</p>
						</div>
					</div>
					<div class="wrap_btn">
						<a>Ȯ��</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// �ݴ���ǰ �˾� -->

	<!-- �˸����� �˾� -->
	<div class="popupsm_opacity popup_alarm_list" style="display: none">
		<div class="popup_area" id="notice_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">�˸�����</h2>
				<!-- �˸����� ���� -->
				<div class="popup_inner" id="get_notice_list" data-start_key="0"
					data-offset="0" data-limit="50" data-last_offset="" data-auto="">

				</div>
			</div>
		</div>
	</div>
	<!--// �˸����� �˾� -->

	<!-- �����ϱ� �˾� -->
	<div class="popup_share" style="display: none">
		<div class="popup_area">
			<a class="close_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_01.png"
				alt="�˾��ݱ�"></a>
			<div class="share_section">
				<h2 class="share_title">�����ϱ�</h2>
				<input type="hidden" id="def_url"
					value="https://www.moolban.com/bridge/comm/40"> <input
					type="hidden" id="copy_url"
					value="https://www.moolban.com/bridge/comm/40">
				<div class="share_inner clearfix">
					<dl>
						<dt>
							<a href="javascript:shareFacebook()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_facebook.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareFacebook()">���̽���</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareStory()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_kakaostory.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareStory()">īī�����丮</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareNaver()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_naver.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareNaver()">���̹�</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareBand()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_band.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareBand()">���̹� ���</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareCopy()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_copy.png"
								alt="" class="copy_url"></a>
						</dt>
						<dd>
							<a href="javascript:shareCopy()">URL ����</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<!--// �����ϱ� �˾� -->

	<!-- �ε� -->
	<div class="loading_opacity" style="display: none">
		<div class="loading_area">
			<div class="lds-ellipsis">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
	</div>
	<!--// �ε� -->

	<!-- ��ȭ���� �˾� -->
	<div class="popupsm_opacity popup_call" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">

				<input type="hidden" name="c_key" value="">
				<div class="popup_inner">
					<div class="text_box">
						<p></p>
						<strong><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_notice02.png"
							alt="">����Ͽ����� ��ȭ ���ǰ� �����մϴ�. </strong> <a
							class="reserve_call reserve_tel">��ü��ȭ����</a>
					</div>
					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">���</a> <a class="reserve_call tel">��ȭ�ɱ�</a>
						<a class="popup_call_reserve_url reserve_tel">�����ϱ�</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// ��ȭ���� �˾� -->

	<!-- ��ü ���� �����̵� -->
	<div class="gallery_opacity" style="display: none">
		<div class="gallery_area">
			<a class="wrap_close"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_01.png"
				alt="�˾��ݱ�"></a>
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
	<!--// ��ü ���� �����̵� -->

	<!-- ��ü ���� �����̵� -->
	<div class="gallery_opacity22 talk_gallery" style="display: none">
		<div class="gallery_area">
			<a class="wrap_close"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_01.png"
				alt="�˾��ݱ�"></a>
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
	<!--// ��ü ���� �����̵� -->

	<!-- �ۼ�ġ �ּҹޱ� �˾� -->
	<div class="popupsm_opacity popup_sms" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a>
			<form name="smsForm" id="smsForm" method="post">
				<div class="popup_section">
					<h2 class="popup_title">�� ��ġ �ּ� �ޱ� (SMS)</h2>
					<div class="popup_inner">
						<div class="inputBox">
							<input type="tel" placeholder="�޴��� ��ȣ�� '-' ���� �Է����ּ���."
								name="intro_phone" class="telinput" maxlength="13"
								data-phone-mask="">
							<p>�޴��� ��ȣ�� �Է��Ͻ� �� ���� ��ư�� ������, ���ݰ��� �� �ٿ�ε� �ּҰ� SMS�� ���۵˴ϴ�.</p>
							<p>������ ��ȣ�� 1�� �ִ� 3�� ������ ���� �����մϴ�.</p>
						</div>
						<div class="wrap_btn wrap_btn2">
							<a class="wrap_close">���</a> <a id="btn_sms"><strong>�ּҹ߼�</strong></a>
						</div>
						<!--// wrap_btn -->
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// �ۼ�ġ �ּҹޱ� �˾� -->

	<!-- Ű���弳�� �˾� -->
	<div class="popup_opacity popup_keyword" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<form name="keywordForm" id="keywordForm" method="post">
				<div class="popup_section">
					<h2 class="popup_title">Ű���� ����</h2>
					<div class="popup_inner" id="get_keyword_list" data-start_key="0"
						data-offset="0" data-limit="20" data-last_offset="" data-auto="">

					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// Ű���弳�� �˾� -->

	<!-- ���谡������ �˾� -->
	<div class="popupsm_opacity" style="display: none">
		<div class="insur_popup area_popup">
			<a class="close_btn"><img
				src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/ico_close01.png"
				alt=""></a>
			<div class="insur_inner">
				<div class="inner">
					<dl class="insur_tit">
						<dt>
							<img
								src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/pop_ico01.png"
								alt="">
						</dt>
						<dd>
							<img
								src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/pop_ico02.png"
								alt="">��<img
								src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/pop_ico03.png"
								alt="">�� �Բ��մϴ�.
						</dd>
					</dl>
					<div class="insur_box clearfix">
						<img
							src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/pop_ico04.png"
							alt="">
						<p>
							[�� 35��, ��]<br>�Ǽ��� �����ǰ ���Խ�<span>���� 2,890��</span>
						</p>
					</div>
					<dl class="insur_txt clearfix">
						<dt>���峻��</dt>
						<dd>
							���ػ�� 1��� ������������ 1���<br>���å�� 1õ�������ռ��忰 10����<br>�����Կ��ϴ�
							3����<span>�� ǥ���� �����ǰ ���� ��</span>
						</dd>
					</dl>
					<div class="btn_box">
						<a class="insur_btn1" style="display: none">��ǰ ����</a> <a
							class="insur_btn2" style="display: none">�α��� �� ���� �����ϱ�</a>
						<!-- ���� �����ϱ� -->
						<p class="insur_txt1" style="display: none">�̹� ���迡 ���ԵǾ��ֽ��ϴ�!</p>
						<!-- �ߺ� -->
						<p class="insur_txt2" style="display:">
							�� 19�� �̸��� ������ �Ұ��մϴ�.<span>�̼����ڴ� ģ������ �ڳ�θ� ������ �����մϴ�.</span>
						</p>
						<!-- 19�� -->
						<a class="insur_btn3" style="display:">��ǰ �����Ϸ� ����</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// ���谡������ �˾� -->
	<!-- ��������� �˾� -->
	<!--// ��������� �˾� -->
	<div class="more_fixed" style="display: none">
		<div class="more_area">
			<div class="more_container">
				<a class="more_close"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/more_close.png"
					alt=""></a>
				<div class="more_content" id="more_content" style="cursor: pointer;">
					<p>
						ȸ������ �� �α��� ��<br>���� ������ �߰� ������ ���� �� �־��.
					</p>
					<a class="login_btn">�α���/ȸ������</a>
				</div>
				<div class="more_list ">

					<div class="sub_more_list">
						<p class="sub_01">���̸޴�</p>
						<p class="sub_02">����</p>
						<p class="sub_03">��Ÿ</p>
					</div>
					<div class="nav_more_list">
						<p class="nav_01">���̸޴�</p>
						<p class="nav_02">ī�װ�</p>
					</div>


					<div class="more_list_box">
						<ol class="clearfix">


							<li class="nomember_orders mysub1_1"><a> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more1.png"
									alt=""> �ֹ���ȸ
							</a></li>
							<li class="mysub1_2"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more2.png"
									alt=""> ������
							</a></li>
							<li class="mysub1_3"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more21_2.png"
									alt=""> ����Ʈ
							</a></li>
							<li class="mysub1_4"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more3.png"
									alt=""> ����
							</a></li>
							<li class="mysub2_1"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more5.png"
									alt=""> �� �۾���
							</a></li>
							<li class="mysub2_2"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more6.png"
									alt=""> �� �۰���
							</a></li>
							<li class="mysub2_3"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more8.png"
									alt=""> �˸�����
							</a></li>
							<li class="mysub2_4"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more19.png"
									alt=""> Ű���弳��
							</a></li>
						</ol>
						<ol class="clearfix">
							<li class="mysub3_1"><a href="/contest/index"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more16.png"
									alt=""> ���ô�ȸ
							</a></li>
							<li class="mysub3_2"><a href="/multtae"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more16.png"
									alt=""> ����
							</a></li>
							<li class="mysub3_3"><a href="/realtime/sea"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more14.png"
									alt=""> ��� ��Ȳ
							</a></li>
							<li class="btn_share mysub3_4"><a> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more9.png"
									alt=""> ģ������ ����
							</a></li>
						</ol>
						<ol class="clearfix">
							<li class="mysub4_1"><a href="/more/notice"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more10.png"
									alt=""> ��������
							</a></li>
							<li class="mysub4_2"><a href="/more/event_list"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more11.png"
									alt=""> �̺�Ʈ
							</a></li>
							<li class="mysub4_3"><a href="/service/faq"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more12.png"
									alt=""> ������
							</a></li>
							<li class="mysub4_4"><a href="/more/policy"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more13.png"
									alt=""> ���
							</a></li>
						</ol>
					</div>
					<a class="banner_zone" href="/coupon/"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/banner_eventcoupon_m.png"
						alt=""></a>
				</div>

				<div class="more_service">
					<div class="app_box clearfix">
						<a href="javascript:;" class="google_link btn-app-download"
							data-os="A"
							data-url="https://play.google.com/store/apps/details?id=com.withmkt.moolban&amp;hl=ko"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/app_ico01.png"
							alt="">�����÷��� �ٷΰ���</a> <a href="javascript:;"
							class="apple_link btn-app-download" data-os="I"
							data-url="https://itunes.apple.com/us/app/%EB%AC%BC%EB%B0%98%EA%B3%A0%EA%B8%B0%EB%B0%98/id1234813887?l=ko&amp;ls=1&amp;mt=8"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/app_ico02.png"
							alt="">�۽���� �ٷΰ���</a>
					</div>
					<div class="box">
						<p>
							<span>���ݰ���</span> ������
						</p>
						<a href="tel:15996975">1599-6975</a> <span>365�� 10��~18�� �<em>���ɽð�
								12�� -13�� 30��</em></span>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<script
		src="https://www.moolban.com/dist/asset/www/responsive/${pageContext.request.contextPath}/resources/js/talk.js?rand=1577763884"></script>
	<script>
		$(document)
				.ready(
						function() {
							var d = new Date();
							srch_date = getFormatDate(d);

							var cookieList = function(cookieName) {
								var cookie = $.cookie(cookieName);
								var items = cookie ? cookie.split(/,/)
										: new Array();
								return {
									"add" : function(val) {
										if (items.length == 0
												|| items[0].split('|').indexOf(
														val) == -1) {
											items.push(val);
											$.cookie(cookieName, items
													.join('|'), {
												expires : 180
											});
										}
									},
									"clear" : function() {
										items = null;
										$.cookie(cookieName, null, {
											expires : 0
										});
									},
									"clear_key" : function(val) {
										var str_items = items.toString();
										var chg_items = str_items.replace(val,
												'');
										$.cookie(cookieName, chg_items, {
											expires : 180
										});
									},
									"items" : function() {
										return items;
									}
								}
							}

							$('.talk_search_box .search_btn')
									.click(
											function() {
												var srch_text = $(
														'#talk_search_input_box')
														.val().replace(
																/^\s+|\s+$/g,
																'');
												if (srch_text.length < 2) {
													return $
															.toastAlert('2�� �̻� �˻�� �Է����ּ���.');
												}
												srch_text.replace(/\s/gi, '');

												var list = new cookieList(
														'keyword');
												list.add(srch_text + ' '
														+ srch_date);

												location.href = "/search/integrate?srch_text="
														+ srch_text;
											});

							$('.talk_search_box #talk_search_input_box')
									.keydown(
											function(e) {
												if (e.keyCode == 13) {
													var srch_text = $(
															'#talk_search_input_box')
															.val()
															.replace(
																	/^\s+|\s+$/g,
																	'');

													if (srch_text.length < 2) {
														return $
																.toastAlert('2�� �̻� �˻�� �Է����ּ���.');
													}

													var list = new cookieList(
															'keyword');
													list.add(srch_text + ' '
															+ srch_date);

													location.href = "/search/integrate?srch_text="
															+ srch_text;
												}
											});
						});
	</script>

	<div class="header_area">

		<div class="scrolling scroll_up">
			<div class="header_title">
				<section>
					<a class="title_reserve_line" href="/reserve/live_search">����˻�</a>
					<p class="h_tit">�ݹ���</p>
				</section>
			</div>

			<!-- �ݹ��� -->
			<div class="talk_header" style="display:">
				<div class="talk_tab_area">
					<section>
						<ul class="talk_tab clearfix" >
							<li class="on"><a data-talk_key="6" data-tc_key="0"
								data-u_type="1">���ּ�����Ȳ</a></li>
							<li class="on"><a data-talk_key="1" data-tc_key="0"
								data-u_type="1">���������</a></li>
							<li class="on"><a data-talk_key="12" data-tc_key="0"
								data-u_type="1"><i>N</i>��������</a></li>
							<li class="on"><a data-talk_key="11" data-tc_key="0"
								data-u_type="1">�߰�����</a></li>
							<li class="on"><a data-talk_key="10" data-tc_key="0"
								data-u_type="1">���ݵ�����</a></li>
							<li class="on"><a data-talk_key="2" data-tc_key="0"
								data-u_type="1">����������</a></li>
							<li class="on"><a data-talk_key="3" data-tc_key="0"
								data-u_type="1">����������</a></li>
							<li class="on"><a data-talk_key="4" data-tc_key="0"
								data-u_type="1">���ݰ�����</a></li>
							<li class="on"><a data-talk_key="5" data-tc_key="0"
								data-u_type="1">�����Խ���</a></li>
						</ul>
					</section>
				</div>
				<!-- <div class="talk_cate_tab tab6" style="display: block">
					<section>
						<ul class="tab_cnt3">
							<li class="active"><a data-tc_key="0" data-talk_key="6">��ü</a></li>
							<li class=""><a data-tc_key="1" data-talk_key="6">�ٴ� ��Ȳ</a></li>
							<li class=""><a data-tc_key="15" data-talk_key="6">�ι� ��Ȳ</a></li>
						</ul>
					</section>
				</div> -->
				<!--// talk_cate_tab -->

			</div>
		</div>

	</div>

	<div class="talk_area container bg_mp" style="width: 1120px; height: 18677px;">

		<section>
			<div class="contents_list">
				<!-- ���ݵ����� ���� //-->
				<div class="talk_notice clearfix">
					<span>����</span>
					<div class="vTicker"
						style="overflow: hidden; position: relative; height: 22px;">
						<ul
							style="position: absolute; margin: 0px; padding: 0px; top: 0px;">


							<li style="margin: 0px; padding: 0px; height: 22px;"><a
								href="/talk/view/134541">[�̺�Ʈ]������ �ص��� ������ �̺�Ʈ ��÷�� ��ǥ</a></li>
							<li style="margin: 0px; padding: 0px; height: 22px;"><a
								href="/talk/view/25033">�ݹ��� � ��å �ȳ�</a></li>
						</ul>
					</div>
				</div>
				<!--// talk_notice -->
				<!--// ���ݵ����� ���� -->

				<!-- �ǽð� ��Ȳ //-->
				<div class="live_hot clearfix">
					<a href="/realtime/sea"><p class="hot_title">
							�ǽð� ��Ȳ <span>HOT</span>
						</p></a>
					<div class="hot_list">
						<div class="vTicker"
							style="overflow: hidden; position: relative; height: 27px;">
							<ul
								style="position: absolute; margin: 0px; padding: 0px; top: 0px;">

								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=41&amp;scm_key=4&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=���ؾ�">��û����
										: <span>���ؾ�</span>
								</a></li>
								<li
									style="margin: 0px; padding: 0px; height: 27px; display: none;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=23&amp;scm_key=7&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�䲿��������">���ֵ�
										: <span>�䲿��������</span>
								</a></li>
								<li
									style="margin: 0px; padding: 0px; height: 27px; display: none;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=42&amp;scm_key=5&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=���Ժؾ�">����ϵ�
										: <span>���Ժؾ�</span>
								</a></li>
								<li
									style="margin: 0px; padding: 0px; height: 27px; display: none;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=7&amp;scm_key=1&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=����">�����ߺ�
										: <span>����</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=24&amp;scm_key=2&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=���">���س���
										: <span>���</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=50&amp;scm_key=3&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�ޱ�">��û�ϵ�
										: <span>�ޱ�</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=58&amp;scm_key=6&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�轺">���󳲵�
										: <span>�轺</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=27&amp;scm_key=6&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=��ġ">���ؼ���
										: <span>��ġ</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=39&amp;scm_key=3&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�뱸">�����ߺ�
										: <span>�뱸</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=92&amp;scm_key=5&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=������">���ص���
										: <span>������</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=90&amp;scm_key=1&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=������(�ι�)">��⵵
										: <span>������(�ι�)</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=40&amp;scm_key=8&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�ؾ�">��󳲵�
										: <span>�ؾ�</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=39&amp;scm_key=4&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�뱸">���س���
										: <span>�뱸</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=50&amp;scm_key=2&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=�ޱ�">������
										: <span>�ޱ�</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--// live_hot -->


				<!--// �ǽð� ��Ȳ -->
				<div class="talk_list">
	
					<div id="talk_detail_list" data-start_key="0" data-offset="0"
						data-limit="30" data-last_offset="" data-is_work="">
	<!-- 	<for�� ����ϱ�> -->

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
									<strong>���ȣ-B</strong>
									<p>
										<img
											src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
											alt="">�泲 â���� ���ر�
									</p>
								</div>
								<div class="profile_date">
									<p>7�� ��</p>
								</div>
							</div>
							<!-- profile_line -->
						
						
							<a class="talk_view_btn" href="talk_detail">
							
								<p class="talk_pic">
									<span class="manage">�ٴ� ��Ȳ</span> <span class="kind">����</span>
								</p>
								<div class="talk_text">
									<strong>1/15 Ű�α� ���ѹ���~���ϱݿ繮���˴ϴ�^^</strong>
									<p class="more">2020 1/15 ������ ���� ��Ȳ�Դϴ�. ����, �뱸���� ���̽��ϴ�.
										�ܰ�մ�, �ʺ��մ԰� �Բ� �߽��ϴ�. ����~~ Ű�α� ���� ��� �Խ��ϴ�. �������� ���� ��� ����׿�^^
										...</p>
								</div>


								<div class="talk_visual swiper-container swiper-container-horizontal">
									<div class="swiper-caption">
										<p>
											<span class="start_index">1</span> / <span
												class="total_index">4</span>
										</p>
									</div>
									<div class="swiper-wrapper"
										style="transform: translate3d(0px, 0px, 0px);">
										<div class="talk_visual_img swiper-slide swiper-slide-active"
											style="width: 608px;">
											<div class="img_box">
												<img
													src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
													alt="">
											</div>
											
										</div>
										<div class="talk_visual_img swiper-slide swiper-slide-next"
											style="width: 608px;">
											<div class="img_box">
												<img
													src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
													alt="">
											</div>
										</div>
										<div class="talk_visual_img swiper-slide"
											style="width: 608px;">
											<div class="img_box">
												<img
													src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
													alt="">
											</div>
										</div>
										<div class="talk_visual_img swiper-slide"
											style="width: 608px;">
											<div class="img_box">
												<img
													src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
													alt="">
											</div>
										</div>
									</div>
									<div class="swiper-button-prev swiper-button-disabled"
										tabindex="0" role="button" aria-label="Previous slide"
										aria-disabled="true"></div>
									<div class="swiper-button-next" tabindex="0" role="button"
										aria-label="Next slide" aria-disabled="false"></div>

									<div
										class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
										<span
											class="swiper-pagination-bullet swiper-pagination-bullet-active"
											tabindex="0" role="button" aria-label="Go to slide 1"></span><span
											class="swiper-pagination-bullet" tabindex="0" role="button"
											aria-label="Go to slide 2"></span><span
											class="swiper-pagination-bullet" tabindex="0" role="button"
											aria-label="Go to slide 3"></span><span
											class="swiper-pagination-bullet" tabindex="0" role="button"
											aria-label="Go to slide 4"></span>
									</div>
									<span class="swiper-notification" aria-live="assertive"
										aria-atomic="true"></span>
								</div> <!--// ���� �̹����϶� -->
							</a>

							<div class="talk_count_btn">
								<div class="talk_count clearfix">
									<p class="like_line">
										���ƿ� <span id="like_cnt135516">0</span>
									</p>
									<div class="comm_mark_line">
										<p class="comm_line">
											��� <span>0</span>
										</p>
										<p class="mark_line">
											��ũ�� <span id="scrap_cnt135516">0</span>
										</p>
										<!-- �� �˾�
				<p><a href="javascript:;" class="talk_info_btn" data-tl_key="135516">tl_key</a></p>
				-->
									</div>
								</div>
								<div class="talk_btn clearfix">
									<a class="talk_like_btn"
										href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">���ƿ�</a>

									<a class="talk_comm_btn" href="talk_detail#comment_box">��۾���</a>
									<a class="talk_mark_btn"
										href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">��ũ��</a>

								</div>
							</div>
						</div>
						<!--// talk_box_area -->
					
					
					
					<div class="talk_box_area" id="talk_visual135516">
							<div class="profile_line">
								<div class="profile_img">
									<p class="lv98">
										<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" class="profile" alt="">
									</p>
								</div>
								<div class="profile_name">
									<strong>���ȣ-B</strong>
									<p>
										<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" alt="">�泲 â���� ���ر�
									</p>
								</div>
								<div class="profile_date">
									<p>7�� ��</p>
								</div>
							</div>
							<!-- profile_line -->
						
						
							<a class="talk_view_btn" href="talk_detail">
							
								<p class="talk_pic">
									<span class="manage">�ٴ� ��Ȳ</span> <span class="kind">����</span>
								</p>
								<div class="talk_text">
									<strong>1/15 Ű�α� ���ѹ���~���ϱݿ繮���˴ϴ�^^</strong>
									<p class="more">2020 1/15 ������ ���� ��Ȳ�Դϴ�. ����, �뱸���� ���̽��ϴ�.
										�ܰ�մ�, �ʺ��մ԰� �Բ� �߽��ϴ�. ����~~ Ű�α� ���� ��� �Խ��ϴ�. �������� ���� ��� ����׿�^^
										...</p>
								</div>


								<div class="talk_visual swiper-container swiper-container-horizontal">
									<div class="swiper-caption">
										<p>
											<span class="start_index">1</span> / <span class="total_index">4</span>
										</p>
									</div>
									<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
										<div class="talk_visual_img swiper-slide swiper-slide-active" style="width: 608px;">
											<div class="img_box">
												<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" alt="">
											</div>
										</div>
										<div class="talk_visual_img swiper-slide swiper-slide-next" style="width: 608px;">
											<div class="img_box">
												<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" alt="">
											</div>
										</div>
										<div class="talk_visual_img swiper-slide" style="width: 608px;">
											<div class="img_box">
												<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" alt="">
											</div>
										</div>
										<div class="talk_visual_img swiper-slide" style="width: 608px;">
											<div class="img_box">
												<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" alt="">
											</div>
										</div>
									</div>
									<div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></div>
									<div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>

									<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
										<span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 3"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 4"></span>
									</div>
									<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
								</div> <!--// ���� �̹����϶� -->
							</a>

							<div class="talk_count_btn">
								<div class="talk_count clearfix">
									<p class="like_line">
										���ƿ� <span id="like_cnt135516">0</span>
									</p>
									<div class="comm_mark_line">
										<p class="comm_line">
											��� <span>0</span>
										</p>
										<p class="mark_line">
											��ũ�� <span id="scrap_cnt135516">0</span>
										</p>
										<!-- �� �˾�
				<p><a href="javascript:;" class="talk_info_btn" data-tl_key="135516">tl_key</a></p>
				-->
									</div>
								</div>
								<div class="talk_btn clearfix">
									<a class="talk_like_btn" href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">���ƿ�</a>

									<a class="talk_comm_btn" href="talk_detail#comment_box">��۾���</a>
									<a class="talk_mark_btn" href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">��ũ��</a>

								</div>
							</div>
						</div>
					
						<script>
							$(document)
									.ready(
											function() {
												$('.talk_like_add_btn')
														.click(
																function(e) {
																	e
																			.preventDefault();
																	var tl_key = $(
																			this)
																			.attr(
																					'data-key');
																	var like_chk = $(
																			this)
																			.attr(
																					'data-like_chk');
																	var like_cnt = $(
																			'#like_cnt'
																					+ tl_key)
																			.html();
																	var mode = (like_chk == "N") ? 'like'
																			: 'unlike';
																	$
																			.ajax({
																				type : 'POST',
																				url : '/talk/user_talk_proc',
																				data : {
																					tl_key : tl_key,
																					mode : mode
																				},
																				dataType : 'json',
																				async : false,
																				cache : false,
																				processData : true,
																				success : function(
																						res) {
																					$
																							.toastAlert(res.ret);
																					if (res.rtv) {
																						if (mode == 'like') {
																							$(
																									'#talk_like_btn'
																											+ tl_key)
																									.addClass(
																											'on');
																							$(
																									'#talk_like_btn'
																											+ tl_key)
																									.attr(
																											'data-like_chk',
																											'Y');
																							if (like_cnt >= 0) {
																								like_cnt = parseInt(like_cnt) + 1;
																							}
																							$(
																									'#like_cnt'
																											+ tl_key)
																									.html(
																											like_cnt);
																						} else {
																							$(
																									'#talk_like_btn'
																											+ tl_key)
																									.removeClass(
																											'on');
																							$(
																									'#talk_like_btn'
																											+ tl_key)
																									.attr(
																											'data-like_chk',
																											'N');
																							if (like_cnt > 0) {
																								like_cnt = parseInt(like_cnt) - 1;
																							}
																							$(
																									'#like_cnt'
																											+ tl_key)
																									.html(
																											like_cnt);
																						}
																					}
																				},
																				error : function(
																						res) {
																					if (res.responseText) {
																						console
																								.log(res.responseText);
																						// location.reload(true);
																					}
																				}
																			});
																});

												$('.talk_scrap_add_btn')
														.click(
																function(e) {
																	e
																			.preventDefault();
																	var tl_key = $(
																			this)
																			.attr(
																					'data-key');
																	var scrap_chk = $(
																			this)
																			.attr(
																					'data-scrap_chk');
																	var scrap_cnt = $(
																			'#scrap_cnt'
																					+ tl_key)
																			.html();
																	var mode = (scrap_chk == "N") ? 'add'
																			: 'del';
																	$
																			.ajax({
																				type : 'POST',
																				url : '/talk/user_talk_scrap_proc',
																				data : {
																					tl_key : tl_key,
																					mode : mode
																				},
																				dataType : 'json',
																				async : false,
																				cache : false,
																				processData : true,
																				success : function(
																						res) {
																					$
																							.toastAlert(res.ret);
																					if (res.rtv) {
																						if (mode == 'add') {
																							$(
																									'#talk_scrap_btn'
																											+ tl_key)
																									.addClass(
																											'on');
																							$(
																									'#talk_scrap_btn'
																											+ tl_key)
																									.attr(
																											'data-scrap_chk',
																											'Y');
																							if (scrap_cnt >= 0) {
																								scrap_cnt = parseInt(scrap_cnt) + 1;
																							}
																							$(
																									'#scrap_cnt'
																											+ tl_key)
																									.html(
																											scrap_cnt);
																						} else {
																							$(
																									'#talk_scrap_btn'
																											+ tl_key)
																									.removeClass(
																											'on');
																							$(
																									'#talk_scrap_btn'
																											+ tl_key)
																									.attr(
																											'data-scrap_chk',
																											'N');
																							if (scrap_cnt > 0) {
																								scrap_cnt = parseInt(scrap_cnt) - 1;
																							}
																							$(
																									'#scrap_cnt'
																											+ tl_key)
																									.html(
																											scrap_cnt);
																						}
																					}

																				},
																				error : function(
																						res) {
																					if (res.responseText) {
																						console
																								.log(res.responseText);
																						// location.reload(true);
																					}
																				}
																			});

																});

												$(window)
														.resize(
																function() {
																	if ($(
																			document)
																			.width() < 1024) {
																		$(
																				'.talk_box_area .talk_text p')
																				.each(
																						function() {
																							var length = 60; //ǥ���� ���ڼ� ���ϱ�
																							//��ü �ɼ��� �ڸ� ���
																							$(
																									this)
																									.each(
																											function() {
																												if ($(
																														this)
																														.text().length >= length) {
																													$(
																															this)
																															.text(
																																	$(
																																			this)
																																			.text()
																																			.substr(
																																					0,
																																					length)
																																			+ '...'); //������ ���ڼ� ���� ǥ���� �ؽ�Ʈ(...)
																													$(
																															this)
																															.addClass(
																																	'more');
																												}
																											});
																						});
																	} else {
																		$(
																				'.talk_box_area .talk_text p')
																				.each(
																						function() {
																							var length = 100; //ǥ���� ���ڼ� ���ϱ�
																							//��ü �ɼ��� �ڸ� ���
																							$(
																									this)
																									.each(
																											function() {
																												if ($(
																														this)
																														.text().length >= length) {
																													$(
																															this)
																															.text(
																																	$(
																																			this)
																																			.text()
																																			.substr(
																																					0,
																																					length)
																																			+ '...'); //������ ���ڼ� ���� ǥ���� �ؽ�Ʈ(...)
																													$(
																															this)
																															.addClass(
																																	'more');
																												}
																											});
																						});
																	}
																});
												$(window).resize();

												$('.talk_info_btn')
														.click(
																function(e) {
																	var tl_key = $(
																			this)
																			.data(
																					'tl_key');
																	alert(tl_key);
																	$
																			.ajax({
																				type : 'POST',
																				url : "/talk/talk_popup",
																				data : {
																					tl_key : tl_key
																				},
																				dataType : 'json',
																				async : true,
																				cache : false,
																				processData : true,
																				beforeSend : function(
																						jqXHR) {
																					$(
																							'.loading_opacity')
																							.fadeIn(
																									'fast');
																				},
																				success : function(
																						res) {
																					if (res.rtv === true) {
																						$(
																								'.popup_area_chk .popup_section')
																								.html(
																										res.html);
																						$(
																								'.popup_area_chk')
																								.show();
																						$(
																								'html')
																								.addClass(
																										'html_popup');
																					} else {
																						$
																								.toastAlert(
																										res.msg,
																										true);
																					}
																				},
																				error : function(
																						res) {
																					if (res.responseText) {
																						$
																								.toastAlert(
																										res.responseText,
																										true);
																					}
																				},
																				complete : function(
																						e) {
																					$(
																							'.loading_opacity')
																							.fadeOut();
																				}
																			});
																	$(
																			'.loading_opacity')
																			.fadeIn(
																					'fast');
																});
											});

							var view_slide = [];
							var talk_list_len = $('.talk_box_area').length;
							for (var i = 0; i < talk_list_len; i++) {
								var view_id = $('.talk_box_area').eq(i).attr(
										'id');
								view_slide[view_id] = new Swiper(
										'#' + view_id + ' .swiper-container',
										{

											pagination : {
												el : '#' + view_id
														+ ' .swiper-pagination',
												clickable : true,
											},

											navigation : {
												nextEl : '#'
														+ view_id
														+ ' .swiper-button-next',
												prevEl : '#'
														+ view_id
														+ ' .swiper-button-prev',
											},
											on : {
												init : function() {
													$(this)[0].$el
															.find(
																	'.swiper-caption .start_index')
															.html(
																	Number($(this)[0].activeIndex + 1));
													$(this)[0].$el
															.find(
																	'.swiper-caption .total_index')
															.html(
																	Number($(this)[0].slides.length));
												},
												slideChange : function() {
													$(this)[0].$el
															.find(
																	'.swiper-caption .start_index')
															.html(
																	Number($(this)[0].activeIndex + 1));
													$(this)[0].$el
															.find(
																	'.swiper-caption .total_index')
															.html(
																	Number($(this)[0].slides.length));
												}
											}
										});
							}
						</script>
					</div>
				</div>
			</div>
			<!--// contents_list -->

			<!-- ��Ȳ ����Ʈ -->
			<div class="contents_pic">
				<div class="talk_plan">
					<p class="pic_title">��ȹ��</p>

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
					<p class="pic_title">���ݰ��� ��õ �ٴپ�ü</p>
					<a href="/company/4032"> <img
						src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/4032/main.jpg"
						alt="">
						<div class="recom_text">
							<em>������</em> <strong>â��ȣ</strong> <span><i>60,000�� ~</i></span>
						</div>
					</a> <a href="/company/10220"> <img
						src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/10220/2e81aeea254f3bc94a2a8c2fb400d2d6.jpg"
						alt="">
						<div class="recom_text">
							<em>���� �� 2��</em> <strong>�����ΰ� ���ò�</strong> <span><i>33,000��
									~</i></span>
						</div>
					</a> <a href="/company/8984"> <img
						src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/8984/f6220a1cc24049ff683931003e6aa919.jpg"
						alt="">
						<div class="recom_text">
							<em>������</em> <strong>����ȣ </strong> <span><i>25,000�� ~</i></span>
						</div>
					</a>
				</div>

				<div class="talk_recom">
					<p class="pic_title">���ݰ��� ��õ �ι���ü</p>
					<a href="/company/1660"> <img
						src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1660/b5f00e2d93311337e5907d7a55bf7bef.jpg"
						alt="">
						<div class="recom_text">
							<em>�ؾ� �� 2��</em> <strong>���ϳ�����</strong> <span><i>20,000��
									~</i></span>
						</div>
					</a> <a href="/company/1558"> <img
						src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
						alt="">
						<div class="recom_text">
							<em>�ؾ� �� 2��</em> <strong>����������</strong> <span><i>20,000��
									~</i></span>
						</div>
					</a> <a href="/company/1623"> <img
						src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1623/5b728be9990c715c0f8f304b8fc9967c.jpg"
						alt="">
						<div class="recom_text">
							<em>�ؾ� �� 2��</em> <strong>����������</strong> <span><i>30,000��
									~</i></span>
						</div>
					</a>
				</div>

			</div>
			<!--// contents_pic -->
			<!--// ��Ȳ ����Ʈ -->
		</section>

		<div class="talk_filter scroll_up" style="display: block">
			<section class="clearfix">
				<a class="talk_filter01 talk_area_btn" data-talk_key="6">����</a> <a
					class="talk_filter02 talk_filter_btn " data-tc_key="0"
					data-talk_key="6">����</a> <i class="talk_btn_box"
					style="display: none"> <a class="talk_write_btn"
					href="/mypage/login?redirect=/talk/form?talk_key=6"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/write/talk_write_btn.png"
						alt="�۾���"></a>
				</i>
			</section>
		</div>

		<div class="talk_filter2 scroll_up" style="display: none">
			<section class="clearfix">
				<a class="talk_write_btn"
					href="/mypage/login?redirect=/talk/form?talk_key=6"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/write/talk_write_btn.png"
					alt="�۾���"></a>
			</section>
		</div>

		<div class="talk_filter3 scroll_up" style="display: none">
			<section class="clearfix">
				<a class="talk_filter03 talk_search_btn">�߰����� ��ǰ �˻��ϱ�</a> <i
					class="talk_btn_box" style="display: none;"> <a
					class="talk_write_btn btn_write_move"
					href="/mypage/login?redirect=/talk/form?talk_key=6"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/write/talk_write_btn.png"
						alt="�۾���"></a>
				</i>
			</section>
		</div>


	</div>
	<!--// container -->

	<!-- �߰����� ��ǰ�˻� �˾� -->
	<div class="popup_opacity popup_jgo_search" style="display: none">
		<div class="popup_area">
			<a class="closein_btn" id="btn_used_popup_close"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="�˾��ݱ�"></a> <a class="closemo_btn" id="btn_used_popup_close"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="�˾��ݱ�"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					��ǰ �˻� <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">�ʱ�ȭ</a>
				</h2>
				<div class="popup_inner">
					<div class="search_inner">
						<div class="search_box">
							<input type="text" name="tui_item_name"
								placeholder="��ǰ Ű���带 �Է����ּ���.">
						</div>
						<div class="search_line">
							<p>�Ǹ� �� ���� �Ϸ��ǰ</p>
							<select name="tui_state" id="">
								<option value="Y">����</option>
								<option value="N">����</option>
							</select>
						</div>
						<div class="search_line">
							<p>����</p>
							<div class="input_line">
								<div class="inner">
									<input type="tel" name="tui_price_min" maxlength="8"
										onkeypress="javascript:onlyNumber();"
										onkeyup="javascript:onlyNumber2(this);" placeholder="�ּҰ���">
									<em>��</em>
								</div>
								<i>~</i>
								<div class="inner">
									<input type="tel" name="tui_price_max" maxlength="8"
										onkeypress="javascript:onlyNumber();"
										onkeyup="javascript:onlyNumber2(this);" placeholder="�ִ밡��">
									<em>��</em>
								</div>
							</div>
						</div>

						<div class="search_line">
							<label> <input type="checkbox" name="tui_price_nego_chk"
								class="tui_price_nego" value="Y" checked=""> <ins></ins>
								<span>��������</span> <input type="hidden" name="tui_price_nego">
							</label>
						</div>

						<div class="search_line">
							<p>���</p>
							<select name="tui_free_shipping" id="">
								<option value="">��ü</option>
								<option value="1">���ŷ�</option>
								<option value="2">�ù������</option>
								<option value="3">�ù�񺰵�</option>
								<option value="4">����</option>
							</select>
						</div>
						<div class="search_line">
							<p>��ǰ����</p>
							<select name="tui_kind" id="">
								<option value="">��ü</option>
								<option value="1">���¹���</option>
								<option value="2">�߰��ǰ</option>
								<option value="3">�̻��</option>
								<option value="4">���ǻ���</option>
							</select>
						</div>
						<div class="search_line">
							<p>��ȯ����</p>
							<select name="tui_exchange" id="">
								<option value="">��ü</option>
								<option value="N">��ȯ�Ұ�</option>
								<option value="Y">��ȯ����</option>
							</select>
						</div>
						<div class="search_line">
							<p>��ȣ����</p>
							<a class="search_map_btn"><i class="area_name">��ü</i></a>
						</div>
					</div>
					<div class="btn_box">
						<a class="search_btn">�˻��ϱ�</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// �߰����� ��ǰ�˻� �˾� -->

	<!-- �߰����� �������� �˾� -->
	<div id="exec-wrap"></div>
	<!-- �߰����� �������� �˾� -->
	<!-- ���� bottom -->
	<div>
		<div class="foot_banner_area scroll_up" style="display: none;">
			<a class="foot_banner"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/foot_banner_02.gif"
				alt=""></a> <a class="foot_banner_close">�ݱ�</a>
		</div>
		<div class="banner_top_area scroll_up" style="display: block;">


		</div>

		<!-- fixed bottom -->
		<div class="foot_fixed scroll_up">
			<a href="/home">Ȩ</a> <a href="/category/list?sea_type=1">�ٴ�</a> <a
				href="/category/list?sea_type=2">�ι�</a> <a href="/search/home">�˻�</a>
			<a href="/talk/list" class="on">�ݹ���</a>
		</div>
		<!--// fixed bottom -->
	</div>
	<!--// ���� bottom -->


	<!-- ��ǰ���� bottom -->
	<div style="display: none">
		<!-- ��ǰ���� fixed -->
		<a class="reserve_scroll_btn"> <img
			src="/asset/www/responsive/img/basic/reserve_scroll.png" alt="">
		</a>
		<!--// ��ǰ���� fixed -->

		<!-- fixed bottom -->
		<div class="view_fixed">
			<section>
				<a>��ǰ����</a>
			</section>
		</div>
		<!--// fixed bottom -->
	</div>
	<!--// ��ǰ���� bottom -->



	<!-- script -->
	<script
		src="https://www.moolban.com/dist/asset/www/responsive/${pageContext.request.contextPath}/resources/js/pub.js?rand=1577763884"></script>

	<!-- ADN ��Ÿ���� ��ũ��Ʈ -->
	<script type="text/javascript">
		var varUA = navigator.userAgent.toLowerCase(); //userAgent �� ���

		if (varUA.match('android') != null) {
			var banner_os_type = "A";
		} else if (varUA.indexOf("iphone") > -1 || varUA.indexOf("ipad") > -1) {
			var banner_os_type = "I";
		}

		var adn_param = adn_param || [];
		adn_param.push([ {
			ui : '100099',
			ut : 'Home'
		} ]);

		$(document).ready(function() {
			$('.foot_banner').click(function() {
				var advertise = '';
				if (banner_os_type == "A") {
					if (advertise == 'NAVER') {
						window.open('https://goo.gl/8cmye1', '_blank');
					} else if (advertise == 'DAUM') {
						window.open('https://goo.gl/NQwNeL', '_blank');
					} else {
						window.open('https://goo.gl/EXz2DA', '_blank');
					}
				} else if (banner_os_type == "I") {
					if (advertise == 'NAVER') {
						window.open('https://goo.gl/XguBeX', '_blank');
					} else if (advertise == 'DAUM') {
						window.open('https://goo.gl/YGDdVg', '_blank');
					} else {
						window.open('https://goo.gl/PPBmTg', '_blank');
					}
				} else {
					window.open('https://goo.gl/Na6dl4', '_blank');
				}
			});
		});
	</script>
	<script type="text/javascript" async=""
		src="//fin.rainbownine.net/${pageContext.request.contextPath}/resources/js/adn_tags_1.0.0.js"></script>
	</div>


	<!-- loader -->


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
    
        $(document).ready(function () {
            $(".on").each(function () {
                $(this).click(function () {
                    $(this).addClass("selected");                      //Ŭ���� �κ��� ��ܿ� ���ǵ� CCS�� selectedŬ������ ����
                    $(this).siblings().removeClass("selected");  //siblings:������ҵ�,    removeClass:���õ� Ŭ������ Ư���� ����
                });
            });
        });
    </script>

</body>
</html>