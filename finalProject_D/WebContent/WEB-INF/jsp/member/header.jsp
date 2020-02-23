<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- Header Start -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>GOGI_JAVA</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Squada+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/magnific-popup.css">
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/boot/css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Gugi&display=swap&subset=korean" rel="stylesheet"> <!-- 로고폰트  Gugi -->
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet"> <!-- 헤더폰트  Jua -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"> <!--  추가 폰트  Noto Sans KR -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet"><!--  추가 폰트  Do Hyeon -->
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"> <!-- 추가 폰트 Poppins -->

    <style>
    .nav-link{font-family: Jua;}
    .form-controla{
    -webkit-box-shadow: none;
    box-shadow: none;
    border: transparent;
    background: #fff;
    color: #4d4d4d;
    border: 1px solid #e6e6e6;
    font-size: 14px;
    width: 300px;
    height: 35px;
    padding: 10px 20px;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    -ms-border-radius: 0;
    border-radius: 0; 
    }
    .d-block{height: 200px}
    
    .submenumore{
     position: absolute;
     top: 100%;
    width: 150px;
    z-index: 2;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.02);
    opacity: 0;
    visibility: hidden;
    text-align: left;
    -webkit-transition: 0.6s;
    -moz-transition: 0.6s;
    -o-transition: 0.6s;
    transition: 0.6s;
    margin: 0px; padding: 0px;
    font-size: 16px; 
    background-color: white;
}
 li:hover .submenumore{
    opacity: 1;
    visibility: visible;
    top: 80%;
}  
    
   .hero-wrap{
   margin-top: -300px;
   } 
   
 .submenumore li{
	margin:5%;
	padding:0px;
   color: black;
   }
    .submenumore hr{
	margin:0px;
	padding:0px;
   color: black;
   }
   
   .submenumore > li > a{
   color: black;
   }
   
   .submenumore > li > a:hover{
   color: #f85959;
   }
 .shadow {
	box-shadow: 2px 2px 5px #999;
}
#autosearchlist {
	cursor: pointer;
	float: left;
	width: 292.67px;
	height: auto;
}
.autosearchlist:hover {
	color: red;
}
.autosearchlist {
	color : black;
	cursor: pointer;
	margin-left: 7px;
	
}
    </style>
<script
	src="https://ajax.googleapis.com/ajax/libs
	/jquery/3.4.1/jquery.js"></script>
<!--  <script src="//code.jquery.com/jquery.min.js"></script>-->
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index" style="font-family: Gugi; font-size: 30px;"><img alt="" src="${pageContext.request.contextPath}/resources/images/icon/logo.png" width="40px;"> 고기자바.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
      <input id="hname" type="text" class="form-controla" placeholder="검색어를 입력해주세요" style="margin-left: 2%; width: 30%" value="" name="hname">
      <input id="mainsearchlist" type="button" class="search-submit btn btn-primary" value="Search">

      
      <ul class="navbar-nav ml-auto" >
          <li class="nav-item"><a href="itemslist?type=1" class="nav-link">바다</a></li>
          <li class="nav-item"><a href="itemslist?type=2" class="nav-link">민물</a></li>
          <li class="nav-item"><a href="game" class="nav-link">게임</a></li>
          <li class="nav-item" id = "openModalBtn2"><a href="#" class="nav-link">랜덤매칭</a></li>
          <li class="nav-item"><a href="game" class="nav-link">서비스</a></li>
          <li class="nav-item"><a href="#" class="nav-link"><span class="submenumorem">더보기</span><i class="ti-angle-down"></i></a>
              <ul class="submenumore scrolled awake">
          	  	<li class="nav-link"><a href="notice">공지사항</a></li>
          	  	<hr>
                <li class="nav-link"><a href="event">이벤트</a></li>
                <hr>
                <li class="nav-link"><a href="talklist?check=1">커뮤니티</a></li>
                <hr>
                <li class="nav-link"><a href="cs_faq">고객센터</a></li>
                <hr>
                <li class="nav-link" ><a href="uselow">이용약관</a></li>
              </ul>
           </li>
          <li class="nav-item cta">
         			 <c:choose>
						<c:when test="${sessionScope.mid==null }">
							<a href="login" class="nav-link"><span>로그인</span></a>
						</c:when>
						<c:otherwise>
							<a href="logout" class="nav-link"><span >로그아웃</span></a>
						</c:otherwise>
					</c:choose>
          
             <ul class="submenumore">
                <li class="nav-link" ><a href="my_passwordcheck">나의정보</a></li>
                <hr>
          	  	<li class="nav-link" ><a href="my_reservation">예약내역</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_matching">랜덤매칭내역</a></li>
          	  	<hr>
          	  	<li class="nav-link" ><a href="my_point">포인트</a></li>
          	  	<hr>
                <li class="nav-link"><a href="my_board" id="my_board">내글쓰기</a></li>
              </ul>
          
          
          </li>
        </ul>
      </div>
      
    </div>


  </nav>
     <div>
       	<div style="background-color: white; border-radius: 4px; display: none; margin-top: 20%; margin-left: 28.9%;" id="autosearchlist" class="divBox shadow">
      		<p class="autosearchlist"><a href="mainsearchlist"></a></p>
      	</div> 
	</div>
	<!-- 모달 기능 UI -->
	<style>
