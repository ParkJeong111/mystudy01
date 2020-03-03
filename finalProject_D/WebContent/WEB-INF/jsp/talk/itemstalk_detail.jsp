<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
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


.clearfix{display:block;content:'';clear:both}
.clearfix:after{display:block;content:'';clear:both}





.jgo_manage_detail{margin:30px 0 51px;}
.jgo_manage_detail .jgo_thumbnail{width:435px;height:380px;overflow:hidden;position:relative;float:left;background:#eee url('https://img.moolban.com/unsafe/asset/common/img/low_404image.png') top 50% left no-repeat;background-size:100% auto;}
.jgo_manage_detail .jgo_thumbnail:after{font-size:14px;color:#fff;letter-spacing:-0.7px;width:71px;height:28px;line-height:26px;text-align:center;background:rgba(0, 0, 0, 0.7);position:absolute;bottom:0;left:0;z-index:1;}
.jgo_manage_detail .jgo_thumbnail .img_box{position:relative;width:100%;height:0;padding-bottom:380px;}
.jgo_manage_detail .jgo_thumbnail .img_box .buy_default:before{width:100%;height:100%;background:rgba(0, 0, 0, 0.45);position:absolute;top:0;left:0;z-index:1;content:'';}
.jgo_manage_detail .jgo_thumbnail .img_box .buy_default:after{transform:translate(-50%,-50%);position:absolute;top:50%;left:50%;z-index:2;width:130px;height:130px;content:'';background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/talk/jgo_ico_buy.png') no-repeat;background-size:100% auto;}
.jgo_manage_detail .jgo_thumbnail .img_box img{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:100%;height:auto}
.jgo_manage_detail .jgo_info_con{float:right;width:calc(100% - 464px);}
.jgo_manage_detail .jgo_info_con .jgo_pic{margin-bottom:10px;}
.jgo_manage_detail .jgo_info_con .jgo_pic span{height:28px;line-height:26px;padding:0 8px;font-size:15px;letter-spacing:-0.6px;border-radius:0.3rem;}
.jgo_manage_detail .jgo_info_con .jgo_pic span.sell{color:#2663e2;border:1px solid #dadada}
.jgo_manage_detail .jgo_info_con .jgo_pic span.buy{color:#267b96;border:1px solid #dadada}
.jgo_manage_detail .jgo_info_con .jgo_pic span.sold{color:#fff;border:#ccc;background:#ccc;}
.jgo_manage_detail .jgo_info_con dt{font-size:20px;color:#5e5e5e;letter-spacing:-1px;height:58px;}
.jgo_manage_detail .jgo_info_con dd{font-size:24px;color:#333333;font-weight:bold;margin-top:3px;}
.jgo_manage_detail .jgo_info_con dd span{font-size:20px}
.jgo_manage_detail .jgo_info_con dd span.jgo_nego{font-size:16px;font-weight:normal;}
.jgo_manage_detail .jgo_info_con dd a{font-weight:300;height:21px;line-height:21px;background:#b4b4b4;border-radius:0.2rem;display:inline-block;padding:0 5px;font-size:12px;color:#fff;letter-spacing:-0.7px;margin-left:8px;position:relative;top:-3px;}
.jgo_manage_detail .jgo_info_con dd a img{width:5px;display:inline-block;position:relative;margin-left:5px;top:-1px;}
.jgo_manage_detail .jgo_info_con .info_box{margin-top:15px;}
.jgo_manage_detail .jgo_info_con .info_box p{font-size:15px;color:#606060;letter-spacing:-0.8px;padding-top:18px;}
.jgo_manage_detail .jgo_info_con .info_box p span{color:#989898;width:100px;display:inline-block;}
.jgo_manage_detail .jgo_info_con .info_btn_box{text-align:center;font-size:0;margin-top:80px; border-top: 1px solid #e6e6e6;}
.jgo_manage_detail .jgo_info_con .info_btn_box a{margin-top:30px; font-size:18px;letter-spacing:-0.8px;width:160px;height:50px;line-height:48px;border-radius:0.3rem;text-align:center;display:inline-block;border-radius:0.3rem;}
.jgo_manage_detail .jgo_info_con .info_btn_box a.btn01{background:#f85959;color:#fff}
.jgo_manage_detail .jgo_info_con .info_btn_box a.btn01.active{background:#a9847a;}
.jgo_manage_detail .jgo_info_con .info_btn_box a.btn02{background:#fff;border:1px solid #cacaca;color:#606060;margin:0 10px}
.jgo_manage_detail .jgo_info_con .info_btn_box a.btn03{background:#fff;border:1px solid #cacaca;color:#606060}

.jgo_manage_notice{border:1px solid #e2e6e7;background:#fbfdfd;padding:15px 20px}
.jgo_manage_notice strong{font-size:15px;color:#889498;letter-spacing:-0.5px;display:block;font-weight:500;margin-bottom:5px;}
.jgo_manage_notice li{font-size:13px;color:#889498;letter-spacing:-0.5px;margin-left:8px;}
.jgo_manage_notice li:before{width:3px;height:3px;border-radius:100%;background:#889498;content:'';display:inline-block;margin-right:5px;margin-left:-8px;position:relative;top:-4px}

.view_info_manage_detail .manage_detail .change_manage_detail{margin-bottom:50px;}
.view_info_manage_detail .manage_detail .change_manage_detail p{font-size:16px;color:#000;margin:15px 0}
.view_info_manage_detail .manage_detail .change_manage_detail strong{font-weight:500;display:block;font-size:16px;color:#000;}
.view_area  .view_info_comment{background:#fff;padding-top:0}
.view_info_comment .check_title{padding:20px 0;border-bottom:1px solid #e6e6e6}
.view_info_comment .check_title p{float:left;font-size:18px;color:#8c8c8c;}
.view_info_comment .check_title p span{color:#f85959}
.view_info_comment .check_title .check_radio{float:right}
.view_info_comment .check_title .check_radio label{float:left;position:relative;margin-left:20px;font-size:0}
.view_info_comment .check_title .check_radio label input{position:absolute;z-index:-99999;opacity:0;}
.view_info_comment .check_title .check_radio label input + ins{color:#606060;font-size:18px;}
.view_info_comment .check_title .check_radio label input:checked + ins{color:#f85959}
.view_info_comment .comment_list_box{border-bottom:1px solid #e6e6e6;padding: 10px 10px;}
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
.view_info_comment .comment_box{width:calc(100% - 60px);margin-left:10px;float:left;}
.view_info_comment .comment_box .comment_name{font-size:18px;color:#333333;}
.view_info_comment .comment_box .comment_txt{font-size:20px;}
.view_info_comment .comment_box .comment_txt img{display:block;margin:10px 0;}
.view_info_comment .comment_box .comment_txt .hash_tag_txt{color:#004f9d}
.view_info_comment .comment_box .comment_date span{display:inline-block;color:#8c8c8c;font-size:16px;}
.view_info_comment .comment_box .comment_date span:first-child:before{display:none}
.view_info_comment .comment_box .comment_date span:before{height:4px;margin:0 10px;position:relative;top:-4px;content:'';display:inline-block;border-radius:100%;background:#8c8c8c}
.view_info_comment .recomment_list_box{padding:30px 20px 30px 70px;position:relative;border-bottom:1px solid #e6e6e6}
.view_info_comment .recomment_list_box:before{width:15px;height:15px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_comm01.png') no-repeat;background-size:100% auto;content:'';position:absolute;top:30px;left:28px}


.manage_tab_area{background:#fff;padding-top:30px;padding-bottom:30px}
.manage_tab_area li{float:left;width:calc(33.333% - 10px);}
.manage_tab_area li a{border:1px solid #8c8c8c;font-size:16px;padding:10px 0;color:#8c8c8c;text-align:center;display:block;border-radius:0.3rem}
.manage_tab_area li:nth-child(2){margin:0 15px}
.manage_tab_area li.active a{border:1px solid #f85959;color:#f85959}
.manage_tab_area li:hover a{border:1px solid #f85959}

.view_area .view_contents.view_info_manage{background:#fff}
.view_info_manage{border-top:1px solid #e6e6e6;padding-top:25px}
.view_info_manage .view_count_text p{font-size:20px;}
.view_info_manage .view_count_text p span{color:#f85959;}

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
.view_info_manage .manage_list_area li .profile_box .profile_img.lv98:before{background:linear-gradient(to bottom, #ffd848, #ff3600);}
.view_info_manage .manage_list_area li .profile_box .profile_img img{width:100%;height:100%;}
.view_info_manage .manage_list_area li .profile_box .profile_name{width:calc(100% - 45px);float:left;margin-left:10px;font-size:15px;padding-top:10px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;height:28px;}
.view_info_manage .manage_list_area li .manage_title_img{overflow:hidden;width:100%;padding-bottom:56.26%;height:0;position:relative;}
.view_info_manage .manage_list_area li .manage_title_img img{position:absolute;top:50%;left:0;width:100%;height:auto;transform:translate(0, -50%);}
.view_info_manage .manage_list_area li .manage_title_img .live_tag{width:83px;height:28px;line-height:26px;background:#f85959;border-radius:0.3rem;font-size:15px;font-weight:300;text-align:center;position:absolute;top:10px;left:10px;z-index:1;color:#fff;letter-spacing:-0.6px}
.view_info_manage .manage_list_area li .manage_txt_box{padding:15px;height:140px;position:relative;}
.view_info_manage .manage_list_area li .manage_kind_tag span{border:1px solid #dadada;border-radius:0.3rem;color:#2663e2;font-size:15px;padding:0 8px;height:28px;line-height:26px;display:inline-block}
.view_info_manage .manage_list_area li .manage_title_txt{margin:5px 0 10px;font-size:17px;font-weight:500;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient: vertical;height:42px;line-height:1.2}
.view_info_manage .manage_list_area li .manage_date{font-size:14px;color:#8c8c8c;position:absolute;bottom:15px}


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
.view_info_manage_detail .detail_profile .prf_box.lv98:before{background:linear-gradient(to bottom, #ffd848, #ff3600);}

.view_info_manage_detail .detail_profile p{font-size: 20px; font-weight: bold; float:left;padding-top:5px;width:calc(100% - 170px)}
.view_info_manage_detail .detail_profile p.wide{width:calc(100% - 45px);}
.view_info_manage_detail .detail_profile p.wide.jgo{width:calc(100% - 130px);}
.view_info_manage_detail .detail_profile a{border:1px solid #c0c0c0;width:56px;height:25px;line-height:23px;text-align:center;display:block;float:right;border-radius:3rem;font-size:13px;color:#aaaaaa;letter-spacing:-0.5px;margin-top:5px;font-weight:normal;}
.view_info_manage_detail .detail_profile a.btn_talk_edit{position:absolute;right:60px;}
.view_info_manage_detail .detail_profile a.btn_talk_del{position:absolute;right:0}
.view_info_manage_detail .detail_profile a.btn_talk_scrap{width:80px;}
.view_info_manage_detail .detail_title{background:#fff;border-bottom:1px solid #e6e6e6;}
.view_info_manage_detail .detail_title .inner{padding:7px 0;}
.view_info_manage_detail .detail_title .detail_pic{font-size:0;margin-bottom:10px;}
.view_info_manage_detail .detail_title .detail_pic span{margin-right:10px;font-size:15px;padding:0 8px;height:28px;line-height:26px;text-align:center;display:inline-block;border-radius:0.3rem}
.view_info_manage_detail .detail_title .detail_pic span:first-child{margin-left:0}
.view_info_manage_detail .detail_title .detail_pic span.live_tag{color:#fff;background:#f85959;position:relative;top:-1px}
.view_info_manage_detail .detail_title .detail_pic span.fishlist_tag{color:#f85959;border:1px solid #f85959;}
.view_info_manage_detail .detail_title .detail_title_date{display:table;width:100%}
.view_info_manage_detail .detail_title .detail_title_date dt{font-size:13px;display:table-cell;line-height:1.3;color:#333;font-weight:500;letter-spacing:-0.9px}
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
.view_info_manage_detail .manage_info_line span.map_link a{width:55px;height:21px;line-height:19px;color:#fff;background:#f85959;border-radius:0.3rem;font-size:13px;letter-spacing:-0.7px;text-align:center;display:block;position:absolute;top:10px;right:10px;}
.view_info_manage_detail .manage_info_line span.map_link a.map_btn{background:#fff;width:55px;height:21px;line-height:19px;color:#f85959;border:1px solid #f85959;border-radius:0.3rem;font-size:13px;letter-spacing:-0.7px;text-align:center;display:block;position:absolute;top:10px;right:10px;}
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
.view_info_manage_detail .manage_like_share a.call_btn{background:#f85959;border-radius:0.3rem;height:25px;line-height:23px;padding:0 6px;font-size:16px;color:#ffffff;letter-spacing:-0.6px;}
.view_info_manage_detail .manage_like_share a.sell_btn{font-size:0;width:64px;height:24px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold01_on.png') no-repeat;background-size:100% auto;padding:0;position:relative;top:-4px;}
.view_info_manage_detail .manage_like_share a.sell_btn.sold{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold01_off.png') no-repeat;background-size:100% auto;}
.view_info_manage_detail .manage_like_share a.buy_btn{font-size:0;width:64px;height:24px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold02_on.png') no-repeat;background-size:100% auto;padding:0;position:relative;top:-4px;}
.view_info_manage_detail .manage_like_share a.buy_btn.sold{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/talk_sold02_off.png') no-repeat;background-size:100% auto;}
.view_info_manage_detail .manage_like{border-bottom:1px solid #e6e6e6;padding:25px 0}
.view_info_manage_detail .manage_like .manage_like_box{width:calc(100% - 75px);float:left;height:40px;overflow:hidden}
.view_info_manage_detail .manage_like .manage_like_box.show{height:auto}
.view_info_manage_detail .manage_like .manage_like_box a{cursor:default;width:40px;height:40px;border:1px solid #e6e6e6;background:#f5f0ea;border-radius:100%;display:block;position:relative;margin-right:20px;float:left;}
.view_info_manage_detail .manage_like .manage_like_box a img{border-radius:100%;width:100%;height:100%;overflow:hidden;}
.view_info_manage_detail .manage_like .manage_like_box a:after{width:25px;height:25px;background:#f85959 url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_like02.png') center top 50% no-repeat;background-size:21px auto;position:absolute;bottom:0;right:-10px;content:'';border-radius:100%;overflow:hidden;}
.view_info_manage_detail .manage_like a.like_more{font-size:14px;color:#f85959;height:24px;line-height:22px;padding:0 10px;border:1px solid #f85959;border-radius:3rem;display:block;float:right;margin-top:8px}
/* .view_info_manage_detail .manage_like a.like_more:after{display:none}
.view_info_manage_detail .manage_like a.like_more.show{font-size:0}
.view_info_manage_detail .manage_like .like_more.show:after{display:block;width:100%;position:absolute;top:0;left:0;font-size:14px;text-align:center;color:#fff} */

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
.view_info_manage_detail .view_profile .profile_info .call_dd a{position:absolute;bottom:30px;right:20px;width:70px;height:70px;background:#f85959 url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/profile_call.png') top 17px center no-repeat;background-size:30px auto;border:1px solid #d5d5d5;border-radius:100%}
.view_info_manage_detail .view_profile .profile_info .like_link{display:none;position:absolute;bottom:30px;right:20px;width:70px;height:70px;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/like_off_01.png') top 20px center no-repeat;background-size:30px 28px;border:1px solid #d5d5d5;border-radius:100%}
.view_info_manage_detail .view_profile .profile_info .like_link.active{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/like_on_01.png') top 20px center no-repeat;background-size:30px 28px;border:1px solid #f85959;}
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
.view_detail .view_info_comment .comment_text_area .comment_upload_box .comm_btn{width:77px;height:40px;line-height:38px;border-radius:0.3rem;background:#f85959;color:#fff;font-size:16px;text-align:center;letter-spacing:-0.6px;float:right;display:block;}
.view_detail .view_info_comment .comment_box .comment_name{font-size:16px;position:relative}
.view_detail .view_info_comment .comment_box .comment_name span{height:24px;line-height:22px;border-radius:0.3rem;background:#f85959;padding:0 8px;font-size:14px;color:#ffffff;letter-spacing:-0.6px;display:inline-block;margin-right:5px}
.view_detail .view_info_comment .comment_box .comment_name a{width:4px;position:absolute;top:0;right:0}
.view_detail .view_info_comment .comment_list_more{padding:30px 0 0;}
.view_detail .view_info_comment .comment_list_more a{width:200px;height:44px;line-height:42px;border:1px solid #f85959;display:block;margin:0 auto;font-size:16px;color:#f85959;text-align:center;letter-spacing:-0.6px;border-radius:0.3rem;}
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
.view_detail .view_info_comment .recomment_text_area .comment_upload_box .comm_btn{width:77px;height:40px;line-height:38px;border-radius:0.3rem;background:#f85959;color:#fff;font-size:16px;text-align:center;letter-spacing:-0.6px;float:right;display:block;}
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
.view_detail .view_company_profile .profile_name:hover{color:#f85959}
.view_detail .view_company_profile .profile_name i.ico_review{width:37px;height:37px;display:inline-block;background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_bg.png') no-repeat;background-size:100% auto;vertical-align:middle;position:relative;top:-3px;}
.view_detail .view_company_profile .profile_name i.ico_review.on1{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_01.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on2{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_02.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on3{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_03.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on4{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_04.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_name i.ico_review.on5{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_review_05.png') no-repeat;background-size:100% auto;}
.view_detail .view_company_profile .profile_address{font-size:15px;color:#606060;letter-spacing:-0.6px;text-align:center;margin-top:5px;}
.view_detail .view_company_profile .profile_btn{text-align:center;font-size:0;margin-top:15px;}
.view_detail .view_company_profile .profile_btn a{display:inline-block;width:93px;height:32px;line-height:30px;text-align:center;background:#fff;border:1px solid #e6e6e6;border-radius:3rem;font-size:15px;color:#606060;letter-spacing:-0.6px;}
.view_detail .view_company_profile .profile_btn a.like_btn.on{border:1px solid #f85959;color:#f85959}
.view_detail .view_company_profile .profile_btn a.call_btn{margin-left:5px;border:1px solid #f85959;color:#f85959}

.view_info_manage_detail .view_detail_list_area{margin-top:20px}
.view_info_manage_detail .view_detail_list_area .detail_list_title strong{font-size:18px;font-weight:normal;float:left;letter-spacing:-0.7px}
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper_btn_box{float:left;font-size:0;}
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-button-prev,
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-container-rtl .swiper-button-next{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ad_slide_prev_01.png') no-repeat;width:28px;height:28px;background-size:100% auto;margin:0 3px 0 10px}
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-button-next,
.view_info_manage_detail .view_detail_list_area .detail_list_title .swiper-container-rtl .swiper-button-prev{background:url('https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ad_slide_next_01.png') no-repeat;width:28px;height:28px;background-size:100% auto}
.view_info_manage_detail .view_detail_list_area .detail_list_title a{float:right;font-size:15px;color:#f85959;text-align:right;position:relative;top:7px;}
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
.view_info_manage_detail .talk_detail_list_area .detail_list_title a{float:right;font-size:15px;color:#f85959;text-align:right;position:relative;top:7px;}
.view_info_manage_detail .talk_detail_list_area .detail_list_title + .clearfix{font-size:0}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide{width:468px;overflow:hidden;background:#fff;border:1px solid rgba(218, 218, 218, 0.5);border-radius:0.3rem;display:block;display:inline-block;position:relative;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .img_box{width:182px;height:155px;position:relative;float:left;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .img_box img{width:100%;height:100%;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .txt_box{float:left;width:calc(100% - 182px);padding:10px;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .kind_txt span{display:inline-block;font-size:13px;color:#2663e2;letter-spacing:-0.5px;padding:0 5px;height:25px;line-height:23px;border:1px solid #dadada;border-radius:0.3rem;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide dt{margin-top:10px;font-size:15px;color:#333;font-weight:500;letter-spacing:-0.6px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide dd{margin-top:5px;font-size:14px;color:#606060;letter-spacing:-0.6px;line-height:1.3;height:37px;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient: vertical;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic{position:absolute;bottom:10px;width:calc(100% - 202px);}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic i{font-size:13px;color:#f85959;letter-spacing:-0.5px;float:left}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic i:before{width:5px;height:5px;background:#f85959;border-radius:100%;display:inline-block;content:'';position:relative;top:-2px;margin-right:3px;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide .date_pic span{float:right;font-size:14px;color:#c0c0c0;letter-spacing:-0.6px;opacity:0.5;}
.view_info_manage_detail .talk_detail_list_area.talk_detail_list1{width:468px;}
.view_info_manage_detail .talk_detail_list_area.talk_detail_list2 .talk_detail_slide:first-child{margin-right:15px}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide.talk_detail_default{cursor:default;pointer-events:none;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_slide.talk_detail_default .kind_txt, .view_info_manage_detail .talk_detail_list_area .talk_detail_slide.talk_detail_default dl{opacity:0.5}

.view_info_manage_detail .talk_detail_list_area .talk_detail_list_btn{margin-top:27px;}
.view_info_manage_detail .talk_detail_list_area .talk_detail_list_btn a{background:#fff;width:120px;height:40px;line-height:38px;border-radius:3rem;border:1px solid #e6e6e6;box-shadow:0 0 5px 0 rgba(0, 0, 0, 0.15);text-align:center;font-size:16px;color:#f85959;letter-spacing:-0.5px;display:block;margin:0 auto;}



.manage_tab_area{background:#fff;padding-top:30px;padding-bottom:30px}
.manage_tab_area li{float:left;width:calc(33.333% - 10px);}
.manage_tab_area li a{border:1px solid #8c8c8c;font-size:16px;padding:10px 0;color:#8c8c8c;text-align:center;display:block;border-radius:0.3rem}
.manage_tab_area li:nth-child(2){margin:0 15px}
.manage_tab_area li.active a{border:1px solid #f85959;color:#f85959}
.manage_tab_area li:hover a{border:1px solid #f85959}

.view_area .view_contents.view_info_manage{background:#fff}


</style>
  
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_4.jpg');">
     <div class="overlay" ></div>
		<div class="container" style="margin-top: -40%;">
	
		</div>
    </div>

<div class="view_detail container" style="padding-top: 58.941px;">
	<div class="view_info_manage_detail">
		<div class="detail_profile clearfix">
			<section>
				<p class="wide jgo" style="font-size: 25px;">제목 :&nbsp;${dto.ibtitle}</p>
			</section>
		</div><!--// detail_profile -->

		<div class="detail_title">
			<section>
				<div class="inner">
					<dl class="detail_title_date">
						<dt>작성자 &nbsp; : &nbsp; ${dto.mid}</dt>
						<dd>${dto.ibdate}
						<a class="btn_auth_report" id="openModalBtn1" style="cursor: pointer;"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/siren_ico.png" alt="">신고하기</a>
																															<!--
							<a class="btn_report"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/siren_ico.png" alt="">신고하기</a>
							-->
						</dd><!-- 내가 쓴글이 아닐때 .wide 추가  -->
					</dl>
				</div>
			</section>
		</div>
			<div id="modalItemsReportBox" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style = "font-family: Jua;">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="myModalLabel" style = "margin: auto; font-family: Jua;">신고하기</h4>
</div>
<form action="itemsReportInsert" method="post">
<div class="modal-body">
<p><strong><b>신고 사유</b></strong></p>

<input type="hidden" name="ibnum" value="${dto.ibnum}">

<input type = "radio" id="iradio1" name="report" value="2" checked="checked">
<label for="iradio1">음란성/선정성</label>
<br>

<input type = "radio" id="iradio2"  name="report" value="4">
<label for="iradio2">욕설/반말/부적절한 언어</label>
<br>

<input type = "radio"id="iradio3"  name="report" value="6">
<label for="iradio3">부적절한 홍보 게시글</label>
<br>

<input type = "radio" id="iradio4"  name="report" value="6">
<label for="iradio4">도배성 게시글</label>




<div style = "margin-left: 282px;">
<button type="submit" class="btn btn-primary" style = "font-family: Jua;" >신고하기</button>
<button type="button" class="btn btn-default" id="closeModalBtn2" style = "font-family: Jua;">취소하기</button>
</div>

</div>
</form>
</div>
</div>
</div>
		<!--// detail_title -->
	</div>
	<section>
		<div class="jgo_manage_detail clearfix">
			<div class="jgo_thumbnail">
				<div class="img_box">
																<img src="${pageContext.request.contextPath}/resources/images/${dto.ibimage}"alt="">
									</div>
			</div>
			<div class="jgo_info_con">
									<p class="jgo_pic"><span class="sell">팝니다</span></p>
				
				<dl>
					<dt>${dto.ibname}</dt>
					<dd>
												<fmt:formatNumber value="${dto.ibmoney}" pattern="#,###"/>원
												<a href="http://search.danawa.com/dsearch.php?query=${dto.ibname}&amp;tab=main" target="_blank">시세검색<img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/link_arrow_07.png" alt=""></a>
					</dd>
				</dl>
				<div class="info_box">
										
										
										<p><span>판매자 전화번호</span>${dto.mphone}</p>
									
										
				
			
				</div>
				<div class="info_btn_box">
				
				
										<c:choose>
										<c:when test="${dto.ibstatus==0}">
										<a class="btn01 btn05 btn_auth_phone">판매중</a> <!-- OFF시 클래스 .active 추가 -->
										</c:when>
										<c:otherwise>
										<a class="btn01 btn05 btn_auth_phone">거래완료</a> <!-- OFF시 클래스 .active 추가 -->
										</c:otherwise>
										</c:choose>
																										
							
																						
				</div>
			</div>
		</div>

		<div class="jgo_manage_notice">
			<strong>[거래 전 필독!!]</strong>
			<ol>
				<li>거래 전 연락처 및 계좌번호로 거래자 사기이력을 조회해보세요.</li>
				<li>작성자 전화번호는 본인인증을 받은 물반고기반 회원에게만 노출됩니다.</li>
				<li>작성자가 상품상태를 판매완료 또는 구매완료로 변경 시 전화번호가 노출되지 않습니다.</li>
				<li>물반고기반 중고장터에서 표시되는 가격은 작성자의 자유의지로 정해진 가격입니다.</li>
				<li>참고하고자 하는 가격대가 필요하다면 시세검색을 이용해보세요.</li>
			</ol>
		</div>

		<div class="view_info_manage_detail">
		
			<!--// manage_detail -->

						<!-- 포인트 주변 업체 //-->
						<!--// 포인트 주변 업체 -->

			<!-- 댓글정보 -->
			<div class="view_info_comment view_contents" id="comment_box">
				<section>
					<div class="check_title clearfix">
						<p>댓글 <span id="reply_total_cnt">${fn:length(comment)} 개</span></p>
						<a class="refresh_btn" href="#" onclick="javascript:location.reload()"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_refresh.png" alt=""></a>
						
					</div><!--// check_title -->


					<!-- 댓글입력 -->
					<div class="comment_text_area">
					    <form id="talkCommentForm" name="talkCommentForm" method="post">
					    <input type="hidden" id="ibnum" name="ibnum" value="${dto.ibnum}">
					    <input type="hidden" id="mnickname" name="mnickname" value="${sessionScope.nickname}">
					    <div class="file_textarea">
							<textarea id="iccontent" name="iccontent"class="tcm_comment" placeholder="댓글 내용을 입력해주세요."></textarea>
					        <div class="imgefile_upload">
					            <img class="original" src="#" style="background-color: rgb(247, 247, 247);">
								<div class="upload_close"><img src="https://img.moolban.com/unsafe/asset/www/responsive/img/basic/ico_photo03.png" alt=""></div>
					        </div>
					    </div>

					    <div class="comment_upload_box clearfix">
					        <a id="itemsCommentInsert" class="comm_btn btn_comm" style="cursor: pointer;">등록하기</a>
					    </div>
					    </form>
					</div>
					<!--// 댓글입력 -->

					<!-- 댓글목록 -->
					<div id="comment_list_area">
					<div class="comment_list_area comment_list_best_box">
					
             <!-- For문 사용 -->
			<c:forEach var="e" items="${comment}">
             <div class="comment_list_box tcm_best tcm_box clearfix tcm_box286297" id="tcm_box286297">
                <div class="comment_box">
                    <p class="comment_date">
                        <span>${e.mnickname}</span> <span>${e.icdate}</span>
                    </p>
                    <p class="comment_txt">
                      ${e.iccontent} 
                    </p>
                </div><!-- comment_box -->
            </div>
           </c:forEach>
         
            </div>
            				
<script>
$(document).ready(function(){
	var ibnum = $('#ibnum').val();
	var mnickname =  encodeURIComponent($('#mnickname').val())
	$('#itemsCommentInsert').click(function() {
		if(mnickname!=''){
			if($("textarea[name=iccontent]").val().length==0){
				alert("내용을 입력해 주세요");
				$('textarea[name=iccontent]').focus();
			}else{
				var iccontent = encodeURIComponent($("textarea[name=iccontent]").val())
				var params = {
								ibnum : ibnum,
								mnickname : mnickname,
								iccontent : iccontent
							 };
		 $.ajax({
			type:'POST',
			url:'itemsCommentInsertList',
			data:params,
			datatype :'json',
			success:function(res){
				$('.comment_list_area, .comment_list_best_box').html("");
				var count = 0
				$.each(res, function(key, value){
					count++;
					$('.comment_list_area, .comment_list_best_box').append('<div class="comment_list_box tcm_best tcm_box clearfix tcm_box286297" id="tcm_box286297">'
				              +'<div class="comment_box"><p class="comment_date"><span>'+value.mnickname+'</span> <span>'+value.icdate+'</span>'
				              +'</p><p class="comment_txt">'+value.iccontent+'</p></div></div>');
					console.log(decodeURIComponent(value.bnum));
					console.log(decodeURIComponent(value.mnickname));
					console.log(decodeURIComponent(value.bccontent));
				});
				$('#reply_total_cnt').text(count + ' 개');
				$("textarea[name=iccontent]").val('');
				$("textarea[name=iccontent]").focus();
			},
			error:function(res){
				console.log("실패했나")
			}
			
		}); 
			}
		}else{
			alert("로그인해주세요.")
			$("textarea[name=iccontent]").val('')
		}
		
		
		
	//	commentform.attr('action','boardCommentInsert');
	//	commentform.attr('method', 'POST');
	//	commentform.submit();
	});
	
 
});

</script>
            
					

	






<!--// 스크랩및신고 팝업 -->
</div><!--// comment_list_area -->
					<!--// 댓글목록 -->

				</section>

			</div><!--// view_contents -->
			<!--// 댓글정보 -->
		</div>
		<!--// view_info_manage_detail -->
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
 <script>
  $('#openModalBtn1').on('click', function(){
	  console.log('모달이다.')
	  $('#modalItemsReportBox').modal('show');
	  });
	  // 모달 안의 취소 버튼에 이벤트를 건다.
	  $('#closeModalBtn2').on('click', function(){
	  $('#modalItemsReportBox').modal('hide');
	  });

</script> 
    
  </body>
</html>