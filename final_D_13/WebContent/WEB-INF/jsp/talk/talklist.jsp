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
						<a class="title_reserve_line">예약검색</a>
						<p class="h_tit">
							반반톡													</p>
					</section>
				</div> -->



			<!-- 목록 필터 -->
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
							<a class="adress_btn">지역 필터</a> <a class="filter_btn">필터<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/filter_ico04.png"
								alt="" style="display: none"></a> <a class="map_btn">지도보기</a>
							<div class="filter_warp">
								<div class="select_btn">
									<p class="select_title">거리순</p>
								</div>
								<div class="select_btn">
									<p class="select_title">500km</p>
								</div>
							</div>
							<div class="guide_wrap">
								<!--a class="redfilter_btn">실시간예약 우선보기<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/filter_ico04.png" alt=""></a-->
								<a class="guide_btn" href="/guide/index">통합가이드</a>
							</div>
							<div class="etc_wrap" style="display: none">
								<a class="prohibit_btn on">낚시금지<img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/filter_ico04.png"
									alt=""></a> <a class="point_btn">포인트등록</a>
							</div>
						</section>
					</div>
					<div class="ico_filter_area" style="display: none"></div>
				</div>
			</div>

			<!-- 예약 -->
			<div class="reserve_header" style="display: none">
				<section class="reserve_header_pc">
					<!-- <div class="location_setting clearfix">
					<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_setting_ico.png" alt="">
					<p class="pos_addr_text">서울 금천구 가산동</p>
					<a class="btn_geo_popup">위치설정</a>
				</div> -->

					<div class="filtter_btn">
						<a class="fish_btn">어종<em><span class="cnt_txt">긴꼬리벵에돔
									외 1종</span><i>선택</i></em></a> <a class="person_btn">인원<em><span
								class="cnt_txt">100명</span><i>선택</i></em></a> <a class="area_btn">지역<em><span
								class="cnt_txt">경기도 남양주시 외 5개</span><i>선택</i></em></a> <a
							class="detail_btn">상세조건<em><span class="cnt_txt">5개
									적용</span><i>선택</i></em></a>
					</div>
				</section>

				<section class="reserve_header_mo">
					<a class="fish_btn">어종<span class="cnt"></span></a> <a
						class="person_btn">인원<span class="cnt"></span></a> <a
						class="area_btn">지역<span class="cnt"></span></a> <a
						class="detail_btn">상세조건<span class="cnt"></span></a>
				</section>
			</div>

			<!-- 낚시대회 -->
			<div class="contest_header" style="display: none">
				<section></section>
			</div>

			<!-- 포인트 -->
			<div class="point_header" style="display: none">
				<section>
					<a class="point_guide" target="_blank" href="/more/caution_list">유의사항</a>
				</section>
			</div>

		</div>
	</div>


	<!-- /* 팝업 */ -->
	<div class="openM_opacity" style="display: none;"></div>
	<div class="openM2_opacity" style="display: none;"></div>

	<!-- 비회원 주문조회 팝업 -->
	<div class="popupsm_opacity popup_more_nomember" style="display: none;">
		<div class="popup_area">
			<form id="reserve_form" action="/reserve/reserve_view" method="POST"
				novalidate="novalidate">
				<a class="closein_btn"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
					alt="팝업닫기"></a>
				<div class="popup_section">
					<h2 class="popup_title">비회원 주문조회</h2>
					<div class="popup_inner">
						<div class="nomember_box">
							<dl>
								<dt>주문자명</dt>
								<dd>
									<input type="text" name="srch_ord_name" placeholder="주문자명">
								</dd>
							</dl>
							<dl>
								<dt>예약/주문번호</dt>
								<dd>
									<input type="tel" name="o_key" placeholder="예약/주문번호"
										data-number-mask="" maxlength="10" style="text-align: right;">
								</dd>
							</dl>
							<!--
								<dl>
									<dt>휴대폰번호</dt>
									<dd><input type="tel" name="srch_ord_phone" placeholder="휴대폰번호" data-phone-mask maxlength="13"></dd>
								</dl>
							-->
							<p>주문자명, 예약/주문번호는 필수입니다.</p>
						</div>
						<div class="wrap_btn wrap_btn2">
							<a class="wrap_close">취소</a> <a class="reserve_info_btn">확인</a>
						</div>
						<!--// wrap_btn -->
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// 비회원 주문조회 팝업 -->

	<!-- 요금정보 팝업 -->
	<div class="popup_opacity popup_info_fare" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">요금정보</h2>
				<div class="popup_inner">
					<div class="view_area"></div>
					<!--// view_area -->
				</div>
			</div>
		</div>
	</div>
	<!--// 요금정보 팝업 -->

	<!-- 이벤트 팝업 -->
	<div class="popup_opacity popup_info_event" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">이벤트</h2>
				<div class="popup_inner">
					<dl class="eventbox_area">
						<dt></dt>
						<dd></dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<!--// 이벤트 팝업 -->

	<!-- 채비/루어 팝업 -->
	<div class="popup_opacity popup_info_chaebi popup_info_vote"
		style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">채비종류</h2>
				<div class="popup_inner"></div>
			</div>
		</div>
	</div>
	<!--// 채비/루어 팝업 -->

	<!-- 상품선택 팝업 -->
	<div class="popup_opacity popup_info_goods" data-saledate=""
		style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<form method="post" id="popup_reserve_form">

				<input type="hidden" name="c_key" value=""> <input
					type="hidden" name="srch_chkin_date" value=""> <input
					type="hidden" name="filter_person" value="1"> <input
					type="hidden" name="insur_chk" value="">
				<div class="popup_section">
					<h2 class="popup_title">상품 선택하기</h2>
					<div class="popup_inner">
						<div class="scroll_area label_check"></div>
						<!--// scroll_area -->
						<div class="scroll_btn_box check_off" data-os_type="W"
							data-insu_txt_show="Y">
							<!-- 상품이 없을경우 .check_off 추가  -->
							<a>상품선택</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// 상품선택 팝업 -->

	<!-- 인원변경 팝업 -->
	<div class="popupsm_opacity popup_personnel_change"
		style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">인원 변경</h2>
				<div class="popup_inner">
					<div class="change_box">
						<a class="minus"></a>
						<p>
							<span class="filter_person">1</span>명
						</p>
						<a class="add active"></a>
					</div>
					<!--// change_box -->

					<div class="group_box">
						<p>원하는 조건에 맞춰서 단체 예약 상품을 추천해드려요.</p>
						<a href="/reserve/orders_recommend">단체예약 바로가기</a>
					</div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">취소</a> <a class="change_ok">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 인원변경 팝업 -->

	<!-- confirm 팝업 -->
	<div class="popupsm_opacity popup_confirm" style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<h2 class="popup_title" style="display: none"></h2>
				<div class="popup_inner">
					<div class="group_box"></div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">취소</a> <a class="confirm_ok">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// confirm 팝업 -->

	<!-- confirm 닫기만 팝업 -->
	<div class="popupsm_opacity popup_close_confirm" style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<h2 class="popup_title" style="display: none"></h2>
				<div class="popup_inner">
					<div class="group_box"></div>
					<!--// group_box -->
					<div class="wrap_btn wrap_full_btn">
						<a class="wrap_close">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// confirm 닫기만 팝업 -->

	<!-- confirm 팝업 -->
	<div class="popupsm_opacity popup_login_confirm" style="display: none;">
		<div class="popup_area">
			<div class="popup_section">
				<h2 class="popup_title">전화하기 안내</h2>
				<div class="popup_inner">
					<div class="group_box">전화하기는 로그인 후 이용가능합니다.</div>
					<!--// group_box -->

					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">취소</a> <a href="/mypage/login">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// confirm 팝업 -->

	<!-- 고객센터 안내 팝업 -->
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
						<a class="popup_close mo_btn">취소</a> <a class="popup_close pc_btn">취소</a>
						<a class="m_c_phone" href="tel:1599-6975">통화</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 고객센터 안내 팝업 -->

	<!-- 쿠폰등록 팝업 -->
	<div class="popupsm_opacity popup_coupon" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">쿠폰 등록</h2>
				<div class="popup_inner">
					<div class="coupon_box">
						<input type="text" name="coupon_code" placeholder="쿠폰 코드를 입력하세요."
							maxlength="28">
						<p>쿠폰 등록 후 기간, 혜택, 사용 조건 등을 꼭 확인하세요.</p>
						<p>쿠폰코드 등록 시 알파벳 대소문자는 따로 구분하지 않습니다.</p>
					</div>
					<div class="wrap_btn wrap_btn2">
						<a class="popup_close">취소</a> <a class="popup_coupon_reg">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 쿠폰등록 팝업 -->

	<!-- 토스트알림-->
	<div class="alert_area" style="display: none">
		<p></p>
	</div>
	<!--// 토스트알림-->

	<!-- 사진전체보기 팝업 -->
	<div class="popup_opacity popup_view_photo" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title"></h2>
				<div class="popup_inner"></div>
			</div>
		</div>
	</div>
	<!--// 사진전체보기 팝업 -->

	<!-- 노지포인트 등록하기 팝업 -->
	<div class="popup_opacity popup_point" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">노지포인트 등록하기</h2>
				<div class="popup_inner">
					<div class="map">
						<!-- <img src="https://img.moolban.com/unsafe/asset/www/responsive/img/test/view_test_img_07.png" alt="" style="width:100%;height:100%"> -->

						<div class="point_choice_area">
							<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/point_ico03.png"
								alt="" class="ico_point">
							<p>
								지도를 움직여 포인트를 등록해주세요.<a href="">포인트 선택</a>
							</p>
						</div>
					</div>
					<!--// map -->

					<div class="inner">
						<dl class="point_ps_txt">
							<dt>
								포인트명은 검수 사항에 따라 변경될 수 있습니다.<br>등록된 포인트 상세에 닉네임을 노출해 드립니다.
							</dt>
							<dd>예시) 물반고기반님의 등록한 포인트입니다.</dd>
						</dl>

						<p class="ps_txt">* 필수 입력 항목입니다.</p>

						<div class="point_box">
							<dl class="half_box">
								<dt>포인트명</dt>
								<dd>
									<input type="text" placeholder="포인트명을 입력해주세요."><i>*</i>
								</dd>
							</dl>
							<dl class="half_box">
								<dt>주소</dt>
								<dd>
									경기도 광명<i>*</i>
								</dd>
							</dl>
						</div>

						<div class="point_check_box">
							<p class="point_title">
								주요어종<i>*</i>
							</p>
							<div class="check_kind_box">
								<a class="more_kind">어종 모두보기</a>
								<div class="check_kind clearfix">
									<div class="line_box_area">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>가물치</ins>
											</label> <label> <input type="checkbox"> <ins>강준치</ins>
											</label> <label> <input type="checkbox"> <ins>금붕어</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>끄리</ins>
											</label> <label> <input type="checkbox"> <ins>꺽지</ins>
											</label> <label> <input type="checkbox"> <ins>동자개</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>마자</ins>
											</label> <label> <input type="checkbox"> <ins>메기</ins>
											</label> <label> <input type="checkbox"> <ins>배스</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>둥근바리</ins>
											</label> <label> <input type="checkbox"> <ins>떡붕어</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">랍스터(민물)</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>비단잉어</ins>
											</label> <label> <input type="checkbox"> <ins>비단향어</ins>
											</label> <label> <input type="checkbox"> <ins>빙어</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>비단잉어</ins>
											</label> <label> <input type="checkbox"> <ins>비단향어</ins>
											</label> <label> <input type="checkbox"> <ins>빙어</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>역돔</ins>
											</label> <label> <input type="checkbox"> <ins>잉어</ins>
											</label> <label> <input type="checkbox"> <ins>장어</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>새우</ins>
											</label> <label> <input type="checkbox"> <ins>송어</ins>
											</label> <label> <input type="checkbox"> <ins>쏘가리</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>향어</ins>
											</label> <label> <input type="checkbox"> <ins>흑붕어</ins>
											</label> <label> <input type="checkbox"> <ins>민물기타</ins>
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
								주요미끼<i>*</i>
							</p>
							<div class="check_kind_box">
								<a class="more_kind">미끼 모두보기</a>
								<div class="check_kind clearfix">
									<div class="line_box_area">
										<div class="line_box">
											<label> <input type="checkbox"> <ins>떡밥(기본)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">떡밥(곡물류)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">떡반(글루텐류)</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins
													class="on">떡밥(동물성류)</ins>
											</label> <label> <input type="checkbox"> <ins>루어</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">생미끼(구더기)</ins>
											</label>
										</div>
									</div>
									<div class="line_box_area line_box_toggle">
										<div class="line_box">
											<label> <input type="checkbox"> <ins
													class="on">생미끼(새우)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">생미끼(지렁이)</ins>
											</label> <label> <input type="checkbox"> <ins
													class="on">생미끼(참붕어)</ins>
											</label>
										</div>
										<div class="line_box">
											<label> <input type="checkbox"> <ins>기타</ins>
											</label>
										</div>
									</div>
								</div>
								<!--// check_kind -->
							</div>
						</div>
						<!--// point_check_box -->

						<dl class="tip_box">
							<dt>추가 TIP</dt>
							<dd>
								<input type="text" placeholder="추가 TIP을 입력해주세요.">
							</dd>
						</dl>
						<dl class="tip_box">
							<dt>추가 TIP</dt>
							<dd>
								<input type="text" placeholder="추가 TIP을 입력해주세요."><a><img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_03.png"
									alt=""></a>
							</dd>
						</dl>

						<div class="add_tip_btn clearfix">
							<a>추가하기</a>
						</div>

						<div class="full_btn_moolban">
							<a href="">포인트 등록하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 노지포인트 등록하기 팝업 -->

	<!-- 날짜선택 팝업 -->
	<div class="popup_opacity popup_date_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">날짜 선택</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="date_area">
							<p>
								2018년 7월 <span class="one_pic">천원한장</span>
							</p>
							<table>
								<tbody>
									<tr>
										<th>일</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
									</tr>
									<tr>
										<td class="off"><a><strong>1</strong></a></td>
										<td class="off"><a><strong>2</strong></a></td>
										<td class="off"><a><strong>3</strong></a></td>
										<td class="off"><a><strong>4</strong></a></td>
										<td class="off"><a><strong>5</strong><span>음5.22</span></a>
										</td>
										<td class="off"><a><strong>6</strong></a></td>
										<td class="none"><a><strong>7</strong></a></td>
									</tr>
									<tr>
										<td class="none"><a><strong>8</strong></a></td>
										<td class="none"><a><strong>9</strong></a></td>
										<td class="today"><a><strong>10</strong></a></td>
										<td><a><strong>11</strong></a></td>
										<td class="on"><a><strong>12</strong><span>음5.29</span></a>
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
							<p>2018년 8월</p>
							<table>
								<tbody>
									<tr>
										<th>일</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
									</tr>
									<tr>
										<td class="off"><a><strong>1</strong></a></td>
										<td class="off"><a><strong>2</strong></a></td>
										<td class="off"><a><strong>3</strong></a></td>
										<td class="off"><a><strong>4</strong></a></td>
										<td class="off"><a><strong>5</strong><span>음5.22</span></a>
										</td>
										<td class="off"><a><strong>6</strong></a></td>
										<td class="none"><a><strong>7</strong></a></td>
									</tr>
									<tr>
										<td class="none"><a><strong>8</strong></a></td>
										<td class="none"><a><strong>9</strong></a></td>
										<td class="today"><a><strong>10</strong></a></td>
										<td><a><strong>11</strong></a></td>
										<td class="on"><a><strong>12</strong><span>음5.29</span></a>
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
							<p>2018년 9월</p>
							<table>
								<tbody>
									<tr>
										<th>일</th>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
									</tr>
									<tr>
										<td class="off"><a><strong>1</strong></a></td>
										<td class="off"><a><strong>2</strong></a></td>
										<td class="off"><a><strong>3</strong></a></td>
										<td class="off"><a><strong>4</strong></a></td>
										<td class="off"><a><strong>5</strong><span>음5.22</span></a>
										</td>
										<td class="off"><a><strong>6</strong></a></td>
										<td class="none"><a><strong>7</strong></a></td>
									</tr>
									<tr>
										<td class="none"><a><strong>8</strong></a></td>
										<td class="none"><a><strong>9</strong></a></td>
										<td class="today"><a><strong>10</strong></a></td>
										<td><a><strong>11</strong></a></td>
										<td class="on"><a><strong>12</strong><span>음5.29</span></a>
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
							2018년 7월 19일 <span>(음력) 6.7<i>임시공휴일</i></span>
						</p>
						<a href="">날짜 선택 완료</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 날짜선택 팝업 -->

	<!-- 어종선택 팝업 -->
	<div class="popup_opacity popup_fish_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					어종선택 <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">초기화</a>
				</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="fish_chk_area">
							<!-- <a>어종 전체<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_04.png" alt=""></a> -->
							<p>원하는 어종을 선택해주세요.</p>
						</div>

						<div class="fish_chk_label">
							<div class="all_chk">
								<label> <input type="checkbox"> <ins></ins> <span>어종
										전체</span>
								</label>
							</div>
							<div class="choice_chk">
								<label> <input type="checkbox"> <ins></ins> <span>우럭</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>감성돔</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>참돔</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>광어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>놀래미</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>농어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>도다리</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>갑오징어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>볼락</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>쭈꾸미</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>갈치</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>문어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>열기</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>고등어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>부시리</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>전갱이</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>민어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>가자미</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>벵에돔</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>방어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>돌돔</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>바다기타</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>쥐치</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>숭어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>한치</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>능성어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>돗돔</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>무늬
										오징어</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>대구</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>삼치</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>보리멸</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>쏨뱅이</span>
								</label>
							</div>
						</div>

					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<a href="">선택 완료</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 어종선택 팝업 -->

	<!-- 지역선택 팝업 -->
	<div class="popup_opacity popup_area_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					지역선택 <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">초기화</a>
				</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="area_chk_area">
							<a>서울/인천/파주/양주<img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_04.png"
								alt=""></a>
							<!-- <p>원하는 지역을 선택해주세요.</p> -->
						</div>

						<div class="area_chk_label clearfix">
							<ul class="area_chk_tab">
								<li class="active"><a href="#area_chk1">전체</a></li>
								<li><a href="#area_chk2">서해권</a></li>
								<li><a href="#area_chk3">동해권</a></li>
								<li><a href="#area_chk4">남해권</a></li>
								<li><a href="#area_chk5">제주권</a></li>
							</ul>

							<div class="area_chk_container">
								<div id="area_chk1" class="area_chk_content" style="">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>지역 전체</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>서울 / 인천 / 파주 / 양주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>시흥 / 안산 / 화성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>당진 / 서산 / 평택</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>태안 / 홍성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>보령 / 서천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>군산 / 부안</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고성 / 속초 / 양양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>강릉 / 동해 / 삼척</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울진 / 영덕</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>포항 / 경주 / 울릉도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울산 / 부산</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>거제 / 창원</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>통영 / 고성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>남해 / 사천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>여수 / 광양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고흥 / 장흥 / 완도 / 강진</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>해남 / 진도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>제주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>서귀포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>목포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>신안 / 영광 / 영암</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>대마도</span>
										</label>
									</div>
								</div>
								<div id="area_chk2" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>지역 전체</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>서울 / 인천 / 파주 / 양주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>시흥 / 안산 / 화성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>당진 / 서산 / 평택</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>태안 / 홍성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>보령 / 서천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>군산 / 부안</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고성 / 속초 / 양양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>강릉 / 동해 / 삼척</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울진 / 영덕</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>포항 / 경주 / 울릉도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울산 / 부산</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>거제 / 창원</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>통영 / 고성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>남해 / 사천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>여수 / 광양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고흥 / 장흥 / 완도 / 강진</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>해남 / 진도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>제주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>서귀포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>목포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>신안 / 영광 / 영암</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>대마도</span>
										</label>
									</div>
								</div>
								<div id="area_chk3" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>지역 전체</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>서울 / 인천 / 파주 / 양주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>시흥 / 안산 / 화성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>당진 / 서산 / 평택</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>태안 / 홍성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>보령 / 서천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>군산 / 부안</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고성 / 속초 / 양양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>강릉 / 동해 / 삼척</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울진 / 영덕</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>포항 / 경주 / 울릉도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울산 / 부산</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>거제 / 창원</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>통영 / 고성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>남해 / 사천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>여수 / 광양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고흥 / 장흥 / 완도 / 강진</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>해남 / 진도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>제주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>서귀포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>목포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>신안 / 영광 / 영암</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>대마도</span>
										</label>
									</div>
								</div>
								<div id="area_chk4" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>지역 전체</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>서울 / 인천 / 파주 / 양주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>시흥 / 안산 / 화성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>당진 / 서산 / 평택</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>태안 / 홍성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>보령 / 서천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>군산 / 부안</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고성 / 속초 / 양양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>강릉 / 동해 / 삼척</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울진 / 영덕</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>포항 / 경주 / 울릉도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울산 / 부산</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>거제 / 창원</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>통영 / 고성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>남해 / 사천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>여수 / 광양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고흥 / 장흥 / 완도 / 강진</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>해남 / 진도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>제주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>서귀포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>목포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>신안 / 영광 / 영암</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>대마도</span>
										</label>
									</div>
								</div>
								<div id="area_chk5" class="area_chk_content"
									style="display: none;">
									<div class="all_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>지역 전체</span>
										</label>
									</div>
									<div class="choice_chk">
										<label> <input type="checkbox"> <em><ins></ins></em>
											<span>서울 / 인천 / 파주 / 양주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>시흥 / 안산 / 화성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>당진 / 서산 / 평택</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>태안 / 홍성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>보령 / 서천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>군산 / 부안</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고성 / 속초 / 양양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>강릉 / 동해 / 삼척</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울진 / 영덕</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>포항 / 경주 / 울릉도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>울산 / 부산</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>거제 / 창원</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>통영 / 고성</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>남해 / 사천</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>여수 / 광양</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>고흥 / 장흥 / 완도 / 강진</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>해남 / 진도</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>제주</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>서귀포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>목포</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>신안 / 영광 / 영암</span>
										</label> <label> <input type="checkbox"> <em><ins></ins></em>
											<span>대마도</span>
										</label>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<a href="">선택 완료</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 지역선택 팝업 -->

	<!-- 필터 팝업 -->
	<div class="popup_opacity popup_filter_chk" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					필터 <a class="reset_btn"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reset_ico.png"
						alt="">초기화</a>
				</h2>
				<div class="popup_inner">
					<div class="scroll_area">
						<div class="filter_area sort_box ico_box">
							<h2>정렬</h2>
							<ol class="inner">
								<li class="sort_1"><a class="on">거리순</a></li>
								<li class="sort_2"><a>활동순</a></li>
								<li class="sort_3"><a>낮은 가격순</a></li>
								<li class="sort_4"><a>높은 가격순</a></li>
								<li class="sort_5"><a>조황순</a></li>
								<li class="sort_6"><a>찜순</a></li>
								<li class="sort_7"><a>댓글순</a></li>
							</ol>
						</div>
						<!--// sort_box -->
						<div class="filter_area street_box filter_chkOn">
							<h2>거리설정</h2>
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
							<h2>어종</h2>
							<div class="check_kind_box inner">
								<a class="more_kind">어종 모두보기</a>
								<div class="check_kind clearfix">
									<div class="line_box_area">
										<div class="line_box_area">
											<label> <input type="checkbox"> <ins></ins> <span>가물치</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>강준치</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>금붕어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>끄리</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>꺽지</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>동자개</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>마자</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>메기</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>배스</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>둥근바리</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>떡붕어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>랍스터(민물)</span>
											</label>
										</div>
										<div class="line_box_area line_box_toggle">
											<label> <input type="checkbox"> <ins></ins> <span>비단잉어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>비단향어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>빙어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>비단잉어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>비단향어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>빙어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>역돔</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>잉어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>장어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>새우</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>송어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>쏘가리</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>향어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>흑붕어</span>
											</label> <label> <input type="checkbox"> <ins></ins>
												<span>민물기타</span>
											</label>
										</div>
									</div>
								</div>
								<!--// check_kind -->
							</div>
						</div>
						<!--// fish_box -->

						<div class="filter_area time_box">
							<h2>이동시간</h2>
							<div class="inner">
								<p class="date_txt">2시간~10시간</p>
								<div class="line_box">
									<div class="line">
										<p>
											<em></em>
										</p>
									</div>
									<div class="clearfix">
										<p class="left_date">0시간</p>
										<p class="right_date">10시간</p>
									</div>
								</div>
							</div>
						</div>
						<!--// street_box -->

						<div class="filter_area price_box filter_chkOn">
							<h2>가격(원)</h2>
							<ol class="inner">
								<li><a class="on">전체</a></li>
								<li><a>~ 3만</a></li>
								<li><a>3 ~ 5만</a></li>
								<li><a>5~ 10만</a></li>
								<li><a>10만 ~</a></li>
							</ol>
						</div>
						<!--// price_box -->

						<div class="filter_area island_box">
							<h2>섬낚시(원도권)</h2>
							<div class="inner">
								<label> <input type="checkbox"> <ins></ins> <span>가거도</span>
								</label> <label> <input type="checkbox"> <ins></ins> <span>추자도</span>
								</label>
							</div>
						</div>
						<!--// island_box -->

						<div class="filter_area goods_box filter_chkOn">
							<h2>상품유형</h2>
							<ol class="inner">
								<li><a class="on">투어</a></li>
								<li><a>스테이</a></li>
								<li><a>렌탈</a></li>
								<li><a>낚시</a></li>
								<li><a>세일링</a></li>
							</ol>
						</div>
						<!--// goods_box -->

						<div class="inner_box" style="display: none">
							<div class="filter_area place_box filter_chkOn">
								<h2>좌대유형</h2>
								<ol class="inner">
									<li><a class="on">좌대</a></li>
									<li><a>낚시터</a></li>
									<li><a>해상콘도</a></li>
									<li><a>손맛터</a></li>
									<li><a>잡이터</a></li>
									<li><a>하우스</a></li>
									<li><a>노지</a></li>
								</ol>
							</div>
							<!--// place_box -->

							<div class="filter_area service_box">
								<h2>섬낚시(원도권)</h2>
								<div class="inner">
									<label> <input type="checkbox"> <ins></ins> <span>회
											떠드림</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>낚시대
											대여</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>어초/침선</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>중식</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>가이드</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>커피/음료제공</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>먼바다</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>조식</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>식사제공</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>스낵바</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>PC</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>WIFI</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>낚시용품</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>미끼</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>떡밥</span>
									</label> <label> <input type="checkbox"> <ins></ins> <span>사물함</span>
									</label>
								</div>
							</div>
							<!--// service_box -->

							<div class="filter_area siseol_box ico_box">
								<h2>편의시설</h2>
								<ol class="inner">
									<li class="siseol_1"><a class="on">놀이방</a></li>
									<li class="siseol_2"><a>카페</a></li>
									<li class="siseol_3"><a>흡연실</a></li>
									<li class="siseol_4"><a>먹거리관</a></li>
									<li class="siseol_5"><a>그릴</a></li>
									<li class="siseol_6"><a>버너</a></li>
									<li class="siseol_7"><a>야외식탁</a></li>
									<li class="siseol_8"><a>화장실</a></li>
									<li class="siseol_9"><a>구명밧줄</a></li>
									<li class="siseol_10"><a>구명조끼</a></li>
									<li class="siseol_11"><a>그늘막</a></li>
									<li class="siseol_12"><a>난방</a></li>
									<li class="siseol_13"><a>냉장고</a></li>
									<li class="siseol_14"><a>샤워시설</a></li>
									<li class="siseol_15"><a>선풍기</a></li>
									<li class="siseol_16"><a>소화기</a></li>
									<li class="siseol_17"><a>에어컨</a></li>
									<li class="siseol_18"><a>침구</a></li>
									<li class="siseol_19"><a>커피/음료</a></li>
									<li class="siseol_20"><a>파라솔</a></li>
									<li class="siseol_21"><a>CCTV</a></li>
									<li class="siseol_22"><a>TV</a></li>
									<li class="siseol_23"><a>낚시객보험</a></li>
									<li class="siseol_24"><a>커피포트</a></li>
								</ol>
							</div>
							<!--// siseol_box -->

							<div class="filter_area siseol_box ico_box">
								<h2>주변시설</h2>
								<ol class="inner">
									<li class="siseol_25"><a class="on">숙박시설</a></li>
									<li class="siseol_26"><a>야영지</a></li>
									<li class="siseol_27"><a>취사장</a></li>
									<li class="siseol_28"><a>샤워장</a></li>
									<li class="siseol_29"><a>주차장</a></li>
									<li class="siseol_30"><a>휴게실</a></li>
									<li class="siseol_31"><a>모텔</a></li>
									<li class="siseol_32"><a>민박</a></li>
									<li class="siseol_33"><a>낚시점</a></li>
									<li class="siseol_34"><a>매점</a></li>
									<li class="siseol_35"><a>식당</a></li>
									<li class="siseol_36"><a>펜션</a></li>
								</ol>
							</div>
							<!--// siseol_box -->
						</div>

						<div class="filter_detail_btn">
							<a>상세 항목 보기</a>
						</div>
					</div>
					<!--// scroll_area -->

					<div class="scroll_btn_box">
						<a href="">총 3개 항목 적용하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 필터 팝업 -->

	<!-- 내 위치 재설정 팝업 -->
	<div class="popupsm_opacity popup_location" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">내 위치 재설정</h2>
				<div class="popup_inner">
					<div class="location_area">
						<p>
							현재 위치 재검색 또는<br>지도로 위치설정이 가능합니다.
						</p>
						<a class="location_btn1 location_reload_btn"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_ico01.png"
							alt="">현재 위치 재검색</a> <a class="location_btn2 btn_get_map"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/location_ico02.png"
							alt="">지도˙주소로 위치 설정</a>
					</div>
					<div class="search_area" style="display: none">
						<div class="search_box">
							<input type="text" id="btn_location_addr"
								placeholder="읍, 면, 동 리 입력"> <a class="search_close"
								style="display: none;"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_ico02.png"
								alt=""></a> <a class="search_addr_btn"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/search_ico03.png"
								alt=""></a>
						</div>
						<div class="map_box" style="">
							<div id="get_map" style="width: 100%; height: 100%;"></div>
							<div class="full_map_btn">
								<a>설정 완료</a>
							</div>
						</div>
						<dl class="map_none" style="display: none">
							<dt>정확하게 입력해주세요.</dt>
							<dd>예 : 가평군, 평창군, 강남구, 교동</dd>
						</dl>
						<div class="search_txt"></div>
					</div>
				</div>
				<div class="popup_close wrap_close">
					<a class="">닫기</a>
				</div>
			</div>
		</div>
	</div>
	<!--// 내 위치 재설정 팝업 -->

	<!-- 티켓가이드 팝업 -->
	<div class="popup_opacity popup_ticket_guide" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">티켓가이드</h2>
				<div class="popup_inner">
					<div class="ticket_area">
						<p class="guide_title">티켓 가이드</p>

						<!--dl>
							<dt>QR 코드 및 NFC 태깅을 이용한 방법</dt>
							<dd>물반고기반 로그인 상태에서 현장  QR코드 및  NFC 태깅 (본인 자동 인증)</dd>
							<dd>사용할 티켓명 및 수량 업주에게 구두 전달</dd>
							<dd>업주가 업주관리자에게 티켓 사용 처리</dd>
							<dd>사용처리 완료된 티켓내역 확인</dd>
						</dl-->
						<dl>
							<dt>현장에서 바로 사용하는 방법</dt>
							<dd>티켓 구매시 인증받은 전화번호 뒷자리 또는 이름 현장에서 구두 전달</dd>
							<dd>업주가 업주관리자에서 조회 (본인 현장 인증)</dd>
							<dd>사용할 티켓명 및 수량 업주에게 구두 전달</dd>
							<dd>업주가 업주관리자에서 티켓 사용 처리</dd>
							<dd>사용처리완료된 티켓내역 확인</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 티켓가이드 팝업 -->

	<!-- 전면팝업 -->
	<div class="popup_front" style="display: none">
		<div class="front_inner">
			<div class="banner_box">
				<img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/test/popup_test_img_01.png"
					alt="">
			</div>
			<div class="fornt_btn">
				<a>7일동안 보지 않기</a> <a>닫기</a>
			</div>
		</div>
	</div>
	<!--// 전면팝업 -->

	<!-- 이용안내 팝업 -->
	<div class="popupsm_opacity popup_use_info" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					<img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/rtreserve_ico11.png"
						alt="">이용 안내
				</h2>
				<div class="popup_inner">
					<div class="text_box">
						<p class="dot_txt">성인은 만 19세 미만으로 하며,</p>
						<p class="dot_txt">신분증 제시 필수입니다.</p>
					</div>
					<div class="wrap_btn">
						<a class="popup_close">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 이용안내 팝업 -->

	<!-- 티켓 이용안내 팝업 -->
	<div class="popupsm_opacity popup_ticket_info" style="display: none;">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">
					<img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/rtreserve_ico12.png"
						alt="">이용 안내
				</h2>
				<div class="popup_inner">
					<div class="text_box"></div>
					<div class="wrap_btn">
						<a class="popup_close">확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 티켓 이용안내 팝업 -->

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

	<!-- 반덤상품 팝업 -->
	<div class="popupsm_opacity popup_bandum" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">반덤상품이란?</h2>
				<div class="popup_inner">
					<div class="text_box">
						<p class="bandum_ico">50% 반덤 쿠폰 지급</p>
						<p class="bandum_txt">
							50% 할인이 가능한 반덤 쿠폰이 지급되는 상품으로,<br> 반덤 상품 예약 후 예약 당일 현장에서 <span>NFC
								태깅 및 업체 방문확인 시 <br>반덤 쿠폰이 지급됩니다.
							</span>
						</p>

						<div class="notice_txt">
							<p>
								<img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_notice.png"
									alt=""> 구매한 반덤 상품에 따라 할인 최대 금액이 달라질 수 있습니다.<br>반덤
								상품을 구매한 동일 업체에서만 사용이 가능합니다.
							</p>
						</div>
					</div>
					<div class="wrap_btn">
						<a>확인</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 반덤상품 팝업 -->

	<!-- 알림내역 팝업 -->
	<div class="popupsm_opacity popup_alarm_list" style="display: none">
		<div class="popup_area" id="notice_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<div class="popup_section">
				<h2 class="popup_title">알림내역</h2>
				<!-- 알림내역 있음 -->
				<div class="popup_inner" id="get_notice_list" data-start_key="0"
					data-offset="0" data-limit="50" data-last_offset="" data-auto="">

				</div>
			</div>
		</div>
	</div>
	<!--// 알림내역 팝업 -->

	<!-- 공유하기 팝업 -->
	<div class="popup_share" style="display: none">
		<div class="popup_area">
			<a class="close_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_01.png"
				alt="팝업닫기"></a>
			<div class="share_section">
				<h2 class="share_title">공유하기</h2>
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
							<a href="javascript:shareFacebook()">페이스북</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareStory()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_kakaostory.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareStory()">카카오스토리</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareNaver()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_naver.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareNaver()">네이버</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareBand()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_band.png"
								alt=""></a>
						</dt>
						<dd>
							<a href="javascript:shareBand()">네이버 밴드</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a href="javascript:shareCopy()"><img
								src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/share_copy.png"
								alt="" class="copy_url"></a>
						</dt>
						<dd>
							<a href="javascript:shareCopy()">URL 복사</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<!--// 공유하기 팝업 -->

	<!-- 로딩 -->
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
	<!--// 로딩 -->

	<!-- 전화예약 팝업 -->
	<div class="popupsm_opacity popup_call" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<div class="popup_section">

				<input type="hidden" name="c_key" value="">
				<div class="popup_inner">
					<div class="text_box">
						<p></p>
						<strong><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_notice02.png"
							alt="">모바일에서만 전화 문의가 가능합니다. </strong> <a
							class="reserve_call reserve_tel">업체전화문의</a>
					</div>
					<div class="wrap_btn wrap_btn2">
						<a class="wrap_close">취소</a> <a class="reserve_call tel">전화걸기</a>
						<a class="popup_call_reserve_url reserve_tel">예약하기</a>
					</div>
					<!--// wrap_btn -->
				</div>
			</div>
		</div>
	</div>
	<!--// 전화예약 팝업 -->

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

	<!-- 앱설치 주소받기 팝업 -->
	<div class="popupsm_opacity popup_sms" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a>
			<form name="smsForm" id="smsForm" method="post">
				<div class="popup_section">
					<h2 class="popup_title">앱 설치 주소 받기 (SMS)</h2>
					<div class="popup_inner">
						<div class="inputBox">
							<input type="tel" placeholder="휴대폰 번호를 '-' 없이 입력해주세요."
								name="intro_phone" class="telinput" maxlength="13"
								data-phone-mask="">
							<p>휴대폰 번호를 입력하신 후 전송 버튼을 누르면, 물반고기반 앱 다운로드 주소가 SMS로 전송됩니다.</p>
							<p>동일한 번호로 1일 최대 3번 까지만 전송 가능합니다.</p>
						</div>
						<div class="wrap_btn wrap_btn2">
							<a class="wrap_close">취소</a> <a id="btn_sms"><strong>주소발송</strong></a>
						</div>
						<!--// wrap_btn -->
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// 앱설치 주소받기 팝업 -->

	<!-- 키워드설정 팝업 -->
	<div class="popup_opacity popup_keyword" style="display: none">
		<div class="popup_area">
			<a class="closein_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_05.png"
				alt="팝업닫기"></a> <a class="closemo_btn"><img
				src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/popup_close_02.png"
				alt="팝업닫기"></a>
			<form name="keywordForm" id="keywordForm" method="post">
				<div class="popup_section">
					<h2 class="popup_title">키워드 설정</h2>
					<div class="popup_inner" id="get_keyword_list" data-start_key="0"
						data-offset="0" data-limit="20" data-last_offset="" data-auto="">

					</div>
				</div>
			</form>
		</div>
	</div>
	<!--// 키워드설정 팝업 -->

	<!-- 보험가입유도 팝업 -->
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
								alt="">과<img
								src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/pop_ico03.png"
								alt="">가 함께합니다.
						</dd>
					</dl>
					<div class="insur_box clearfix">
						<img
							src="https://www.moolban.com/asset/www/responsive/img/reserve_renew/pop_ico04.png"
							alt="">
						<p>
							[만 35세, 남]<br>실속형 보험상품 가입시<span>보험 2,890원</span>
						</p>
					</div>
					<dl class="insur_txt clearfix">
						<dt>보장내용</dt>
						<dd>
							상해사망 1억원 상해후유장해 1억원<br>배상책임 1천만원세균성장염 10만원<br>상해입원일당
							3만원<span>※ 표준형 보험상품 가입 시</span>
						</dd>
					</dl>
					<div class="btn_box">
						<a class="insur_btn1" style="display: none">상품 결제</a> <a
							class="insur_btn2" style="display: none">로그인 후 보험 가입하기</a>
						<!-- 보험 가입하기 -->
						<p class="insur_txt1" style="display: none">이미 보험에 가입되어있습니다!</p>
						<!-- 중복 -->
						<p class="insur_txt2" style="display:">
							만 19세 미만은 가입이 불가합니다.<span>미성년자는 친권자의 자녀로만 가입이 가능합니다.</span>
						</p>
						<!-- 19세 -->
						<a class="insur_btn3" style="display:">상품 결제하러 가기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 보험가입유도 팝업 -->
	<!-- 조행기유도 팝업 -->
	<!--// 조행기유도 팝업 -->
	<div class="more_fixed" style="display: none">
		<div class="more_area">
			<div class="more_container">
				<a class="more_close"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/more_close.png"
					alt=""></a>
				<div class="more_content" id="more_content" style="cursor: pointer;">
					<p>
						회원가입 및 로그인 시<br>할인 쿠폰과 추가 혜택을 받을 수 있어요.
					</p>
					<a class="login_btn">로그인/회원가입</a>
				</div>
				<div class="more_list ">

					<div class="sub_more_list">
						<p class="sub_01">마이메뉴</p>
						<p class="sub_02">서비스</p>
						<p class="sub_03">기타</p>
					</div>
					<div class="nav_more_list">
						<p class="nav_01">마이메뉴</p>
						<p class="nav_02">카테고리</p>
					</div>


					<div class="more_list_box">
						<ol class="clearfix">


							<li class="nomember_orders mysub1_1"><a> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more1.png"
									alt=""> 주문조회
							</a></li>
							<li class="mysub1_2"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more2.png"
									alt=""> 쿠폰함
							</a></li>
							<li class="mysub1_3"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more21_2.png"
									alt=""> 포인트
							</a></li>
							<li class="mysub1_4"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more3.png"
									alt=""> 찜목록
							</a></li>
							<li class="mysub2_1"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more5.png"
									alt=""> 내 글쓰기
							</a></li>
							<li class="mysub2_2"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more6.png"
									alt=""> 내 글관리
							</a></li>
							<li class="mysub2_3"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more8.png"
									alt=""> 알림내역
							</a></li>
							<li class="mysub2_4"><a href="/mypage/login"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more19.png"
									alt=""> 키워드설정
							</a></li>
						</ol>
						<ol class="clearfix">
							<li class="mysub3_1"><a href="/contest/index"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more16.png"
									alt=""> 낚시대회
							</a></li>
							<li class="mysub3_2"><a href="/multtae"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more16.png"
									alt=""> 물때
							</a></li>
							<li class="mysub3_3"><a href="/realtime/sea"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more14.png"
									alt=""> 어디가 조황
							</a></li>
							<li class="btn_share mysub3_4"><a> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more9.png"
									alt=""> 친구에게 공유
							</a></li>
						</ol>
						<ol class="clearfix">
							<li class="mysub4_1"><a href="/more/notice"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more10.png"
									alt=""> 공지사항
							</a></li>
							<li class="mysub4_2"><a href="/more/event_list"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more11.png"
									alt=""> 이벤트
							</a></li>
							<li class="mysub4_3"><a href="/service/faq"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more12.png"
									alt=""> 고객센터
							</a></li>
							<li class="mysub4_4"><a href="/more/policy"> <img
									src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_more13.png"
									alt=""> 약관
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
							alt="">구글플레이 바로가기</a> <a href="javascript:;"
							class="apple_link btn-app-download" data-os="I"
							data-url="https://itunes.apple.com/us/app/%EB%AC%BC%EB%B0%98%EA%B3%A0%EA%B8%B0%EB%B0%98/id1234813887?l=ko&amp;ls=1&amp;mt=8"><img
							src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/app_ico02.png"
							alt="">앱스토어 바로가기</a>
					</div>
					<div class="box">
						<p>
							<span>물반고기반</span> 고객센터
						</p>
						<a href="tel:15996975">1599-6975</a> <span>365일 10시~18시 운영<em>점심시간
								12시 -13시 30분</em></span>
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
															.toastAlert('2자 이상 검색어를 입력해주세요.');
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
																.toastAlert('2자 이상 검색어를 입력해주세요.');
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
					<a class="title_reserve_line" href="/reserve/live_search">예약검색</a>
					<p class="h_tit">반반톡</p>
				</section>
			</div>

			<!-- 반반톡 -->
			<div class="talk_header" style="display:">
				<div class="talk_tab_area">
					<section>
						<ul class="talk_tab clearfix" >
							<li class="on"><a data-talk_key="6" data-tc_key="0"
								data-u_type="1">업주선장조황</a></li>
							<li class="on"><a data-talk_key="1" data-tc_key="0"
								data-u_type="1">유저조행기</a></li>
							<li class="on"><a data-talk_key="12" data-tc_key="0"
								data-u_type="1"><i>N</i>동반출조</a></li>
							<li class="on"><a data-talk_key="11" data-tc_key="0"
								data-u_type="1">중고장터</a></li>
							<li class="on"><a data-talk_key="10" data-tc_key="0"
								data-u_type="1">물반동영상</a></li>
							<li class="on"><a data-talk_key="2" data-tc_key="0"
								data-u_type="1">유용한정보</a></li>
							<li class="on"><a data-talk_key="3" data-tc_key="0"
								data-u_type="1">낚시지식인</a></li>
							<li class="on"><a data-talk_key="4" data-tc_key="0"
								data-u_type="1">물반갤러리</a></li>
							<li class="on"><a data-talk_key="5" data-tc_key="0"
								data-u_type="1">자유게시판</a></li>
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

	<div class="talk_area container bg_mp" style="width: 1120px; height: 18677px;">

		<section>
			<div class="contents_list">
				<!-- 물반동영상 공지 //-->
				<div class="talk_notice clearfix">
					<span>공지</span>
					<div class="vTicker"
						style="overflow: hidden; position: relative; height: 22px;">
						<ul
							style="position: absolute; margin: 0px; padding: 0px; top: 0px;">


							<li style="margin: 0px; padding: 0px; height: 22px;"><a
								href="/talk/view/134541">[이벤트]나만의 해돋이 인증샷 이벤트 당첨자 발표</a></li>
							<li style="margin: 0px; padding: 0px; height: 22px;"><a
								href="/talk/view/25033">반반톡 운영 정책 안내</a></li>
						</ul>
					</div>
				</div>
				<!--// talk_notice -->
				<!--// 물반동영상 공지 -->

				<!-- 실시간 조황 //-->
				<div class="live_hot clearfix">
					<a href="/realtime/sea"><p class="hot_title">
							실시간 조황 <span>HOT</span>
						</p></a>
					<div class="hot_list">
						<div class="vTicker"
							style="overflow: hidden; position: relative; height: 27px;">
							<ul
								style="position: absolute; margin: 0px; padding: 0px; top: 0px;">

								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=41&amp;scm_key=4&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=떡붕어">충청남도
										: <span>떡붕어</span>
								</a></li>
								<li
									style="margin: 0px; padding: 0px; height: 27px; display: none;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=23&amp;scm_key=7&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=긴꼬리벵에돔">제주도
										: <span>긴꼬리벵에돔</span>
								</a></li>
								<li
									style="margin: 0px; padding: 0px; height: 27px; display: none;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=42&amp;scm_key=5&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=수입붕어">전라북도
										: <span>수입붕어</span>
								</a></li>
								<li
									style="margin: 0px; padding: 0px; height: 27px; display: none;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=7&amp;scm_key=1&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=광어">서해중부
										: <span>광어</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=24&amp;scm_key=2&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=농어">서해남부
										: <span>농어</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=50&amp;scm_key=3&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=메기">충청북도
										: <span>메기</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=58&amp;scm_key=6&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=배스">전라남도
										: <span>배스</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=27&amp;scm_key=6&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=갈치">남해서부
										: <span>갈치</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=39&amp;scm_key=3&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=대구">동해중부
										: <span>대구</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=92&amp;scm_key=5&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=돌문어">남해동부
										: <span>돌문어</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=90&amp;scm_key=1&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=랍스터(민물)">경기도
										: <span>랍스터(민물)</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=40&amp;scm_key=8&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=붕어">경상남도
										: <span>붕어</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=1&amp;sif_key=39&amp;scm_key=4&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=대구">동해남부
										: <span>대구</span>
								</a></li>
								<li style="margin: 0px; padding: 0px; height: 27px;"><a
									href="/realtime/list?sea_type=2&amp;sif_key=50&amp;scm_key=2&amp;srch_from=20191216&amp;srch_to=20200116&amp;fish_name=메기">강원도
										: <span>메기</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--// live_hot -->


				<!--// 실시간 조황 -->
				<div class="talk_list">
	
					<div id="talk_detail_list" data-start_key="0" data-offset="0"
						data-limit="30" data-last_offset="" data-is_work="">
	<!-- 	<for문 사용하기> -->

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
									<strong>대박호-B</strong>
									<p>
										<img
											src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg"
											alt="">경남 창원시 진해구
									</p>
								</div>
								<div class="profile_date">
									<p>7분 전</p>
								</div>
							</div>
							<!-- profile_line -->
						
						
							<a class="talk_view_btn" href="talk_detail">
							
								<p class="talk_pic">
									<span class="manage">바다 조황</span> <span class="kind">문어</span>
								</p>
								<div class="talk_text">
									<strong>1/15 키로급 귀한문어~내일금욜문어예약됩니다^^</strong>
									<p class="more">2020 1/15 수요일 문어 조황입니다. 평택, 대구에서 오셨습니다.
										단골손님, 초보손님과 함께 했습니다. 귀한~~ 키로급 문어 잡고 왔습니다. 설제수용 문어 잡기 힘드네요^^
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
								</div> <!--// 단일 이미지일때 -->
							</a>

							<div class="talk_count_btn">
								<div class="talk_count clearfix">
									<p class="like_line">
										좋아요 <span id="like_cnt135516">0</span>
									</p>
									<div class="comm_mark_line">
										<p class="comm_line">
											댓글 <span>0</span>
										</p>
										<p class="mark_line">
											스크랩 <span id="scrap_cnt135516">0</span>
										</p>
										<!-- 상세 팝업
				<p><a href="javascript:;" class="talk_info_btn" data-tl_key="135516">tl_key</a></p>
				-->
									</div>
								</div>
								<div class="talk_btn clearfix">
									<a class="talk_like_btn"
										href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">좋아요</a>

									<a class="talk_comm_btn" href="talk_detail#comment_box">댓글쓰기</a>
									<a class="talk_mark_btn"
										href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">스크랩</a>

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
									<strong>대박호-B</strong>
									<p>
										<img src="https://img.moolban.com/unsafe/750x390/filters:no_upscale()/company/${pageContext.request.contextPath}/resources/images/1558/e752118b6f4c77f6b71b4fa20ccc029c.jpg" alt="">경남 창원시 진해구
									</p>
								</div>
								<div class="profile_date">
									<p>7분 전</p>
								</div>
							</div>
							<!-- profile_line -->
						
						
							<a class="talk_view_btn" href="talk_detail">
							
								<p class="talk_pic">
									<span class="manage">바다 조황</span> <span class="kind">문어</span>
								</p>
								<div class="talk_text">
									<strong>1/15 키로급 귀한문어~내일금욜문어예약됩니다^^</strong>
									<p class="more">2020 1/15 수요일 문어 조황입니다. 평택, 대구에서 오셨습니다.
										단골손님, 초보손님과 함께 했습니다. 귀한~~ 키로급 문어 잡고 왔습니다. 설제수용 문어 잡기 힘드네요^^
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
								</div> <!--// 단일 이미지일때 -->
							</a>

							<div class="talk_count_btn">
								<div class="talk_count clearfix">
									<p class="like_line">
										좋아요 <span id="like_cnt135516">0</span>
									</p>
									<div class="comm_mark_line">
										<p class="comm_line">
											댓글 <span>0</span>
										</p>
										<p class="mark_line">
											스크랩 <span id="scrap_cnt135516">0</span>
										</p>
										<!-- 상세 팝업
				<p><a href="javascript:;" class="talk_info_btn" data-tl_key="135516">tl_key</a></p>
				-->
									</div>
								</div>
								<div class="talk_btn clearfix">
									<a class="talk_like_btn" href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">좋아요</a>

									<a class="talk_comm_btn" href="talk_detail#comment_box">댓글쓰기</a>
									<a class="talk_mark_btn" href="/mypage/login?redirect=%2Ftalk%2Flist%3Ftalk_key%3D6%26tc_key%3D1">스크랩</a>

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
																							var length = 60; //표시할 글자수 정하기
																							//전체 옵션을 자를 경우
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
																																			+ '...'); //지정한 글자수 이후 표시할 텍스트(...)
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
																							var length = 100; //표시할 글자수 정하기
																							//전체 옵션을 자를 경우
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
																																			+ '...'); //지정한 글자수 이후 표시할 텍스트(...)
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

		<div class="talk_filter scroll_up" style="display: block">
			<section class="clearfix">
				<a class="talk_filter01 talk_area_btn" data-talk_key="6">지역</a> <a
					class="talk_filter02 talk_filter_btn " data-tc_key="0"
					data-talk_key="6">필터</a> <i class="talk_btn_box"
					style="display: none"> <a class="talk_write_btn"
					href="/mypage/login?redirect=/talk/form?talk_key=6"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/write/talk_write_btn.png"
						alt="글쓰기"></a>
				</i>
			</section>
		</div>

		<div class="talk_filter2 scroll_up" style="display: none">
			<section class="clearfix">
				<a class="talk_write_btn"
					href="/mypage/login?redirect=/talk/form?talk_key=6"><img
					src="https://img.moolban.com/unsafe/asset/www/responsive/img/write/talk_write_btn.png"
					alt="글쓰기"></a>
			</section>
		</div>

		<div class="talk_filter3 scroll_up" style="display: none">
			<section class="clearfix">
				<a class="talk_filter03 talk_search_btn">중고장터 상품 검색하기</a> <i
					class="talk_btn_box" style="display: none;"> <a
					class="talk_write_btn btn_write_move"
					href="/mypage/login?redirect=/talk/form?talk_key=6"><img
						src="https://img.moolban.com/unsafe/asset/www/responsive/img/write/talk_write_btn.png"
						alt="글쓰기"></a>
				</i>
			</section>
		</div>


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
		<div class="banner_top_area scroll_up" style="display: block;">


		</div>

		<!-- fixed bottom -->
		<div class="foot_fixed scroll_up">
			<a href="/home">홈</a> <a href="/category/list?sea_type=1">바다</a> <a
				href="/category/list?sea_type=2">민물</a> <a href="/search/home">검색</a>
			<a href="/talk/list" class="on">반반톡</a>
		</div>
		<!--// fixed bottom -->
	</div>
	<!--// 공통 bottom -->


	<!-- 상품선택 bottom -->
	<div style="display: none">
		<!-- 상품선택 fixed -->
		<a class="reserve_scroll_btn"> <img
			src="/asset/www/responsive/img/basic/reserve_scroll.png" alt="">
		</a>
		<!--// 상품선택 fixed -->

		<!-- fixed bottom -->
		<div class="view_fixed">
			<section>
				<a>상품선택</a>
			</section>
		</div>
		<!--// fixed bottom -->
	</div>
	<!--// 상품선택 bottom -->



	<!-- script -->
	<script
		src="https://www.moolban.com/dist/asset/www/responsive/${pageContext.request.contextPath}/resources/js/pub.js?rand=1577763884"></script>

	<!-- ADN 리타게팅 스크립트 -->
	<script type="text/javascript">
		var varUA = navigator.userAgent.toLowerCase(); //userAgent 값 얻기

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
                    $(this).addClass("selected");                      //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
                    $(this).siblings().removeClass("selected");  //siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
                });
            });
        });
    </script>

</body>
</html>