input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}

input[type="radio"]:focus + label:before,
input[type="radio"]:hover + label:before {
    border-color: black;
}

input[type="radio"]:active + label:before {
    -webkit-transition-duration: 0;
    transition-duration: 0;
    -webkit-filter: brightness(0.2);
    filter: brightness(0.2);
}

input[type="radio"] + label {
    position: relative;
    padding: 10px;
    padding-left: 2em;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

input[type="radio"] + label:before {
    box-sizing: content-box;
    content: '';
    color: #900;
    position: absolute;
    top: 50%;
    left: 0;
    width: 14px;
    height: 14px;
    margin-top: -9px;
    border: 2px solid grey;
    text-align: center;
}

input[type="radio"] + label:after {
    box-sizing: content-box;
    content: '';
    background-color: #F85959;
    position: absolute;
    top: 50%;
    left: 4px;
    width: 10px;
    height: 10px;
    margin-top: -5px;
    -webkit-transform: scale(0);
    transform: scale(0);
    -webkit-transform-origin: 50%;
    transform-origin: 50%;
    -webkit-transition: -webkit-transform 200ms ease-out;
    transition: -webkit-transform 200ms ease-out;
    transition: transform 200ms ease-out;
    transition: transform 200ms ease-out, -webkit-transform 200ms ease-out;
}


input[type="radio"]:checked + label:before {
    -webkit-animation: borderscale 300ms ease-in;
    animation: borderscale 300ms ease-in;
    background-color: white;
}

input[type="radio"]:checked + label:after {
    -webkit-transform: scale(1);
    transform: scale(1);
}

input[type="radio"] + label:before,
input[type="radio"] + label:after {
    border-radius: 50%;
}

@-webkit-keyframes borderscale {
    50% {
        box-shadow: 0 0 0 2px #900;
    }
}

@keyframes borderscale {
    50% {
        box-shadow: 0 0 0 2px #900;
    }
}

.error-msg {
    display: block;
    color: red;
    max-height: 0;
    overflow: hidden;
    -webkit-transition: max-height 500ms ease-out;
    transition: max-height 500ms ease-out;
    will-change: max-height;
}

:required:not(:focus) ~ .error-msg,
:invalid:required ~ .error-msg {
    max-height: 9em;
}

input:focus {
    border: 1px solid black;
}

input:not(:focus):invalid {
    border: 1px solid red;
    outline: none;
}

input:not(:focus):valid {
    border: 1px solid green;
}


form ul {
    list-style: none;
}

label {
    cursor: pointer;
    display: inline-block;
}
</style>
<div id="modalBox2" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style = "font-family: Jua;">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="myModalLabel" style = "margin: auto; font-family: Jua;">랜덤 매칭</h4>
</div>
<form action="randommatching" method="post">
<div class="modal-body">
<p><strong><b>인원수</b></strong></p>
<input type = "radio" id = "radio1" name = "rmcount" value="2" checked="checked">
<label for="radio1">2</label>
<input type = "radio" id = "radio2" name = "rmcount" value="4">
<label for="radio2">4</label>
<input type = "radio" id = "radio3" name = "rmcount" value="6">
<label for="radio3">6</label>
<hr>
<p><strong><b>지역</b></strong></p>
<input type="radio" id = "radio4" name = "rmlocation" value="seoul" checked="checked">
<label for="radio4">서울</label>
<input type="radio" id = "radio5" name = "rmlocation"  value="Gyeonggi">
<label for="radio5">경기</label>
<input type="radio" id = "radio6" name = "rmlocation"  value="Incheon">
<label for="radio6">인천</label>
<input type="radio" id = "radio7" name = "rmlocation"  value="Gangwon">
<label for="radio7">강원</label>
<input type="radio" id = "radio8" name = "rmlocation"  value="Chungbuk">
<label for="radio8">충북</label>
<input type="radio" id = "radio9" name = "rmlocation"  value="Chungnam">
<label for="radio9">충남</label>
<input type="radio" id = "radio10" name = "rmlocation"  value="Gyeongbuk">
<label for="radio10">경북</label>
<input type="radio" id = "radio11" name = "rmlocation"  value="Gyeongnam">
<label for="radio11">경남</label>
<input type="radio" id = "radio12"name = "rmlocation"  value=" Jeolbuk">
<label for="radio12">전북</label>
<input type="radio" id = "radio13" name = "rmlocation"  value="Jeolnam">
<label for="radio13">전남</label>
<input type="radio" id = "radio14"name = "rmlocation"  value="jeju">
<label for="radio14">제주</label>
<hr>
<p><strong><b>유형</b></strong></p>
<input type="radio" id = "radio15" name = "rmtype" value="sea" checked="checked">
<label for="radio15">바다</label>
<input type="radio" id = "radio16" name = "rmtype"  value="freshwater">
<label for="radio16">민물</label>
<input type="radio" id = "radio17" name = "rmtype"  value="fishingcafe">
<label for="radio17">낚시카페</label>
<hr>
<p><strong><b>나이</b></strong></p>
<input type="radio" id = "radio18" name = "rmage" value="20" checked="checked">
<label for="radio18">20</label>
<input type="radio" id = "radio19" name = "rmage"  value="30">
<label for="radio19">30</label>
<input type="radio" id = "radio20" name = "rmage"  value="40">
<label for="radio20">40</label>
<input type="radio" id = "radio21" name = "rmage"  value="50">
<label for="radio21">50</label>
<input type="radio" id = "radio22" name = "rmage"  value="60">
<label for="radio22">60이상</label>
<hr>
<p><strong><b>시간대</b></strong></p>
<input type="radio" id = "radio23" name = "rmtime" value="am" checked="checked">
<label for="radio23">오전</label>
<input type="radio" id = "radio24" name = "rmtime"  value="pm">
<label for="radio24">오후</label>
<input type="radio" id = "radio25" name = "rmtime"  value="night">
<label for="radio25">야간</label>
<hr>
<p><strong><b>성별</b></strong></p>
<input type="radio" id = "radio26" name = "rmsex" value="man" checked="checked">
<label for="radio26">남자</label>
<input type="radio" id = "radio27" name = "rmsex"  value="woman">
<label for="radio27">여자</label>
<hr>
<div style = "margin-left: 282px;">
<button type="submit" class="btn btn-primary" style = "font-family: Jua;" >매칭하기</button>
<button type="button" class="btn btn-default" id="closeModalBtn1" style = "font-family: Jua;">매칭취소</button>
</div>
</div>
</div>
</form>
</div>
</div>
       <script>
       // 랜덤 매칭 모달을 노출시키기 위한 기능
       $('#openModalBtn2').on('click', function(){
    	   $('#modalBox2').modal('show');
    	   });
    	   // 모달 안의 취소 버튼에 이벤트를 건다.
    	   $('#closeModalBtn2').on('click', function(){
    	   $('#modalBox2').modal('hide');
    	   });
       
     //메인검색창에서 검색 후 이동
  	$(function() {
  		var hname = 0;
		$("#mainsearchlist").click(function() {
			hname = $("#hname").val();
			location.href = 'mainsearchlist?hname='+encodeURI($('#hname').val(),"UTF-8");
		});
		


		//검색어 자동완성 및 자동완성된 검색어 클릭 시 이동
		$('#hname').on("propertychange change keyup paste input",function(){
			searchhname = $(this).val();
			console.log($(this).val());
			if($(this).val() === ""){
				$('#autosearchlist').hide();
			}else{
				$('#autosearchlist').show();
				$('#autosearchlist').empty();
				$.ajax({
					url:"autosearchlist?hname="+encodeURI($('#hname').val(),"UTF-8"),
					dataType : 'json',
					cache:false,
					success:function(data){
						var auto = "";
						for(var i in data){
							if(i < 5){
							$('#autosearchlist').append('<p class="autosearchlist"><a href="mainsearchlist?hname='+encodeURI(data[i].hname,"UTF-8")+'"'+'>'+data[i].hname+"</a></p>");
						}
					}
				}
			});

			}
		});
		});
  </script>
    <!-- Header End -->