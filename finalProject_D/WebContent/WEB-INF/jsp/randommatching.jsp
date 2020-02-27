<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
    <style>
    
    
.reserve_area .reserve_home .visual_area{width:100%;height:400px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reserve_visual.jpg') center bottom 30% no-repeat;background-size:cover;}
.reserve_area .reserve_home .visual_area p{font-size:40px;color:#fff;padding-top:138px}
.reserve_area .reserve_home .link_area{font-size:0;text-align:center;}
.reserve_area .reserve_home .link_area dl{margin-top:-30px;width:275px;height:393px;background:#fff;box-shadow:5px 5px 5px 0 rgba(0, 0, 0, 0.05);display:inline-block;}
.reserve_area .reserve_home .link_area dt{padding-top:110px;position:relative;font-size:30px;text-align:center;}
.reserve_area .reserve_home .link_area dt img{position:absolute;top:50px;left:50%;transform:translate(-50%, 0%)}
.reserve_area .reserve_home .link_area dt a{margin:30px auto 0;width:150px;height:49px;line-height:47px;border-radius:3rem;font-size:20px;color:#ff724c;font-weight:500;border:1px solid #ff724c;display:block;}
.reserve_area .reserve_home .link_area dd{margin-top:50px;border-top:1px solid #e6e6e6;padding-top:30px;font-size:16px;color:#9a9a9a;text-align:center;}
.reserve_area .reserve_home .link_area dl:nth-child(2){margin:-30px 30px 0;}
.reserve_area .reserve_home .link_area dl:nth-child(2) dt img{top:53px}
.reserve_area .reserve_home .link_area dl:nth-child(2) dt a{border:1px solid #7a47b8;color:#7a47b8}

.reserve_area .live_search_area{margin-top:40px;padding-top:40px;border-top:1px solid #e6e6e6;}
.reserve_area .live_search_area:first-child{border-top:none;}
.reserve_area .live_search_area dt{font-weight:300;font-size:35px;color:#808080;margin-bottom:40px;}
.reserve_area .live_search_area dd a{font-size:30px;color:rgb(248,89,89);font-weight:700; cursor: pointer;	}
.reserve_area .live_search_area dd input{font-size:30px;color:#ff724c;font-weight:500;border:none;outline:none}
.reserve_area .live_search_area .search_chk a{margin-right:20px;font-size:30px;color:#d5d5d5;font-weight:700;text-align:center;height:70px;line-height:68px;display:inline-block;border:1px solid #d5d5d5;border-radius:3rem;width:200px;cursor: pointer;}
.selected{border:1px solid #ff724c;background:rgb(248,89,89);color:#fff;}

.reserve_area .search_btn{margin-top:120px}
.reserve_area .search_btn a{font-size:25px;color:#fff;font-weight:700;width:100%;height:80px;line-height:78px;background:rgb(248,89,89);display:block;text-align:center;border-radius:0.3rem}

.reserve_area .reserve_calendar{width:100%;border:1px solid #e6e6e6;margin:50px 0;background:#fff;display:none}
.reserve_area .calendar_date{position:relative;}
.reserve_area .calendar_date p{font-size:23px;font-weight:500;text-align:center;position:relative;width:157px;margin:25px auto;}
.reserve_area .calendar_date a.calendar_prev{position:absolute;left:-11px;top:3px;}
.reserve_area .calendar_date a.calendar_next{position:absolute;right:-11px;top:3px;}
.reserve_area .calendar_date .ico_pic{font-size:18px;font-weight:500;position:absolute;top:5px;right:20px;}
.reserve_area .calendar_date .ico_pic:before{width:7px;height:7px;border-radius:100%;display:inline-block;position:relative;top:-4px;margin-right:10px;content:'';}
.reserve_area .calendar_date .one_pic{color:#eb9200}
.reserve_area .calendar_date .one_pic:before{background:#eb9200}

.reserve_area .reserve_calendar table{border-top:1px solid #eee;width:100%;table-layout:fixed;}
.reserve_area .reserve_calendar table th{font-weight:normal;font-size:16px;color:#8c8c8c;padding-top:16px;padding-bottom:5px;text-align:center;}
.reserve_area .reserve_calendar table td{vertical-align:top;text-align:center;height:58px;padding:5px 0}
.reserve_area .reserve_calendar table td a{display:block}
.reserve_area .reserve_calendar table td a strong{border-radius:100%;font-size:18px;color:#454545;font-weight:bold;text-align:center;display:inline-block;width:36px;height:36px;line-height:34px;position:relative;}
.reserve_area .reserve_calendar table td a span{display:block;font-size:15px;color:#b5b5b5;font-weight:300}
.reserve_area .reserve_calendar table td.off a,
.reserve_area .reserve_calendar table td.none a{cursor:default}
.reserve_area .reserve_calendar table td.off strong,
.reserve_area .reserve_calendar table td.none strong{color:#dddddd;font-weight:300;}
.reserve_area .reserve_calendar table td.none strong:before{height:1px;width:25px;background:#b0b0b0;position:absolute;top:50%;left:50%;transform:translate(-50%, -50%);content:'';}
.reserve_area .reserve_calendar table td.today strong{border:1px solid #e1e1e1}
.reserve_area .reserve_calendar table td.on strong{background:#e84418;color:#fff !important;}
.reserve_area .reserve_calendar table td.date_pic strong:after{border-radius:100%;width:7px;height:7px;content:'';position:absolute;top:0;right:0}
.reserve_area .reserve_calendar table td.one_pic strong:after{background:#eb9200}
.reserve_area .reserve_calendar table td:first-child strong{color:#ff724c}
.reserve_area .reserve_area_box{width:610px;}
.reserve_area .reserve_title_line{margin-top:80px;position:relative;width:100%;}
.reserve_area .reserve_title_line:first-child{margin-top:0}
.reserve_area .reserve_title_line p{border-bottom:1px solid #e6e6e6;font-size:20px;font-weight:bold;color:#333;letter-spacing:-0.8px;padding-bottom:16px}
.reserve_area .reserve_title_line .ad_guide{position:absolute;padding-right:23px;right:0;top:5px}
.reserve_area .reserve_title_line .ad_guide a{font-size:18px;letter-spacing:-0.7px;font-weight:500;color:#898989}
.reserve_area .reserve_title_line .ad_guide a i{width:18px;height:18px;border-radius:100%;border:1px solid #898989;text-align:center;position:absolute;top:0;right:0}
.reserve_area .reserve_title_line .ad_guide a i img{position:absolute;top:3px;left:5px;width:7px}
.reserve_area .reserve_title_line .ad_guide .ad_txt{width:354px;font-size:18px;font-weight:500;letter-spacing:-0.7px;color:#fff;padding:10px;position:absolute;top:35px;right:0;padding:20px 25px;background:rgba(0, 0, 0, 0.8);border-radius:0.3rem;display:none;z-index:1}
.reserve_area .reserve_banner_line{margin-top:20px;width:100%;margin-left:10px}
.reserve_area .reserve_banner_line a{display:block}
.reserve_area .reserve_banner_line img{width:100%;}
.reserve_area .list_box{font-size:0;width:100%;position:relative;padding-top:44px}
.reserve_area .reserve_sty1_box{margin-top:20px;width:100%;display:inline-block;vertical-align:top;background:#fff;border:1px solid #d5d5d5}
.reserve_area .reserve_sty1_box .visual_sty1_box{overflow:hidden;position:relative;cursor:pointer}

.reserve_area .reserve_sty1_box .list_visual_box{width:0;height:342px;position:relative;overflow:hidden;padding-left:658px;background:#eee}
.reserve_area .reserve_sty1_box .list_visual_box .list_visual_img{position:absolute;top:0;left:50%;height:100%;width:auto;transform:translate(-54%, 0);}
.reserve_area .reserve_sty1_box .visual_best_box .list_visual_box{width:100%;height:0;position:relative;overflow:hidden;padding-left:0;padding-bottom:280px}
.reserve_area .reserve_sty1_box .visual_best_box .list_visual_box .list_visual_img{position:absolute;top:50%;left:0;height:auto;width:100%;transform:translate(-0%, -50%);}
.reserve_area .reserve_sty1_box .list_visual_box.img_404{background:#eee;}
.reserve_area .reserve_sty1_box .visual_sty1_box .cover_area{position:absolute;top:45%;left:0;width:100%;height:55%;background:linear-gradient(to bottom, rgba(0, 0, 0, 0), #000000)}
.reserve_area .reserve_sty1_box .opacity_txt{background:#fff;padding:15px;}
.reserve_area .reserve_sty1_box .opacity_txt .marquee{font-size:16px;color:#888888;letter-spacing:-0.6px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
.reserve_area .reserve_sty1_box .opacity_txt div{font-size:16px;}
.reserve_area .reserve_sty1_box .opacity_txt div strong{font-weight:500;color:#ff724c;margin-right:10px}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_box_left{position:absolute;bottom:20px;left:20px}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_pic span{height:24px;line-height:22px;padding:0 5px;border:1px solid rgba(255, 255, 255, 0.5);color:#fff;display:inline-block;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_pic .vr_pic{background:rgba(0, 0, 0, 0.5);font-size:16px;font-weight:500;margin-right:5px}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_pic .kind_blue_txt{background:rgba(38, 99, 226, 0.7);font-size:14px}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line{font-size:25px;font-weight:bold;color:#fff;margin-top:3px;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line i.ico_review{width:37px;height:37px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_bg.png') no-repeat;background-size:100% auto;vertical-align:middle;position:relative;top:-3px;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line i.ico_review.on1{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_01.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line i.ico_review.on2{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_02.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line i.ico_review.on3{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_03.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line i.ico_review.on4{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_04.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_name_line i.ico_review.on5{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_05.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty1_box .list_box_right{position:absolute;bottom:20px;right:20px;text-align:right;}
.reserve_area .reserve_sty1_box .visual_sty1_box .insurance_pic{padding:0 6px;background:rgba(57, 157, 255, 0.8);;height:20px;line-height:18px;font-size:14px;display:inline-block;color:#fff;margin-bottom:5px}
.reserve_area .reserve_sty1_box .visual_sty1_box .comment_line{font-size:14px;color:#ff724c;}
.reserve_area .reserve_sty1_box .visual_sty1_box .comment_line img{height:12px;margin-right:5px;}
.reserve_area .reserve_sty1_box .visual_sty1_box .address_line{font-size:14px;color:#fff;opacity:0.8;}
.reserve_area .reserve_sty1_box .visual_sty2_box{position:relative;}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box_area{width:250px;height:150px;position:relative;float:left;overflow:hidden}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box{width:0;height:150px;position:relative;overflow:hidden;padding-left:288px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box .list_visual_img{position:absolute;top:0;left:50%;height:100%;width:auto;transform:translate(-56%, 0);}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box .pic_box{position:absolute;top:10px;left:10px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box .pic_box span{font-size:16px;font-weight:500;height:24px;line-height:22px;padding:0 5px;color:#fff;display:inline-block;}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box .vr_pic{background:rgba(0, 0, 0, 0.5);border:1px solid rgba(255, 255, 255, 0.5);margin-right:3px}
.reserve_area .reserve_sty1_box .visual_sty2_box .visual_box .insurance_pic{background:rgba(57, 157, 255, 0.8);border:1px solid rgba(255, 255, 255, 0.5);}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_box_txt{width:calc(100% - 265px);margin-left:15px;float:left;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line{font-size:22px;font-weight:500;color:#000;margin-top:15px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line i.ico_review{width:37px;height:37px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_bg.png') no-repeat;background-size:100% auto;vertical-align:middle;position:relative;top:-3px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line i.ico_review.on1{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_01.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line i.ico_review.on2{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_02.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line i.ico_review.on3{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_03.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line i.ico_review.on4{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_04.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty2_box .list_name_line i.ico_review.on5{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_05.png') no-repeat;background-size:100% auto;}
.reserve_area .reserve_sty1_box .visual_sty2_box .kind_blue_txt{font-size:16px;color:#2663e2;margin-top:9px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .comment_line{font-size:16px;color:#ff724c;margin-top:5px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .comment_line img{height:12px;margin-right:5px;position:relative;top:-2px;}
.reserve_area .reserve_sty1_box .visual_sty2_box .address_line{font-size:16px;color:#878787;opacity:0.8;margin-top:5px;}
.reserve_area .reserve_sty1_box .visual_sty3_box{border:1px solid #d5d5d5;padding:24px 20px 17px;}
.reserve_area .reserve_sty1_box .visual_sty3_box .list_name_line{font-size:22px;font-weight:500;color:#000;}
.reserve_area .reserve_sty1_box .visual_sty3_box .vr_pic{margin-right:7px;position:relative;top:-2px;height:24px;line-height:22px;padding:0 5px;background:#cdcdcd;color:#fff;display:inline-block;font-size:16px;font-weight:500}
.reserve_area .reserve_sty1_box .visual_sty3_box .kind_blue_txt{font-size:16px;color:#2663e2;margin-top:7px;}
.reserve_area .reserve_sty1_box .visual_sty3_box .address_line{font-size:16px;color:#878787;opacity:0.8;margin-top:5px;}
.reserve_area .reserve_sty1_box .visual_sty3_box .comment_line{float:right;font-size:16px;color:#ff724c;}
.reserve_area .reserve_sty1_box .visual_sty3_box .comment_line img{height:12px;margin-right:5px;position:relative;top:-2px;}
.reserve_area .reserve_sty1_box .list_box_line{border-top:1px solid #d5d5d5;}
.reserve_area .reserve_sty1_box .list_box_line ol{padding:0 15px;;background:#fff;}
.reserve_area .reserve_sty1_box .list_box_line li{border-top:1px solid #e6e6e6;}
.reserve_area .reserve_sty1_box .list_box_line li:first-child{border-top:none}
.reserve_area .reserve_sty1_box .list_box_line li a{display:table;width:100%;padding:15px 0;}
.reserve_area .reserve_sty1_box .list_box_line p{letter-spacing:-0.7px;font-size:18px;font-weight:bold;display:block;}
.reserve_area .reserve_sty1_box .list_box_line p strong{display:block;font-size:18px;font-weight:bold;margin:3px 0}
.reserve_area .reserve_sty1_box .list_box_line p span{display:block;font-size:16px;color:#606060;margin-bottom:5px;font-weight:normal;}
.reserve_area .reserve_sty1_box .list_box_line i{vertical-align:top;margin-top:2px;margin-left:7px;text-align:center;display:inline-block;width:46px;height:37px;line-height:35px;border:1px solid #e84418;border-radius:0.3rem;font-size:18px;color:#e84418;font-weight:500}
.reserve_area .reserve_sty1_box .list_box_line i.end{border:1px solid #878787;color:#878787}
.reserve_area .reserve_sty1_box .list_box_line .line_left{display:table-cell;vertical-align:middle}
.reserve_area .reserve_sty1_box .list_box_line .line_right{display:table-cell;text-align:right;vertical-align:middle}
.reserve_area .reserve_sty1_box .list_box_line .line_right p{display:inline-block;text-align:right;}
.reserve_area .reserve_sty1_box .list_box_line .line_right .ico_point{font-size:14px;color:#ff724c;font-weight:500;margin-bottom:0}
.reserve_area .reserve_sty1_box .list_box_line .line_right .ico_point img{width:14px;margin-right:3px;position:relative;top:-1px;}
.reserve_area .reserve_sty1_box .list_box_line .line_right em{display:block;font-size:16px;color:#606060;margin-bottom:5px;font-weight:normal;text-decoration:line-through;min-height:3px}
.reserve_area .reserve_sty1_box .list_box_line .line_right strong{letter-spacing:-0.9px;margin-right:3px;text-align:left;padding-left:4px;font-weight:300;width:43px;height:24px;line-height:22px;font-size:16px;color:#fff;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reserve_cap.png') no-repeat;background-size:auto 24px}
.reserve_area .reserve_sty1_box .list_box_page{position:relative;z-index:99;width:100%;text-align:center;margin-top:0px;margin-bottom:25px}
.reserve_area .reserve_sty1_box .swiper-button-next,
.reserve_area .reserve_sty1_box .swiper-button-prev{vertical-align:middle;margin-top:0;display:inline-block;width:40px;height:40px;border-radius:0.3rem;border:1px solid #d5d5d5;position:relative;top:0;}
.reserve_area .reserve_sty1_box .swiper-button-prev,
.reserve_area .reserve_sty1_box.swiper-container-rtl .swiper-button-next{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reserve_prev_on.png') top 9px center no-repeat;left:0}
.reserve_area .reserve_sty1_box .swiper-button-next,
.reserve_area .reserve_sty1_box.swiper-container-rtl .swiper-button-prev{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reserve_next_on.png') top 9px center no-repeat;right:0}
.reserve_area .reserve_sty1_box .swiper-button-prev.swiper-button-disabled{opacity:1;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reserve_prev_off.png') top 9px center no-repeat}
.reserve_area .reserve_sty1_box .swiper-button-next.swiper-button-disabled{opacity:1;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/reserve_next_off.png') top 9px center no-repeat}
.reserve_area .reserve_sty1_box .swiper-pagination{position:relative;display:inline-block;width:140px;}
.reserve_area .reserve_sty1_box .swiper-pagination-bullet{background:#dddddd;width:10px;height:10px;margin:0 2.5px;opacity:1}
.reserve_area .reserve_sty1_box .swiper-pagination-bullet-active{background:#ff724c;}
.reserve_area .list_none{width:610px;}
.reserve_area .list_none.list_banner{margin-top:20px;padding-top:0;}

.popup_opacity{position:fixed;left:0px;top:0px;min-width:320px;min-height:300px;overflow-y:auto;width:100%;height:100%;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#50000000,endColorstr=#50000000);zoom:1;z-index:999;}
.popup_opacity2{position:fixed;left:0px;top:0px;min-width:320px;min-height:300px;overflow-y:auto;width:100%;height:100%;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#50000000,endColorstr=#50000000);zoom:1;z-index:999;}
.popupsm_opacity{position:fixed;left:0px;top:0px;min-width:320px;min-height:300px;overflow-y:auto;width:100%;height:100%;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#50000000,endColorstr=#50000000);zoom:1;z-index:999;}
.popupsm_opacity2{position:fixed;left:0px;top:0px;min-width:320px;min-height:300px;overflow-y:auto;width:100%;height:100%;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#50000000,endColorstr=#50000000);zoom:1;z-index:999;}
.popup_area{position:absolute;top:100px;left:50%;margin-left:-327px;;animation-name:popup_show;animation-duration:0.8s;-webkit-animation-name:popup_show;-webkit-animation-duration:0.8s;padding-bottom:100px;}

</style>
    
  

	<div class="hero-wrap js-fullheight"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_2.jpg');">
		<div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
	</div>

    
    

	<div class="reserve_area live_search container" style="padding-top: 58px;">
	<section style="padding-bottom: 400px">
		<dl class="live_search_area">
			<dt>낚시 어디로 가세요?</dt>
			<dd class="search_chk">
				<a data-sea_type="1" class="on">바다</a>
				<a data-sea_type="2" class="on">민물</a>
			</dd>
		</dl>
		<dl class="live_search_area">
			<dt>언제 가시나요?</dt>
			<dd><a class="date_btn">날짜선택</a></dd>
		</dl>
		<dl class="live_search_area">
			<dt>잡고 싶은 어종이 있나요?</dt>
			<dd><a class="fish_btn">전체 어종</a></dd>
		</dl>
		<div class="search_btn">
			<a id="reserve_search" href="javascript:;">검색하기</a>
		</div>
	</section>
</div>


    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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