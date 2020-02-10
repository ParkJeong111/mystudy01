<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
    
<style>
html,body{width: 100%;height:100%;-webkit-text-size-adjust: 100%;}
html{overflow-y:scroll; overflow-x:none;}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,form,fieldset,p,button{margin:0;padding:0}
body,input,button{font-family:'Noto Sans KR', Dotum, Sans-serif;font-size:16px;color:#333333;}
body{background-color:#fff;text-align:left;word-break:break-all;*word-break:break-all;-ms-word-break:break-all;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
img,fieldset,iframe{border:0 none}
li{list-style:none}
input,select,button{vertical-align:middle}
/*img{vertical-align:top}*/
i,em,address{font-style:normal}
label,button{cursor:pointer}
button{margin:0;padding:0}
img{vertical-align:middle;max-width:100%}
a:hover{color:#333333;text-decoration:none}
ins{text-decoration:none}
button {position:relative;border:0 none;margin:0; padding:0;background-color:transparent;outline: none; -webkit-tap-highlight-color: transparent;}
button img{left:-3px;*left:auto}
html:first-child select{height:20px;padding-right:6px}
option{padding-right:6px}
legend{*width:0}
table{border-collapse:collapse;border-spacing:0}
.blind,legend{display:block;overflow:hidden;position:absolute;top:-1000em;left:0}
input,textarea,select{border-radius:0px; padding:0px; margin:0px;font-family:'Noto Sans KR';appearance:none;-moz-appearance:none;-webkit-appearance:none;}
select::-ms-expand{display: none;}
textarea{resize: none; wrap:hard;font-family:'Noto Sans KR'}
input::-ms-clear, input::-ms-reveal{display:none;width :0;height:0;}
input::-webkit-search-decoration,input::-webkit-search-cancel-button,input::-webkit-search-results-button,input::-webkit-search-results-decoration{display:none;}

img{vertical-align:middle;max-width:100%}


section:after{display:block;content:'';clear:both}
section{width:964px;position:relative;margin:0 auto;}


.clearfix{display:block;content:'';clear:both;}
.clearfix:after{display:block;content:'';clear:both}



.manage_tab_area{background:#fff;padding-top:30px;padding-bottom:30px}
.manage_tab_area li{float:left;width:calc(33.333% - 10px);}
.manage_tab_area li a{border:1px solid #8c8c8c;font-size:16px;padding:10px 0;color:#8c8c8c;text-align:center;display:block;border-radius:0.3rem}
.manage_tab_area li:nth-child(2){margin:0 15px}
.manage_tab_area li.active a{border:1px solid #ff724c;color:#ff724c}
.manage_tab_area li:hover a{border:1px solid #ff724c}

.view_area .view_contents.view_info_manage{background:#fff}
.view_info_manage{border-top:1px solid #e6e6e6;padding-top:25px}
.view_info_manage .view_count_text p{font-size:20px;}
.view_info_manage .view_count_text p span{color:#ff724c;}

.view_info_manage .manage_list_area li{float:left;margin-top:10px;background:#fff;width:calc(33.333% - 8px);border:1px solid #e6e6e6;border-radius:0.3rem;margin-right:10px}
.view_info_manage .manage_list_area li:nth-child(3n+1){margin-right:0}
.view_info_manage .manage_list_area li .profile_box{padding:10px 15px;position:relative;}
.view_info_manage .manage_list_area li .profile_box .profile_img{float:left;width:35px;height:35px;border-radius:100%;overflow:hidden;position:relative;}
.view_info_manage .manage_list_area li .profile_box .profile_img:before{width:100%;height:17px;position:absolute;bottom:0;left:0;display:block;color:#fff;font-size:9px;text-align:center;z-index:1;line-height:15px;}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv0:before{content:'lv.0';background:#dc967c}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv1:before{content:'lv.1';background:#ec440b}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv2:before{content:'lv.2';background:#ffba12}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv3:before{content:'lv.3';background:#55b44d}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv4:before{content:'lv.4';background:#4595ec}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv5:before{content:'lv.5';background:#4c65d5}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv6:before{content:'lv.6';background:#845bbd}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv7:before{content:'lv.7';background:#bb4e4e}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv8:before{content:'lv.8';background:linear-gradient(to right, #a8f5ff, #d6faff 28%, #40bcd3 77%, #218092);}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv9:before{content:'lv.9';background:linear-gradient(to right, #ffbf16, #ffe4b2 33%, #f2ad4e 69%, #ffe151);}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv10:before{content:'lv.10';background:linear-gradient(to right, #e06e6e, #fadb25 33%, #9eda51 68%, #486ce8);}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv99:before{content:'M';background:linear-gradient(to bottom, #616161, #171717);}
.view_info_manage .manage_list_area li .profile_box .profile_img.lv98:before{content:'사장';background:linear-gradient(to bottom, #ffd848, #ff3600);}
.view_info_manage .manage_list_area li .profile_box .profile_img img{width:100%;height:100%;}
.view_info_manage .manage_list_area li .profile_box .profile_name{width:calc(100% - 45px);float:left;margin-left:10px;font-size:15px;padding-top:10px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;height:28px;}
.view_info_manage .manage_list_area li .manage_title_img{overflow:hidden;width:100%;padding-bottom:56.26%;height:0;position:relative;}
.view_info_manage .manage_list_area li .manage_title_img img{position:absolute;top:50%;left:0;width:100%;height:auto;transform:translate(0, -50%);}
.view_info_manage .manage_list_area li .manage_title_img .live_tag{width:83px;height:28px;line-height:26px;background:#e84418;border-radius:0.3rem;font-size:15px;font-weight:300;text-align:center;position:absolute;top:10px;left:10px;z-index:1;color:#fff;letter-spacing:-0.6px}
.view_info_manage .manage_list_area li .manage_txt_box{padding:15px;height:140px;position:relative;}
.view_info_manage .manage_list_area li .manage_kind_tag span{border:1px solid #dadada;border-radius:0.3rem;color:#2663e2;font-size:15px;padding:0 8px;height:28px;line-height:26px;display:inline-block}
.view_info_manage .manage_list_area li .manage_title_txt{margin:5px 0 10px;font-size:17px;font-weight:500;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient: vertical;height:42px;line-height:1.2}
.view_info_manage .manage_list_area li .manage_date{font-size:14px;color:#8c8c8c;position:absolute;bottom:15px}


/* 조황상세 */
.view_detail{padding-bottom:0}
.view_info_manage_detail .detail_profile{background:#fbfbfb;border-bottom:1px solid #e6e6e6;padding:10px 0}
.view_info_manage_detail .detail_profile .prf_box{float:left;width:35px;height:35px;border-radius:100%;margin-right:10px;overflow:hidden;position:relative;}
.view_info_manage_detail .detail_profile .prf_box:before{width:100%;height:17px;position:absolute;bottom:0;left:0;display:block;color:#fff;font-size:9px;text-align:center;z-index:1}
.view_info_manage_detail .detail_profile .prf_box.lv0:before{content:'lv.0';background:#dc967c}
.view_info_manage_detail .detail_profile .prf_box.lv1:before{content:'lv.1';background:#ec440b}
.view_info_manage_detail .detail_profile .prf_box.lv2:before{content:'lv.2';background:#ffba12}
.view_info_manage_detail .detail_profile .prf_box.lv3:before{content:'lv.3';background:#55b44d}
.view_info_manage_detail .detail_profile .prf_box.lv4:before{content:'lv.4';background:#4595ec}
.view_info_manage_detail .detail_profile .prf_box.lv5:before{content:'lv.5';background:#4c65d5}
.view_info_manage_detail .detail_profile .prf_box.lv6:before{content:'lv.6';background:#845bbd}
.view_info_manage_detail .detail_profile .prf_box.lv7:before{content:'lv.7';background:#bb4e4e}
.view_info_manage_detail .detail_profile .prf_box.lv8:before{content:'lv.8';background:linear-gradient(to right, #a8f5ff, #d6faff 28%, #40bcd3 77%, #218092);}
.view_info_manage_detail .detail_profile .prf_box.lv9:before{content:'lv.9';background:linear-gradient(to right, #ffbf16, #ffe4b2 33%, #f2ad4e 69%, #ffe151);}
.view_info_manage_detail .detail_profile .prf_box.lv10:before{content:'lv.10';background:linear-gradient(to right, #e06e6e, #fadb25 33%, #9eda51 68%, #486ce8);}
.view_info_manage_detail .detail_profile .prf_box.lv99:before{content:'M';background:linear-gradient(to bottom, #616161, #171717);}
.view_info_manage_detail .detail_profile .prf_box.lv98:before{content:'사장';background:linear-gradient(to bottom, #ffd848, #ff3600);}

.view_info_manage_detail .detail_profile p{font-size:16px;float:left;padding-top:5px;width:calc(100% - 170px)}
.view_info_manage_detail .detail_profile p.wide{width:calc(100% - 45px);}
.view_info_manage_detail .detail_profile p.wide.jgo{width:calc(100% - 130px);}
.view_info_manage_detail .detail_profile a{border:1px solid #c0c0c0;width:56px;height:25px;line-height:23px;text-align:center;display:block;float:right;border-radius:3rem;font-size:13px;color:#aaaaaa;letter-spacing:-0.5px;margin-top:5px;font-weight:normal;}
.view_info_manage_detail .detail_profile a.btn_talk_edit{position:absolute;right:60px;}
.view_info_manage_detail .detail_profile a.btn_talk_del{position:absolute;right:0}
.view_info_manage_detail .detail_profile a.btn_talk_scrap{width:80px;}
.view_info_manage_detail .detail_title{background:#fff;border-bottom:1px solid #e6e6e6;}
.view_info_manage_detail .detail_title .inner{padding:15px 0;}
.view_info_manage_detail .detail_title .detail_pic{font-size:0;margin-bottom:10px;}
.view_info_manage_detail .detail_title .detail_pic span{margin-right:10px;font-size:15px;padding:0 8px;height:28px;line-height:26px;text-align:center;display:inline-block;border-radius:0.3rem}
.view_info_manage_detail .detail_title .detail_pic span:first-child{margin-left:0}
.view_info_manage_detail .detail_title .detail_pic span.live_tag{color:#fff;background:#e84418;position:relative;top:-1px}
.view_info_manage_detail .detail_title .detail_pic span.fishlist_tag{color:#ff724c;border:1px solid #ff724c;}
.view_info_manage_detail .detail_title .detail_title_date{display:table;width:100%}
.view_info_manage_detail .detail_title .detail_title_date dt{font-size:18px;display:table-cell;line-height:1.3;color:#333;font-weight:500;letter-spacing:-0.9px}
.view_info_manage_detail .detail_title .detail_title_date dt h1{font-size:18px;font-weight:500}
.view_info_manage_detail .detail_title .detail_title_date dd{font-size:15px;color:#8c8c8c;display:table-cell;width:215px;text-align:right}
.view_info_manage_detail .detail_title .detail_title_date dd.wide{width:120px;}
.view_info_manage_detail .detail_title .detail_title_date dd a{color:#8c8c8c;font-size:15px;}
.view_info_manage_detail .detail_title .detail_title_date dd a:before{width:1px;height:11px;background:#d8d8d8;display:inline-block;content:'';margin:0 10px}
.view_info_manage_detail .detail_title .detail_title_date dd a img{width:14px;margin-right:2px;position:relative;top:-1px}
.view_info_manage_detail .manage_info_area{position:relative;padding-top:77px;}
.view_info_manage_detail .manage_info{width:100%;border:1px solid #e6e6e6;}
.view_info_manage_detail .manage_info_line{border-top:1px solid #e6e6e6;}
.view_info_manage_detail .manage_info_line:first-child{border-top:none;}
.view_info_manage_detail .manage_info_line:after{display:block;content:'';clear:both}
.view_info_manage_detail .manage_info_line p{width:33.3333%;float:left;border-right:1px solid #e6e6e6;position:relative;border-bottom:1px solid #e6e6e6;top:1px}
.view_info_manage_detail .manage_info_line p:nth-child(3n){border-right:none;}
.view_info_manage_detail .manage_info_line h2{width:33.3333%;float:left;border-right:1px solid #e6e6e6;position:relative;border-bottom:1px solid #e6e6e6;top:1px;font-weight:normal;font-size:16px;}
.view_info_manage_detail .manage_info_line h2:nth-child(3n){border-right:none;}
.view_info_manage_detail .manage_info_line strong{width:100px;float:left;text-align:center;font-size:15px;font-weight:500;letter-spacing:-0.8px;background:#f8f8f8;border-right:1px solid #e6e6e6;height:40px;line-height:38px;}
.view_info_manage_detail .manage_info_line span{width:calc(100% - 100px);float:left;height:40px;line-height:38px;padding:0 15px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.view_info_manage_detail .manage_info_line span.map_link{width:calc(100% - 150px)}
.view_info_manage_detail .manage_info_line span.map_link a{width:55px;height:21px;line-height:19px;color:#fff;background:#ff724c;border-radius:0.3rem;font-size:13px;letter-spacing:-0.7px;text-align:center;display:block;position:absolute;top:10px;right:10px;}
.view_info_manage_detail .manage_info_line span.map_link a.map_btn{background:#fff;width:55px;height:21px;line-height:19px;color:#ff724c;border:1px solid #ff724c;border-radius:0.3rem;font-size:13px;letter-spacing:-0.7px;text-align:center;display:block;position:absolute;top:10px;right:10px;}
.view_info_manage_detail .manage_info_line span.price_link{width:calc(100% - 150px)}
.view_info_manage_detail .manage_info_line span.price_link a{width:55px;height:21px;line-height:19px;color:#fff;background:#b4b4b4;border-radius:0.3rem;font-size:13px;letter-spacing:-0.7px;text-align:center;display:block;position:absolute;top:10px;right:10px;}
.view_info_manage_detail .manage_info_line .map_link_mo{display:none}
.view_info_manage_detail .manage_info_more:after{display:block;content:'';clear:both}
.view_info_manage_detail .manage_info_more{position:absolute;top:30px;right:0}
.view_info_manage_detail .manage_info_more a{background:#d5d5d5;height:32px;line-height:30px;border-radius:0.3rem;font-size:15px;color:#fff;letter-spacing:-0.8px;padding:0 15px;display:block;float:right;}
.view_info_manage_detail .manage_detail{padding:30px 0 100px;font-size:18px;border-bottom:1px solid #e6e6e6;position:relative;}
.view_info_manage_detail .manage_detail img{display:block;max-width:500px}
.view_info_manage_detail .manage_detail .video_img{width:600px;height:400px;background:#f7f7f7 url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/video_bg.png') no-repeat;background-size:cover;padding-top:129px;}
.view_info_manage_detail .manage_detail .video_img img{width:98px;display:block;margin:0 auto 15px;}
.view_info_manage_detail .manage_detail .video_img p{font-size:18px;color:#3f3f3f;text-align:center;letter-spacing:-0.7px;}
.view_info_manage_detail .manage_detail video{width:100%;max-height:545px}
.view_info_manage_detail .manage_detail .video-js{width:100% !important;max-width:none !important;height:545px !important}
.view_info_manage_detail .manage_detail .video-js.vjs-fullscreen{height:100% !important}
.view_info_manage_detail .manage_detail .img_info_box{position:relative;display:inline-block}
.view_info_manage_detail .manage_detail .img_info_box i{width:25px;height:25px;border-radius:100%;background:rgba(0, 0, 0, 0.8) url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_info02.png') center top 50% no-repeat;background-size:4px auto; position:absolute;bottom:10px;right:10px;}
.view_info_manage_detail .manage_detail .detail_tag{color:#004f9d}
.view_info_manage_detail .manage_detail .manage_tag_box{margin-top:20px}
.view_info_manage_detail .manage_detail .manage_tag_box a{font-size:14px;color:#878787;letter-spacing:-0.7px;font-weight:normal;}
.view_info_manage_detail .talk_qt_info{position:relative;}
.view_info_manage_detail .talk_qt_box{position:absolute;top:16px;left:16px;}
.view_info_manage_detail .talk_qt_box .talk_qt_btn{width:44px;float:left;}
.view_info_manage_detail .talk_qt_box .talk_qt_btn img{max-width:none;width:100%;}
.view_info_manage_detail .talk_qt_box .talk_qt_inner{display:none;margin-left:13px;float:left;padding:7px 16px;background:rgba(0, 0, 0, 0.4);border:1px solid #fff;border-radius:3rem;font-size:16px;color:rgba(255, 255, 255, 0.8)}
.view_info_manage_detail .write_comy_map{height:80px;border:1px solid #e6e6e6;background:#f8f8f8;width:430px;display:table}
.view_info_manage_detail .write_comy_map .img_box{width:166px;height:78px;display:table-cell;border-right:1px solid #eee}
.view_info_manage_detail .write_comy_map .img_box img{width:100%;height:100%;}
.view_info_manage_detail .write_comy_map dl{padding:0 15px;display:table-cell;width:calc(100% - 166px);vertical-align:middle;}
.view_info_manage_detail .write_comy_map dt{font-size:15px;letter-spacing:-0.8px;color:#333;font-weight:bold}
.view_info_manage_detail .write_comy_map dd{font-size:15px;color:#606060;letter-spacing:-0.8px;}
.view_info_manage_detail .manage_like_share{width:410px;text-align:center;font-size:0;position:absolute;left:50%;bottom:30px;margin-left:-229.5px;z-index:2;background:#fff;border:1px solid #e6e6e6;box-shadow:0 0 2px 0 rgba(0, 0, 0, 0.15);border-radius:3rem;padding:5px 0}
.view_info_manage_detail .manage_like_share.flowme2{position:fixed;bottom:40px}
.view_info_manage_detail .manage_like_share p{display:inline-block;font-size:0;text-align:center;width:33.3333%;}
.view_info_manage_detail .manage_like_share p.ct{border-right:1px solid #e6e6e6;border-left:1px solid #e6e6e6}
.view_info_manage_detail .manage_like_share a{padding-left:28px;display:inline-block;height:28px;line-height:26px;font-size:16px;letter-spacing:-0.6px;}
.view_info_manage_detail .manage_like_share a.like_btn{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_01.png') top 50% left 0 no-repeat;background-size:auto 20px;padding-left:40px}
.view_info_manage_detail .manage_like_share a.like_btn.on{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_02.png') top 50% left 0 no-repeat;background-size:auto 20px}
.view_info_manage_detail .manage_like_share a.share_btn{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_04.png') top 50% left 0 no-repeat;background-size:auto 20px;}
.view_info_manage_detail .manage_like_share a.scrap_btn{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_05.png') top 50% left 0 no-repeat;background-size:auto 20px;}
.view_info_manage_detail .manage_like_share a.scrap_btn.on{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_06.png') top 50% left 0 no-repeat;background-size:auto 20px}
.view_info_manage_detail .manage_like_share a.trader_btn{padding-left:0;text-align:center;}
.view_info_manage_detail .manage_like_share a.trader_btn img{width:16px;display:inline-block;margin-right:6px;position:relative;top:-1px;}
.view_info_manage_detail .manage_like_share a.up_btn{padding-left:0;text-align:center;}
.view_info_manage_detail .manage_like_share a.up_btn img{width:19px;display:inline-block;margin-right:6px;position:relative;top:-3px;}
.view_info_manage_detail .manage_like_share a.call_btn{background:#e84418;border-radius:0.3rem;height:25px;line-height:23px;padding:0 6px;font-size:16px;color:#ffffff;letter-spacing:-0.6px;}
.view_info_manage_detail .manage_like_share a.sell_btn{font-size:0;width:64px;height:24px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold01_on.png') no-repeat;background-size:100% auto;padding:0;position:relative;top:-4px;}
.view_info_manage_detail .manage_like_share a.sell_btn.sold{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold01_off.png') no-repeat;background-size:100% auto;}
.view_info_manage_detail .manage_like_share a.buy_btn{font-size:0;width:64px;height:24px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold02_on.png') no-repeat;background-size:100% auto;padding:0;position:relative;top:-4px;}
.view_info_manage_detail .manage_like_share a.buy_btn.sold{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold02_off.png') no-repeat;background-size:100% auto;}
.view_info_manage_detail .manage_like{border-bottom:1px solid #e6e6e6;padding:25px 0}
.view_info_manage_detail .manage_like .manage_like_box{width:calc(100% - 75px);float:left;height:40px;overflow:hidden}
.view_info_manage_detail .manage_like .manage_like_box.show{height:auto}
.view_info_manage_detail .manage_like .manage_like_box a{cursor:default;width:40px;height:40px;border:1px solid #e6e6e6;background:#f5f0ea;border-radius:100%;display:block;position:relative;margin-right:20px;float:left;}
.view_info_manage_detail .manage_like .manage_like_box a img{border-radius:100%;width:100%;height:100%;overflow:hidden;}
.view_info_manage_detail .manage_like .manage_like_box a:after{width:25px;height:25px;background:#ff724c url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_like02.png') center top 50% no-repeat;background-size:21px auto;position:absolute;bottom:0;right:-10px;content:'';border-radius:100%;overflow:hidden;}
.view_info_manage_detail .manage_like a.like_more{font-size:14px;color:#ff724c;height:24px;line-height:22px;padding:0 10px;border:1px solid #ff724c;border-radius:3rem;display:block;float:right;margin-top:8px}
/* .view_info_manage_detail .manage_like a.like_more:after{display:none}
.view_info_manage_detail .manage_like a.like_more.show{font-size:0}
.view_info_manage_detail .manage_like .like_more.show:after{content:'접기';display:block;width:100%;position:absolute;top:0;left:0;font-size:14px;text-align:center;color:#fff} */

.view_info_manage_detail .view_profile{border:1px solid #d5d5d5;padding:0;margin-top:50px;position:relative;}
.view_info_manage_detail .view_profile .profile_slide{width:481px;height:275px;position:relative;float:right;}
.view_info_manage_detail .view_profile .profile_slide .slide_arrow_btn a{position:absolute;top:157px;background:none;margin-top:0}
.view_info_manage_detail .view_profile .profile_slide .slide_arrow_btn a.arrow_prev{left:15px;}
.view_info_manage_detail .view_profile .profile_slide .slide_arrow_btn a.arrow_next{right:15px;left:auto}
.view_info_manage_detail .view_profile .profile_slide .swiper-pagination-bullet{opacity:1;background:rgba(255, 255, 255, 0.5);}
.view_info_manage_detail .view_profile .profile_slide .swiper-pagination-bullet-active{background:rgba(255, 255, 255, 1)}
.view_info_manage_detail .view_profile .profile_slide a.photo_all_btn{display:none}
.view_info_manage_detail .view_profile .profile_info{float:right;margin-left:30px;margin-top:20px;width:451px;}
.view_info_manage_detail .view_profile .profile_info dt{font-size:25px;font-weight:500;margin-bottom:30px;}
.view_info_manage_detail .view_profile .profile_info dt span{border-radius:0.3rem;margin-bottom:13px;display:inline-block;padding:0 10px;height:33px;line-height:31px;text-align:center;background:#9e5c4a;font-size:18px;color:#ffffff;}
.view_info_manage_detail .view_profile .profile_info dt strong{display:block;}
.view_info_manage_detail .view_profile .profile_info dd{font-size:20px;color:#606060;margin-top:15px;}
.view_info_manage_detail .view_profile .profile_info dd img{margin-top:-5px;margin-right:12px;}
.view_info_manage_detail .view_profile .profile_info .call_dd a{position:absolute;bottom:30px;right:20px;width:70px;height:70px;background:#e84418 url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_call.png') top 17px center no-repeat;background-size:30px auto;border:1px solid #d5d5d5;border-radius:100%}
.view_info_manage_detail .view_profile .profile_info .like_link{display:none;position:absolute;bottom:30px;right:20px;width:70px;height:70px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/like_off_01.png') top 20px center no-repeat;background-size:30px 28px;border:1px solid #d5d5d5;border-radius:100%}
.view_info_manage_detail .view_profile .profile_info .like_link.active{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/like_on_01.png') top 20px center no-repeat;background-size:30px 28px;border:1px solid #e84418;}
.view_info_manage_detail .view_detail_profile .like_share_btn a{position:absolute;z-index:1}
.view_info_manage_detail .view_detail_profile .like_share_btn a.like_btn{right:18px;top:20px;width:30px;height:25px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_slide_like_off.png') no-repeat;background-size:100% auto}
.view_info_manage_detail .view_detail_profile .like_share_btn a.like_btn.active{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_slide_like_on.png') no-repeat;background-size:100% auto}
.view_info_manage_detail .view_detail_profile .like_share_btn a.share_btn{right:18px;top:17px;width:30px;height:29px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_slide_share.png') no-repeat;background-size:100% auto;display:none}
.view_info_manage_detail .view_detail_profile .map_coyp_area{border:1px solid #d5d5d5;border-top:none}
.view_info_manage_detail .view_detail_profile .map_coyp_area a{display:block;width:50%;float:left;text-align:center;font-size:20px;padding:15px 0}
.view_info_manage_detail .view_detail_profile .map_coyp_area a:first-child{border-right:1px solid #d5d5d5}
.view_info_manage_detail .view_detail_profile .map_coyp_area a img{margin-right:10px}
.view_info_manage_detail .view_detail_ad{margin-top:80px}

.view_info_manage_detail .slide_ad_sty1 .ad_title{padding-bottom:15px;border-bottom:1px solid #e6e6e6}
.view_info_manage_detail .slide_ad_sty1 .slide_area li{width:278px;}
.view_info_comment .comment_box .comment_date{position:relative;margin-top:15px}
.view_info_comment .comment_box .comment_date .comment_date_like{width:33px;height:25px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_like_off.png') no-repeat;background-size:100% auto;display:block;position:absolute;top:2px;right:0}
.view_info_comment .comment_box .comment_date .comment_date_like.on{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_like_on.png') no-repeat;background-size:100% auto;}
.view_detail .view_info_comment{margin-bottom:60px}
.view_detail .view_info_comment .check_title{padding:80px 0 15px}
.view_detail .view_info_comment .check_title p{font-size:17px;color:#333;font-weight:500;letter-spacing:-0.7px;}
.view_detail .view_info_comment .check_title .refresh_btn{width:18px;margin-left:10px;display:block;float:left;margin-top:3px;}
.view_detail .view_info_comment .check_title .check_radio label input + ins{font-size:15px}
.view_detail .view_info_comment .comment_text_area{padding:20px 0 30px;border-bottom:1px solid #e6e6e6}
.view_detail .view_info_comment .comment_text_area .file_textarea{border:1px solid #aaa;border-radius:0.3rem;position:relative;overflow:hidden;padding:15px;font-size:0}
.view_detail .view_info_comment .comment_text_area .file_textarea.file_on{width:100%}
.view_detail .view_info_comment .comment_text_area .file_textarea.file_on textarea{width:calc(100% - 95px)}
.view_detail .view_info_comment .comment_text_area textarea{width:100%;height:80px;font-size:17px;letter-spacing:-0.7px;outline:none;border:none}
.view_detail .view_info_comment .comment_text_area .file_textarea.file_on .imgefile_upload{display:block;cursor:pointer}
.view_detail .view_info_comment .comment_text_area .imgefile_upload{position:absolute;bottom:15px;right:15px;display:none;}
/* .view_detail .view_info_comment .comment_text_area .imgefile_upload:after{width:20px;height:20px;border:1px solid #c0c0c0;border-radius:100%;background:#fff url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo03.png') center top 50% no-repeat;content:'';display:block;position:absolute;top:-9px;right:-9px;background-size:10px auto} */
.view_detail .view_info_comment .comment_text_area .imgefile_upload .upload_close{width:20px;height:20px;border:1px solid #c0c0c0;border-radius:100%;display:block;position:absolute;top:-9px;right:-9px;background:#fff}
.view_detail .view_info_comment .comment_text_area .imgefile_upload .upload_close img{width:10px;height:10px;position:absolute;top:4px;left:5px}
.view_detail .view_info_comment .comment_text_area .imgefile_upload img{width:80px;height:80px;}
.view_detail .view_info_comment .comment_text_area .comment_upload_box{padding-top:15px;}
.view_detail .view_info_comment .comment_text_area .comment_upload_box label{position:relative;cursor:pointer;width:100px;height:28px;float:left;overflow:hidden;}
.view_detail .view_info_comment .comment_text_area .comment_upload_box label input[type=file]::-webkit-file-upload-button{cursor:pointer;}
.view_detail .view_info_comment .comment_text_area .comment_upload_box label input{position:absolute;opacity:0;cursor:pointer}
.view_detail .view_info_comment .comment_text_area .comment_upload_box label input:focus{outline:none}
.view_detail .view_info_comment .comment_text_area .comment_upload_box .photo_btn{padding-left:33px;margin-top:4px;font-size:15px;color:#808080;letter-spacing:-0.6px;height:20px;line-height:18px;float:left;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo01.png') no-repeat;background-size:auto 20px;}
.view_detail .view_info_comment .comment_text_area .comment_upload_box .photo_btn.on{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo02.png') no-repeat;background-size:auto 20px;}
.view_detail .view_info_comment .comment_text_area .comment_upload_box .comm_btn{width:77px;height:40px;line-height:38px;border-radius:0.3rem;background:#ff724c;color:#fff;font-size:16px;text-align:center;letter-spacing:-0.6px;float:right;display:block;}
.view_detail .view_info_comment .comment_box .comment_name{font-size:16px;position:relative}
.view_detail .view_info_comment .comment_box .comment_name span{height:24px;line-height:22px;border-radius:0.3rem;background:#ff724c;padding:0 8px;font-size:14px;color:#ffffff;letter-spacing:-0.6px;display:inline-block;margin-right:5px}
.view_detail .view_info_comment .comment_box .comment_name a{width:4px;position:absolute;top:0;right:0}
.view_detail .view_info_comment .comment_list_more{padding:30px 0 0;}
.view_detail .view_info_comment .comment_list_more a{width:200px;height:44px;line-height:42px;border:1px solid #ff724c;display:block;margin:0 auto;font-size:16px;color:#ff724c;text-align:center;letter-spacing:-0.6px;border-radius:0.3rem;}
.view_detail .view_info_comment .recomment_list_box{border-bottom:1px solid #e6e6e6;position:relative}
.view_detail .view_info_comment .recomment_list_box:before{width:15px;height:15px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_comm01.png') no-repeat;background-size:100% auto;content:'';position:absolute;top:30px;left:28px}
.view_detail .view_info_comment .recomment_text_area{padding:15px 52px 30px 58px;border-bottom:1px solid #e6e6e6;background:#f7f7f7;position:relative;}
.view_detail .view_info_comment .recomment_text_area:before{width:15px;height:15px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_comm01.png') no-repeat;background-size:100% auto;content:'';position:absolute;top:30px;left:28px}
.view_detail .view_info_comment .recomment_text_area .file_textarea{border:1px solid #aaa;position:relative;overflow:hidden;padding:15px;font-size:0;background:#fff;border-top:none}
.view_detail .view_info_comment .recomment_text_area .file_textarea.file_on{width:100%}
.view_detail .view_info_comment .recomment_text_area .file_textarea.file_on textarea{width:calc(100% - 95px)}
.view_detail .view_info_comment .recomment_text_area .recomment_textarea .recomment_ing{font-size:15px;color:#606060;letter-spacing:-0.5px;background:#fffbfb;padding:10px 14px;border:1px solid #aaaaaa;border-bottom:1px solid #e6e6e6}
.view_detail .view_info_comment .recomment_text_area .recomment_textarea .recomment_ing strong{font-weight:500}
.view_detail .view_info_comment .recomment_text_area textarea{width:100%;height:80px;font-size:17px;letter-spacing:-0.7px;outline:none;border:none}
.view_detail .view_info_comment .recomment_text_area .file_textarea.file_on .imgefile_upload{display:block;cursor:pointer}
.view_detail .view_info_comment .recomment_text_area .imgefile_upload{position:absolute;bottom:15px;right:15px;display:none;}
/* .view_detail .view_info_comment .recomment_text_area .imgefile_upload:after{width:20px;height:20px;border:1px solid #c0c0c0;border-radius:100%;background:#fff url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo03.png') center top 50% no-repeat;content:'';display:block;position:absolute;top:-9px;right:-9px;background-size:10px auto} */
.view_detail .view_info_comment .recomment_text_area .imgefile_upload img{width:80px;height:80px;}
.view_detail .view_info_comment .recomment_text_area .imgefile_upload .upload_close{width:20px;height:20px;border:1px solid #c0c0c0;border-radius:100%;display:block;position:absolute;top:-9px;right:-9px;background:#fff}
.view_detail .view_info_comment .recomment_text_area .imgefile_upload .upload_close img{width:10px;height:10px;position:absolute;top:4px;left:5px}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box{padding-top:15px;}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box label{position:relative;cursor:pointer;width:100px;height:28px;float:left;overflow:hidden;}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box label input[type=file]::-webkit-file-upload-button{cursor:pointer;}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box label input{position:absolute;opacity:0;cursor:pointer}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box label input:focus{outline:none}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box .photo_btn{padding-left:33px;margin-top:4px;font-size:15px;color:#808080;letter-spacing:-0.6px;height:20px;line-height:18px;float:left;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo01.png') no-repeat;background-size:auto 20px;}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box .photo_btn.on{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo02.png') no-repeat;background-size:auto 20px;}
.view_detail .view_info_comment .recomment_text_area .comment_upload_box .comm_btn{width:77px;height:40px;line-height:38px;border-radius:0.3rem;background:#ff724c;color:#fff;font-size:16px;text-align:center;letter-spacing:-0.6px;float:right;display:block;}
.view_detail .comment_filter{width:272px;position:fixed;bottom:30px;left:50%;margin-left:-136px;border-radius:3rem;overflow:hidden; box-shadow: 2px 2px 5px 0 rgba(0, 0, 0, 0.2);background:rgba(255,255,255,0.5);border:1px solid #e6e6e6;z-index:1;}
.view_detail .comment_filter:hover{background:#fff;}
.view_detail .comment_filter a{display:block;width:33.333%;float:left;padding-top:51px;padding-bottom:18px;font-size:16px;color:#777777;text-align:center;letter-spacing:-0.6px;}
.view_detail .comment_filter a.comment_flt_like{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_01.png') center top 13px no-repeat;background-size:auto 30px}
.view_detail .comment_filter a.comment_flt_like.on{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_02.png') center top 13px no-repeat;background-size:auto 30px}
.view_detail .comment_filter a.comment_flt_comm{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_03.png') center top 13px no-repeat;background-size:auto 30px;border-left:1px solid #e6e6e6;border-right:1px solid #e6e6e6}
.view_detail .comment_filter a.comment_flt_share{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/comm_flt_04.png') center top 13px no-repeat;background-size:auto 30px}
.view_detail .comment_filter a.comment_flt_call{display:none}

.view_detail .view_info_manage_detail_btm{background:#f7f7f7;padding-bottom:30px;margin-top:120px}
.view_detail .view_company_profile{position:relative;padding-top:50px;}
.view_detail .view_company_profile .profile_visual{width:80px;height:80px;background:#f5f0ea;border:1px solid #e6e6e6;border-radius:100%;overflow:hidden;position:absolute;left:50%;margin-left:-40px;top:-40px}
.view_detail .view_company_profile .profile_visual img{width:100%;}
.view_detail .view_company_profile .profile_name{font-size:18px;font-weight:500;letter-spacing:-0.7px;text-align:center;display:block}
.view_detail .view_company_profile .profile_name:hover{color:#ff724c}
.view_detail .view_company_profile .profile_name i.ico_review{width:37px;height:37px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_bg.png') no-repeat;background-size:100% auto;vertical-align:middle;position:relative;top:-3px;}
.view_detail .view_company_profile .profile_name i.ico_review.on1{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_01.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on2{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_02.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on3{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_03.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on4{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_04.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on5{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_05.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_address{font-size:15px;color:#606060;letter-spacing:-0.6px;text-align:center;margin-top:5px;}
.view_detail .view_company_profile .profile_btn{text-align:center;font-size:0;margin-top:15px;}
.view_detail .view_company_profile .profile_btn a{display:inline-block;width:93px;height:32px;line-height:30px;text-align:center;background:#fff;border:1px solid #e6e6e6;border-radius:3rem;font-size:15px;color:#606060;letter-spacing:-0.6px;}
.view_detail .view_company_profile .profile_btn a.like_btn.on{border:1px solid #ff724c;color:#ff724c}
.view_detail .view_company_profile .profile_btn a.call_btn{margin-left:5px;border:1px solid #ff724c;color:#ff724c}

.view_info_manage_detail .view_detail_list_area{margin-top:20px}
.view_info_manage_detail .view_detail_list_area .detail_list_title strong{font-size:18px;font-weight:normal;float:left;letter-spacing:-0.7px}
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper_btn_box{float:left;font-size:0;}
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-button-prev,
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-container-rtl .swiper-button-next{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ad_slide_prev_01.png') no-repeat;width:28px;height:28px;background-size:100% auto;margin:0 3px 0 10px}
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-button-next,
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-container-rtl .swiper-button-prev{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ad_slide_next_01.png') no-repeat;width:28px;height:28px;background-size:100% auto}
.view_info_manage_detail .view_detail_list_area .detail_list_title a{float:right;font-size:15px;color:#ff724c;text-align:right;position:relative;top:7px;}
.view_info_manage_detail .view_detail_list_area .view_detail_list{margin-top:10px}
.view_info_manage_detail .view_detail_list_area .view_detail_list:after{display:block;content:'';clear:both}
.view_info_manage_detail .view_detail_list_area .view_detail_list li{float:left;width:230px;}
.view_info_manage_detail .view_detail_list_area .view_detail_list li .img_box{width:230px;height:184px;border-radius:0.3rem;overflow:hidden;}
.view_info_manage_detail .view_detail_list_area .view_detail_list li img{border-radius:0.3rem;display:block}
.view_info_manage_detail .view_detail_list_area .view_detail_list li p{margin-top:10px;font-size:17px;font-weight:500;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.view_info_manage_detail .view_detail_list_area .view_detail_list li p span{margin-right:8px;font-size:15px;color:#2663e2;display:inline-block;border:1px solid #dadada;border-radius:0.3rem;padding:0 5px;height:28px;line-height:26px;background:#fff}

.view_info_manage_detail .talk_detail_list_area{margin:35px auto 0;position:relative;width:951px;}
.view_info_manage_detail .talk_detail_list_area section{width:100%;}
.view_info_manage_detail .talk_detail_list_area .detail_list_title{margin-bottom:15px;}
.view_info_manage_detail .talk_detail_list_area .detail_list_title strong{font-size:16px;color:#333;letter-spacing:-0.6px;font-weight:normal;float:left}
.view_info_manage_detail .talk_detail_list_area .detail_list_title .swiper_btn_box{float:right;font-size:0;}
.view_info_manage_detail .talk_detail_list_area .detail_list_title .swiper-button-prev,
.view_info_manage_detail .talk_detail_list_area .detail_list_title .swiper-container-rtl .swiper-button-next{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ad_slide_prev_01.png') no-repeat;width:28px;height:28px;background-size:100% auto;margin:0 3px 0 10px}
.view_info_manage_detail .talk_detail_list_area .detail_list_title .swiper-button-next,
.view_info_manage_detail .talk_detail_list_area .detail_list_title .swiper-container-rtl .swiper-button-prev{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ad_slide_next_01.png') no-repeat;width:28px;height:28px;background-size:100% auto}
.view_info_manage_detail .talk_detail_list_area .detail_list_title a{float:right;font-size:15px;color:#ff724c;text-align:right;position:relative;top:7px;}
.view_info_manage_detail .talk_detail_list_area .detail_list_title + .clearfix{font-size:0}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide{width:468px;overflow:hidden;background:#fff;border:1px solid rgba(218, 218, 218, 0.5);border-radius:0.3rem;display:block;display:inline-block;position:relative;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .img_box{width:182px;height:155px;position:relative;float:left;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .img_box img{width:100%;height:100%;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .txt_box{float:left;width:calc(100% - 182px);padding:10px;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .kind_txt span{display:inline-block;font-size:13px;color:#2663e2;letter-spacing:-0.5px;padding:0 5px;height:25px;line-height:23px;border:1px solid #dadada;border-radius:0.3rem;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide dt{margin-top:10px;font-size:15px;color:#333;font-weight:500;letter-spacing:-0.6px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide dd{margin-top:5px;font-size:14px;color:#606060;letter-spacing:-0.6px;line-height:1.3;height:37px;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient: vertical;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic{position:absolute;bottom:10px;width:calc(100% - 202px);}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic i{font-size:13px;color:#ff724c;letter-spacing:-0.5px;float:left}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic i:before{width:5px;height:5px;background:#ff724c;border-radius:100%;display:inline-block;content:'';position:relative;top:-2px;margin-right:3px;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic span{float:right;font-size:14px;color:#c0c0c0;letter-spacing:-0.6px;opacity:0.5;}
.view_info_manage_detail .talk_detail_list_area.talk_detail_list1{width:468px;}
.view_info_manage_detail .talk_detail_list_area.talk_detail_list2 .talk_detail_slide:first-child{margin-right:15px}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide.talk_detail_default{cursor:default;pointer-events:none;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide.talk_detail_default .kind_txt, .view_info_manage_detail .talk_detail_list_area .talk_detail_slide.talk_detail_default dl{opacity:0.5}

.view_info_manage_detail .talk_detail_list_area .talk_detail_list_btn{margin-top:27px;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_list_btn a{background:#fff;width:120px;height:40px;line-height:38px;border-radius:3rem;border:1px solid #e6e6e6;box-shadow:0 0 5px 0 rgba(0, 0, 0, 0.15);text-align:center;font-size:16px;color:#ff724c;letter-spacing:-0.5px;display:block;margin:0 auto;}

.view_area  .view_info_comment{background:#fff;padding-top:0}
.view_info_comment .check_title{padding:30px 0;border-bottom:1px solid #e6e6e6}
.view_info_comment .check_title p{float:left;font-size:18px;color:#8c8c8c;}
.view_info_comment .check_title p span{color:#ff724c}
.view_info_comment .check_title .check_radio{float:right}
.view_info_comment .check_title .check_radio label{float:left;position:relative;margin-left:20px;font-size:0}
.view_info_comment .check_title .check_radio label input{position:absolute;z-index:-99999;opacity:0;}
.view_info_comment .check_title .check_radio label input + ins{color:#606060;font-size:18px;}
.view_info_comment .check_title .check_radio label input:checked + ins{color:#ff724c}
.view_info_comment .comment_list_box{border-bottom:1px solid #e6e6e6;padding:30px 20px;}
.view_info_comment .comment_list_box.tcm_best{background:#fafafa}
.view_info_comment .comment_profile{width:50px;height:50px;position:relative;border-radius:100%;overflow:hidden;float:left;}
.view_info_comment .comment_profile:before{width:100%;height:20px;position:absolute;bottom:0;left:0;display:block;color:#fff;font-size:12px;text-align:center;z-index:1;line-height:18px}
.view_info_comment .comment_profile.lv0:before{content:'lv.0';background:#dc967c}
.view_info_comment .comment_profile.lv1:before{content:'lv.1';background:#ec440b}
.view_info_comment .comment_profile.lv2:before{content:'lv.2';background:#ffba12}
.view_info_comment .comment_profile.lv3:before{content:'lv.3';background:#55b44d}
.view_info_comment .comment_profile.lv4:before{content:'lv.4';background:#4595ec}
.view_info_comment .comment_profile.lv5:before{content:'lv.5';background:#4c65d5}
.view_info_comment .comment_profile.lv6:before{content:'lv.6';background:#845bbd}
.view_info_comment .comment_profile.lv7:before{content:'lv.7';background:#bb4e4e}
.view_info_comment .comment_profile.lv8:before{content:'lv.8';background:linear-gradient(to right, #a8f5ff, #d6faff 28%, #40bcd3 77%, #218092);}
.view_info_comment .comment_profile.lv9:before{content:'lv.9';background:linear-gradient(to right, #ffbf16, #ffe4b2 33%, #f2ad4e 69%, #ffe151);}
.view_info_comment .comment_profile.lv10:before{content:'lv.10';background:linear-gradient(to right, #e06e6e, #fadb25 33%, #9eda51 68%, #486ce8);}
.view_info_comment .comment_profile.lv99:before{content:'M';background:linear-gradient(to bottom, #616161, #171717);}
.view_info_comment .comment_profile.lv98:before{background:linear-gradient(to bottom, #ffd848, #ff3600);}
.view_info_comment .comment_profile img{position:absolute;width:auto;height:100%}
.view_info_comment .comment_box{width:calc(100% - 60px);margin-left:10px;float:left;padding-top:12px;}
.view_info_comment .comment_box .comment_name{font-size:18px;color:#333333;}
.view_info_comment .comment_box .comment_txt{font-size:20px;margin:10px 0}
.view_info_comment .comment_box .comment_txt img{display:block;margin:10px 0;}
.view_info_comment .comment_box .comment_txt .hash_tag_txt{color:#004f9d}
.view_info_comment .comment_box .comment_date span{display:inline-block;color:#8c8c8c;font-size:16px;}
.view_info_comment .comment_box .comment_date span:first-child:before{display:none}
.view_info_comment .comment_box .comment_date span:before{width:4px;height:4px;margin:0 10px;position:relative;top:-4px;content:'';display:inline-block;border-radius:100%;background:#8c8c8c}
.view_info_comment .recomment_list_box{padding:30px 20px 30px 70px;position:relative;border-bottom:1px solid #e6e6e6}
.view_info_comment .recomment_list_box:before{width:15px;height:15px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_comm01.png') no-repeat;background-size:100% auto;content:'';position:absolute;top:30px;left:28px}

</style>
  
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_4.jpg');">
     <div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
    </div>

<div class="view_detail container" style="padding-top: 58px;">
	<div class="view_info_manage_detail">
		<div class="detail_profile clearfix">
			<section>
				<div class="prf_box lv98">
					<img src="https://img.moolban.com/unsafe/50x50/filters:no_upscale()/profile_aws/default.png?date=1495791343" class="profile" alt="">
				</div>
				<p class="wide">들어갈 업체</p><!-- p태그-  내가 쓴글이 아닐때 .wide 추가  -->
							</section>
		</div><!--// detail_profile -->

		<div class="detail_title">
			<section>
				<div class="inner">
					<p class="detail_pic">
						<span class="live_tag" style="display:none">현장실시간</span>
						<span class="fishlist_tag">민물 조황</span>
					</p>
					<dl class="detail_title_date">
						<dt>들어갈 제목</dt>
						<dd>몇 시간 전
						<a href="/mypage/login?redirect=/talk/view/135505"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/siren_ico.png" alt="">신고하기</a>
																						<!--
							<a class="btn_report"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/siren_ico.png" alt="">신고하기</a>
							-->
						</dd><!-- 내가 쓴글이 아닐때 .wide 추가  -->
					</dl>
				</div>
			</section>
		</div>
		<!--// detail_title -->
	</div>
	<section>
<!-- For each 태그 사용해서 상세정보 가져오기 -->
		<div class="view_info_manage_detail">
						<div class="manage_info_area">
				<div class="manage_info">
					<div class="manage_info_line">
						<!-- 어종 //-->
												    <h2>
						        <strong>어종</strong>

						        <span>들어갈 내용</span>
						    </h2>
												<!--// 어종 -->

						<!-- 날짜 //-->
												    <h2>
						        <strong>날짜</strong>

						        <span>들어갈 내용</span>
						    </h2>
												<!--// 날짜 -->

						<!-- 업체위치 //-->
												    <h2>
						        <strong>위치</strong>
						        <span class="map_link">들어갈 내용 <a href="/company/1639" target="_blank">바로가기</a></span>
						    </h2>
												<!--// 업체위치 -->

						<!-- 좌표위치 //-->
												<!--// 좌표위치 -->

						<!-- 물때 //-->
												<!--// 물때 -->

						<!-- 날씨 //-->
												<!--// 날씨 -->

						<!-- 수심 //-->
												<!--// 수심 -->

						<!-- 물고기 길이 //-->
												<!--// 물고기 길이 -->

						<!-- 물고기 무게 //-->
												<!--// 물고기 무게 -->

						<!-- 바다 낚시기법 //-->
												<!--// 바다 낚시기법 -->

						<!-- 미끼 //-->
												    <h2>
						        <strong>미끼</strong>

						        <span>들어갈 내용</span>
						    </h2>
												<!--// 미끼 -->

						<!-- 민물 낚시기법 //-->
												<!--// 민물 낚시기법 -->

						<!-- 민물 채비법 //-->
												<!--// 민물 채비법 -->

						<!-- 민물 낚시환경 //-->
												<!--// 민물 낚시환경 -->

						<!-- 배스 채비법 //-->
												<!--// 배스 채비법 -->

						<!-- 배스 루어 //-->
												<!--// 배스 루어 -->
					</div>

					<script>
						var map = new naver.maps.Map('mobile_map', {
						center: new naver.maps.LatLng(0, 0),
						zoom: 8
						});

						var marker = new naver.maps.Marker({
						position: new naver.maps.LatLng(0, 0),
						map: map
						});
					</script>
				</div>
				<div class="manage_info_more clearfix">
					<a class="btn_fishing_info">낚시 정보 자세히보기</a>
				</div>
			</div>
			
			<div class="manage_detail">
									<div class=""><img src="${pageContext.request.contextPath}/resources/images/person_1.jpg">
								<div class="talk_qt_box clearfix"></div></div><br>	
								<p style="text-align:">들어갈 내용</p><br>
								<p style="text-align:">들어갈 내용</p><br>
								<p style="text-align:">들어갈 내용</p><br>
								<p style="text-align:"></p><br>
								<p style="text-align:"></p><br>
												
								<div class="manage_like_share">
											<p><a class="like_btn" href="/mypage/login?redirect=/talk/view/135505">1</a></p>
						<p class="ct"><a class="share_btn shareMore">공유</a></p>
						<p><a class="scrap_btn" href="/mypage/login?redirect=/talk/view/135505">스크랩</a></p>
									</div>

			</div>
			<!--// manage_detail -->

						<div class="manage_like">
				<div class="manage_like_area clearfix">
					<div class="manage_like_box clearfix">
												<a><img src="https://img.moolban.com/unsafe/50x50/filters:no_upscale()/profile_aws/201909/0165a30cd51048748e260fbff7fd36f7.jpg?date=1569174599" alt=""></a>
											</div>
					<a class="like_more">전체보기</a>
				</div>
			</div>
						<!-- 포인트 주변 업체 //-->
						<!--// 포인트 주변 업체 -->

			<!-- 댓글정보 -->
			<div class="view_info_comment view_contents" id="comment_box">
				<section>
					<div class="check_title clearfix">
						<p>댓글 <span id="reply_total_cnt">0</span></p>
						<a class="refresh_btn"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_refresh.png" alt=""></a>
						<div class="check_radio">

							<label>
								<input type="radio" onclick="fn_tcm_type()" name="tcm_type" value="new">
								<ins>최신순</ins>
							</label>
							<label>
								<input type="radio" onclick="fn_tcm_type()" name="tcm_type" value="step">
								<ins>등록순</ins>
							</label>
						</div>
					</div><!--// check_title -->


					<!-- 댓글입력 -->
					<div class="comment_text_area">
					    <form id="talkCommentForm" name="talkCommentForm" method="post">
					    <input type="hidden" name="mode" value="add">
					    <input type="hidden" name="user_key" value="0">
					    <input type="hidden" name="tl_key" value="135505">
					    <input type="hidden" name="tcm_key" value="0">
					    <div class="file_textarea">
					        <textarea name="tcm_comment" class="tcm_comment" placeholder="댓글 내용을 입력해주세요."></textarea>

					        <div class="imgefile_upload">
					            <img class="original" src="" style="background-color: rgb(247, 247, 247);">
								<div class="upload_close"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo03.png" alt=""></div>
					        </div>
					    </div>

					    <div class="comment_upload_box clearfix">
					        <label for="">
																	<span class="photo_btn">사진 첨부</span>
													        </label>
					        <a class="comm_btn btn_comm">등록하기</a>
					        
					    </div>
					    </form>
					</div>
					<!--// 댓글입력 -->

					<!-- 댓글목록 -->
					<div id="comment_list_area"><script>
$(document).ready(function(){
    $('.talk_more').click(function(){
        var p_user_key = $(this).attr('data-p_user_key');
        var user_key = "0";
        var tcm_key = $(this).attr('data-tcm_key');
        if(p_user_key == user_key){
            $('#delete_tcm_key').val(tcm_key);
            $('#delete_box').show();
            $('html').addClass('html_popup');
        }else{
            $('#report_tcm_key').val(tcm_key);
            $('#report_box').show();
            $('html').addClass('html_popup');
        }
    });

    $('.btn_talk_comm_like').click(function(e){
		e.preventDefault();
        var tl_key = $(this).attr('data-tl_key');
		var tcm_key = $(this).attr('data-tcm_key');
		var like_chk = $(this).attr('data-like_chk');
        var user_key = $(this).attr('data-user_key');
		var like_cnt = $('.like_cnt'+tcm_key).html();
		var mode = (like_chk == "N") ? 'like' : 'unlike';
		$.ajax({
			type: 'POST',
			url: '/talk/talk_commment_proc',
			data : {
				tl_key : tl_key
				, mode : mode
                , tcm_key : tcm_key
                , like_chk : like_chk
                , user_key : user_key
			},
			dataType: 'json',
			async: false,
			cache: false,
			processData: true,
			success: function(res) {
				$.toastAlert(res.ret);
				if(res.rtv){
					if(mode == 'like') {
						$('.talk_comm_like'+tcm_key).addClass('on');
						$('.talk_comm_like'+tcm_key).attr('data-like_chk', 'Y');
						if(like_cnt >= 0){
							like_cnt = +parseInt(like_cnt) + 1;
						}

						$('.like_cnt'+tcm_key).html(like_cnt);
					} else {
						$('.talk_comm_like'+tcm_key).removeClass('on');
						$('.talk_comm_like'+tcm_key).attr('data-like_chk', 'N');
						if(like_cnt > 0){
							like_cnt = parseInt(like_cnt) - 1;
						}
						$('.like_cnt'+tcm_key).html(like_cnt);
					}
				}
			},
			error: function(res) {
				if (res.responseText) {
					console.log(res.responseText);
					location.reload(true);
				}
			}
		});
	});

    $('.btn_talk_comm_report').click(function(e){
		e.preventDefault();
        var seq_key = $('#report_tcm_key').val();
		var mode = "add";
		var sr_type = "2";
		$.ajax({
			type: 'POST',
			url: '/talk/user_report_proc',
			data : {
				seq_key : seq_key
				, mode : mode
				, sr_type : sr_type
			},
			dataType: 'json',
			async: false,
			cache: false,
			processData: true,
			success: function(res) {
				$.toastAlert(res.ret);
			},
			error: function(res) {
				if (res.responseText) {
					console.log(res.responseText);
					// location.reload(true);
				}
			}
		});
	});

	$('.btn_talk_comm_del').click(function(e){
		e.preventDefault();
		var tl_key = $(this).attr('data-tl_key');
        var tcm_key = $('#delete_tcm_key').val();
        var user_key = "0";
		var mode = "del";
        var reply_total_cnt = $('#reply_total_cnt').html();
		$.ajax({
			type: 'POST',
			url: '/talk/talk_commment_proc',
			data : {
				tl_key : tl_key
                , tcm_key : tcm_key
				, mode : mode
                , user_key : user_key
			},
			dataType: 'json',
			async: false,
			cache: false,
			processData: true,
			success: function(res) {
				$.toastAlert(res.ret);
                if(reply_total_cnt > 0){
					reply_total_cnt = parseInt(reply_total_cnt) - 1;
				}
				$('#reply_total_cnt').html(reply_total_cnt);
                $.getlist();
			},
			error: function(res) {
				if (res.responseText) {
					console.log(res.responseText);
					// location.reload(true);
				}
			}
		});
	});


    // 대댓글 등록
    var isRun  = false;
    $('.btn_comment_reply').click(function(e){

        if(isRun == true) {
            return;
        }

        isRun = true;

        var tl_key = $(this).attr('data-tl_key');
        var tcm_key = $(this).attr('data-tcm_key');
        var user_key = $(this).attr('data-user_key');
        var u_nick = $(this).attr('data-u_nick');

        $(".recomment_text_area").remove();

        $.ajax({
			type : "POST",
			url : "/talk/get_talk_comment_reply",
			data : {
                tl_key : tl_key
                ,tcm_key : tcm_key
                ,user_key : user_key
                ,u_nick : u_nick
            },
			success : function(res){
                $(".tcm_box"+tcm_key).after(res.html);
                isRun  = false; //연속클릭방지
			},
			error: function(res) {
				if (res.responseText) {
					console.log(res.responseText);
					// location.reload(true);
				}
			}
		});
    });


    var isRun  = false;
    $('.btn_comment_more_reply').click(function(e){

        if(isRun == true) {
            return;
        }

        isRun = true;

        var tl_key = $(this).attr('data-tl_key');
        var tcm_key = $(this).attr('data-tcm_key');
        var user_key = $(this).attr('data-user_key');
        var u_nick = $(this).attr('data-u_nick');

        $(".recomment_text_area").remove();

        $.ajax({
			type : "POST",
			url : "/talk/get_talk_comment_reply",
			data : {
                tl_key : tl_key
                ,tcm_key : tcm_key
                ,user_key : user_key
                ,u_nick : u_nick
            },
			success : function(res){
                $(".tcm_box"+tcm_key).after(res.html);
                isRun  = false; //연속클릭방지
			},
			error: function(res) {
				if (res.responseText) {
					console.log(res.responseText);
					// location.reload(true);
				}
			}
		});
    });

    // 댓글 더보기
    $('.comment_list_more').click(function(e){
        $('.comment_list_more').hide();
        $('.comment_list_more_box').show();

        $('.comment_list_best_box').remove();
    });
});

</script>

<script>
    $('.comment_list_more, .comment_list_best_box').show();
    $('.comment_list_more_box').hide();
</script>
<div class="comment_list_area comment_list_best_box">
    </div>



<div class="comment_list_area comment_list_more_box" style="display: none;">
    
    <!--

    -->
</div>


<!-- 스크랩및신고 팝업 -->
<div class="popupsm_opacity popup_choice" id="report_box" style="display:none">
    <input type="hidden" name="tcm_key" id="report_tcm_key" value="">
	<div class="popup_choice_inner">
					<a href="/mypage/login?redirect=/talk/view/135505">신고하기</a>
		
		<a class="wrap_close">닫기</a>
	</div>
</div>

<div class="popupsm_opacity popup_choice" id="delete_box" style="display:none">
    <input type="hidden" name="tcm_key" id="delete_tcm_key" value="">
	<div class="popup_choice_inner">
		<a class="btn_talk_comm_del" data-tl_key="135505">삭제하기</a>
		<a class="wrap_close">닫기</a>
	</div>
</div>
<!--// 스크랩및신고 팝업 -->
</div><!--// comment_list_area -->
					<!--// 댓글목록 -->

				</section>

			</div><!--// view_contents -->
			<!--// 댓글정보 -->
		</div>
		<!--// view_info_manage_detail -->
	</section>

		<div class="view_info_manage_detail view_info_manage_detail_btm">
		<section>
			<!-- 업체 프로필 -->
			<div class="view_company_profile">
				<div class="profile_visual">
										<img src="https://img.moolban.com/unsafe/160x160/profile_aws/default.png?date=1495791343" alt="">
				</div>
				<a class="profile_name" href="/company/1639">
										황청낚시터				</a>
				<p class="profile_address">인천 강화군 내가면 황청리 531</p>

				<div class="profile_btn">
											<a class="like_btn" href="/mypage/login?redirect=/talk/view/135505">찜하기</a>

												<a class="call_btn login_tel" data-key="1639">전화하기</a>
															</div>
			</div>
			<!--// 업체 프로필 -->
							<div class="talk_detail_list_area" style="">
					<section>
						<div class="detail_list_title clearfix">
							<strong>이 업체의 다른 조황 보기</strong>
							<div class="swiper_btn_box">
								<div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></div>
								<div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
							</div>
						</div>
						<div class="swiper-container swiper-container-horizontal">
							<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
																<a class="talk_detail_slide swiper-slide swiper-slide-active" href="/talk/view/3739" style="margin-right: 15px;">
									<div class="img_box">

																				<img src="https://img.moolban.com/unsafe/182x155/talk/20170731/d9b3c9b218153f45e94c7deb83802eba.JPG?date=1579083477" alt="">
									</div>
									<div class="txt_box">
										<p class="kind_txt">
											<span>붕어</span>
										</p>
										<dl>
											<dt>황청지 7월31일 조황체크</dt>
											<dd>약간의 흐린날씨 이슬비 정도와 바람이없는 날씨를 보이고있는 월요일 오전입니다. 어제 조황은 전체적으로 고른  …</dd>
										</dl>
										<p class="date_pic clearfix">
																						<span>2017.07.31</span>
										</p>
									</div>
								</a>
																<a class="talk_detail_slide swiper-slide swiper-slide-next" href="/talk/view/28179" style="margin-right: 15px;">
									<div class="img_box">

																				<img src="https://img.moolban.com/unsafe/182x155/talk/20180604/temp_20180604_911907755.jpg?date=1579083516" alt="">
									</div>
									<div class="txt_box">
										<p class="kind_txt">
											<span>동자개</span>
										</p>
										<dl>
											<dt>황청지 6월4일 조황체크</dt>
											<dd>name:(ip:) date:2018/06/04 hit:0 수정 | 삭제 새로운 시작 육월 새로운 한주가 시 …</dd>
										</dl>
										<p class="date_pic clearfix">
																						<span>2018.06.04</span>
										</p>
									</div>
								</a>
																<a class="talk_detail_slide swiper-slide" href="/talk/view/29123" style="margin-right: 15px;">
									<div class="img_box">

																				<img src="https://img.moolban.com/unsafe/182x155/talk/20180609/temp_20180609_211315201.jpg?date=1578973576" alt="">
									</div>
									<div class="txt_box">
										<p class="kind_txt">
											<span>붕어</span>
										</p>
										<dl>
											<dt>황청지 6월 9일 조황체크</dt>
											<dd>주말을 반기는듯 붕어 낮 조황이 관리실 앞 잔교좌대에서 좋은 아침입니다. 이른 아침부터 입질이 시작되고 있습 …</dd>
										</dl>
										<p class="date_pic clearfix">
																						<span>2018.06.09</span>
										</p>
									</div>
								</a>
																<a class="talk_detail_slide swiper-slide" href="/talk/view/29482" style="margin-right: 15px;">
									<div class="img_box">

																				<img src="https://img.moolban.com/unsafe/182x155/talk/20180611/temp_20180611_369114649.jpg?date=1579107420" alt="">
									</div>
									<div class="txt_box">
										<p class="kind_txt">
											<span>붕어</span>
										</p>
										<dl>
											<dt>황청지 6월10일 조황체크</dt>
											<dd>name:(ip:) date:2018/06/11 hit:0 수정 | 삭제 주말 비가 시원하게 내린후 폭염은  …</dd>
										</dl>
										<p class="date_pic clearfix">
																						<span>2018.06.11</span>
										</p>
									</div>
								</a>
																<a class="talk_detail_slide swiper-slide" href="/talk/view/30255" style="margin-right: 15px;">
									<div class="img_box">

																				<img src="https://img.moolban.com/unsafe/182x155/talk/20180616/temp_20180616_55038897.jpg?date=1579150357" alt="">
									</div>
									<div class="txt_box">
										<p class="kind_txt">
											<span>붕어</span>
										</p>
										<dl>
											<dt>황청지 6월16일 조황체크</dt>
											<dd>name:황청지기 (ip:) date:2018/06/16 hit:0 수정 | 삭제 비가 오다 않오다를 몇일  …</dd>
										</dl>
										<p class="date_pic clearfix">
																						<span>2018.06.16</span>
										</p>
									</div>
								</a>
															</div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
					</section>

					<div class="talk_detail_list_btn">
						<a href="/company/1639?tab=talk">조황 모두 보기</a>
					</div>
				</div>
						<!--// view_detail_list_area -->

		</section>
	</div>
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
    
  </body>
</html>